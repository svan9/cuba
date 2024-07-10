#ifndef NAN_H
#define NAN_H

#ifdef __cplusplus
extern "C" {
#endif

#ifndef WIN32
#define __stdcall
#endif

#include <stddef.h>
#include <stdbool.h>
#include <stdio.h>
#ifdef _WIN32
  #include <io.h>
#elif __linux__
  #include <inttypes.h>
  #include <unistd.h>
  #define __int64 int64_t
  #define _close close
  #define _read read
  #define _lseek64 lseek64
  #define _O_RDONLY O_RDONLY
  #define _open open
  #define _lseeki64 lseek64
  #define _lseek lseek
  #define stricmp strcasecmp
#endif

#include <stdlib.h>
#include <stdint.h>
#include <stdarg.h>

#define GETCODELINE() __LINE__
#define GETCODEFILE() __FILE__
#define GETCODEFUNC() __func__
#define stringify(a) #a
#define callpoint() printf("called from: %s() at %s:%i \n", GETCODEFUNC(), GETCODEFILE(), GETCODELINE());
#define callpointf(func) printf("called from: %s() at %s:%i \n", func, GETCODEFILE(), GETCODELINE());
#define ppp callpoint()
#define pppp {callpointf(GETCODEFUNC())}
#define pppf {callpointf(func)}

#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#undef _MAX_PATH
#ifndef _CRTIMP
#define _CRTIMP
#endif
#ifndef __MINGW_NOTHROW
#define __MINGW_NOTHROW
#endif
#ifndef __cdecl
#define __cdecl
#endif
#ifdef _WIN32
_CRTIMP __cdecl __MINGW_NOTHROW  char *_fullpath (char*, const char*, size_t);
#endif
#define _MAX_PATH (260)

typedef unsigned char ubyte;
typedef void* NanObjectLink;
// static ubyte ffbyte = 255U;

#ifndef ltrim
char *ltrim(char *s) {
  while(isspace(*s)) s++;
  return s;
}

char *rtrim(char *s) {
  char* back = s + strlen(s);
  while(isspace(*--back));
  *(back+1) = '\0';
  return s;
}
char *trim(char *s) {
  return rtrim(ltrim(s));
}
#endif

#define HexCharToInt(c) ((c >= 'A') ? (c >= 'a') ? (c - 'a' + 10) : (c - 'A' + 10) : (c - '0'))

uint8_t hexton2(char* str) {
  return (HexCharToInt(str[0]) << 4) + HexCharToInt(str[1]);
}

bool isCharInString(char* content, char c) {
  if (c == -1) return false;
  for (int i = 0; i < strlen(content); i++) {
    if (content[i] == c) {
      return true;
    }
  }
  return false;
}
wchar_t* CharsToWChars(char* c) {
	size_t size = strlen(c)+1;
	wchar_t* wc = malloc(sizeof(wchar_t)*size);
	mbstowcs(wc, c, size);
	return wc;
}

char* string_format(char *fmt, ...) {
  size_t size = strlen(fmt);
  va_list list;
  va_start(list, fmt);
  for (
    char* next = va_arg(list, char*);
    next != NULL;
    next = va_arg(list, char*)
  ) {
    size += strlen(next);
  }
  char* buffer = malloc(size);
  vsnprintf(buffer, size, fmt, list);
  va_end(list);
  return buffer;
}


#define NAN_WARN_CODE(message) WENAN_WARN_CODE(GETCODELINE(), GETCODEFILE(), __func__ , message)
#define NAN_PANIC_CODE(message) WEENAN_PANIC_CODE(GETCODELINE(), GETCODEFILE(), __func__ , "error", message)
#define NAN_PANIC_CODE_REL(message) WEENAN_PANIC_CODE_REL(GETCODELINE(), GETCODEFILE(), __func__ , "error", message)
#define ENAN_PANIC_CODE_REL(kind, message) WEENAN_PANIC_CODE_REL(GETCODELINE(), GETCODEFILE(), __func__ , kind, message)
#define ENAN_PANIC_CODE(kind, message) WEENAN_PANIC_CODE(GETCODELINE(), GETCODEFILE(), __func__ , kind, message)
#define NAN_PANIC_CODE_FUNC(message, func) WENAN_PANIC_CODE(GETCODELINE(), GETCODEFILE(), func , message)
#define SNAN_PANIC_CODE(message) AENAN_PANIC_CODE(GETCODELINE(), GETCODEFILE(), __func__ , message)
#define NAN_PANIC_CODEF(...) \
  WENAN_PANIC_CODE(GETCODELINE(), GETCODEFILE(), __func__ , string_format(__VA_ARGS__))


char* READ_LINE_FROM_FILE(int line, const char* file) {
  const int MAX_LINE_LENGTH = 1000;
  FILE * fp;
  fp = fopen(file, "r");
  char* chunk = malloc(MAX_LINE_LENGTH);
  size_t nut = 0;
  while(fgets(chunk, MAX_LINE_LENGTH, fp) != NULL) {
    if ((nut++) >= (line-1)) { break; }
  }
  fclose(fp);
  return chunk;
}

void WNAN_PANIC_CODE(int line, const char* path, const char* message) {
  char* _line;
  _line = trim(READ_LINE_FROM_FILE(line, path));
  fprintf(stderr, "error at %s:%i (%s)", path, line, message);
  fprintf(stderr, "\n\t%s", _line);
  fprintf(stderr, "\n\t^");
  exit(1);
}

void WENAN_PANIC_CODE(int line, const char* path, const char* func, const char* message) {
  char* _line;
  _line = trim(READ_LINE_FROM_FILE(line, path));

  fprintf(stderr, "error in function `%s()` at %s:%i (%s)", func, path, line, message);
  fprintf(stderr, "\n\t%s", _line);
  fprintf(stderr, "\n\t^\n");
  exit(1);
}

void WEENAN_PANIC_CODE_REL(int line, const char* path, const char* func, const char* error_kind, const char* message) {
  // char* _line;
  // _line = trim(READ_LINE_FROM_FILE(line, path));

  // fprintf(stderr, "%s in function `%s()` at %s:%i (%s)", error_kind, func, path, line, message);
  // fprintf(stderr, "\n\t%s", _line);
  // fprintf(stderr, "\n\t^\n");
  fprintf(stderr, "%s: %s", error_kind, message);
  exit(1);
}
void WEENAN_PANIC_CODE(int line, const char* path, const char* func, const char* error_kind, const char* message) {
  char* _line;
  _line = trim(READ_LINE_FROM_FILE(line, path));

  fprintf(stderr, "%s in function `%s()` at %s:%i (%s)", error_kind, func, path, line, message);
  fprintf(stderr, "\n\t%s", _line);
  fprintf(stderr, "\n\t^\n");
  exit(1);
}

void WENAN_WARN_CODE(int line, const char* path, const char* func, const char* message) {
  char* _line;
  _line = trim(READ_LINE_FROM_FILE(line, path));

  fprintf(stderr, "warn in function `%s()` at %s:%i (%s)", func, path, line, message);
  fprintf(stderr, "\n\t%s", _line);
  fprintf(stderr, "\n\t^");
}

void AENAN_PANIC_CODE(int line, const char* path, const char* func, const char* message) {
  fprintf(stderr, "error in function `%s()` at %s:%i (%s)\n", func, path, line, message);
  exit(1);
}

typedef void* NanLink_t;

#define NanKittySize 8
#define NanKittyDataType ubyte

typedef struct {
  struct NanKitty* next;
  size_t size;
  size_t capacity;
  NanKittyDataType data[];
} NanKitty;

typedef struct {
  NanKitty* begin, end;
} NanCat;

NanKitty* NanKittyCreate() {
  size_t size = sizeof(NanKitty)+NanKittySize*sizeof(NanKittyDataType);
  NanKitty* kitty = malloc(size);
  kitty->capacity = NanKittySize;
  kitty->next = NULL;
  kitty->size = 0;
  return kitty;
}

// NanLink_t NanCatAllocate(NanCat* self, size_t size) {

// }


typedef struct {
  const size_t alignment;
  const size_t T_size;
  size_t capacity;
  size_t size;
  void* begin;
} NanDynamicArray;

void NanDynamicArrayRealloc(NanDynamicArray* self, size_t newSize) {
  size_t _aligned_size = newSize + self->alignment - (newSize % self->alignment);
  self->begin = realloc(self->begin, _aligned_size);
  self->capacity = _aligned_size;
  if (self->begin == NULL) { SNAN_PANIC_CODE("can't allocate"); }

}

#define NanDynamicArrayAlignment 5

NanDynamicArray NanDynamicArrayCreate(size_t element_size) {
  NanDynamicArray self = {
    .alignment = NanDynamicArrayAlignment,
    .T_size = element_size,
    .capacity = NanDynamicArrayAlignment,
    .size = 0,
    .begin = NULL
  };
  self.begin = malloc(NanDynamicArrayAlignment*element_size);
  memset(self.begin, 0, NanDynamicArrayAlignment*element_size);
  if (self.begin == NULL) { SNAN_PANIC_CODE("can't allocate"); }
  return self;
}


size_t NanDynamicArrayPush(NanDynamicArray* self, void* element) {
  size_t _new_size = self->size + 1;
  if (_new_size > self->capacity) {
    NanDynamicArrayRealloc(self, _new_size);
  }
  void* slice = self->begin+(self->size*self->T_size);
  memcpy(slice, element, self->T_size);
  self->size++;
  return _new_size;
}


void NanDynamicArrayTest() {
  NanDynamicArray arr = NanDynamicArrayCreate(sizeof(char));
  char* string = "ABCDEFG-1234";
  NanDynamicArrayPush(&arr, string+0);
  NanDynamicArrayPush(&arr, string+1);
  NanDynamicArrayPush(&arr, string+2);
  NanDynamicArrayPush(&arr, string+3);
  NanDynamicArrayPush(&arr, string+4);
  NanDynamicArrayPush(&arr, string+5);
  NanDynamicArrayPush(&arr, string+6);
}

void NanDynamicArrayDelete(NanDynamicArray* self, size_t index) {
  if (index > self->size) { NAN_PANIC_CODE("index out of size"); }
  memcpy(self->begin+index, self->begin+index+self->T_size, self->size-(index+1));
  self->size--;
}

void* NanDynamicArrayEnd(NanDynamicArray* self) {
  return self->begin+((self->size-1)*self->T_size);
}

void* NanDynamicArrayAt(NanDynamicArray* self, size_t index) {
  if (index > self->size || index < 0) {
    NAN_PANIC_CODE("index out of bounds");
  }
  return self->begin+(index*self->T_size);
}
void* NanDynamicArrayAt_s(NanDynamicArray* self, size_t index) {
  if (index >= self->size || index < 0) {
    return NULL;
  }
  return self->begin+(index*self->T_size);
}
void* NanDynamicArrayLast(NanDynamicArray* self) {
  return self->begin+(self->T_size*(self->size-1));
}

bool NanDynamicArrayHasCMP(NanDynamicArray* self, void* element, size_t size) {
  for (int i = 0; i < self->size; i++) {
    void* __element = NanDynamicArrayAt_s(self, i);
    if (__element == element || memcmp(__element, element, size) == 0) { return true; }
  }
  return false;
}

void* NanDynamicArrayFindCMP(NanDynamicArray* self, void* element, size_t size) {
  for (int i = 0; i < self->size; i++) {
    void* __element = NanDynamicArrayAt_s(self, i);
    if (__element == element || memcmp(__element, element, size) == 0) { return __element; }
  }
  return NULL;
}
size_t NanDynamicArrayFindIndex(NanDynamicArray* self, void* element, size_t size) {
  for (int i = 0; i < self->size; i++) {
    void* __element = NanDynamicArrayAt_s(self, i);
    if (memcmp(__element, element, size) == 0) { return i; }
  }
  return -1;
}

bool NanDynamicArrayHas(NanDynamicArray* self, void* element) {
  for (int i = 0; i < self->size; i++) {
    void* __element = NanDynamicArrayAt_s(self, i);
    if (memcmp(__element, element, self->T_size) == 0) { return true; }
  }
  return false;
}

typedef struct {
  size_t size;
  char* content;
} NanString;

NanString NanStringCopy(NanString* root) {
  NanString self = {
    .content = NULL,
    .size = root->size
  };
  self.content = malloc(self.size);
  memcpy(self.content, root->content, root->size);
  return self;
}

bool NanStringMatch(NanString* left, NanString* right) {
  if (left->size != right->size) {return false;}
  for (int i = 0; i < left->size; i++) {
    if (left->content[i] != right->content[i]) { return false; }
  }
  return true;
}
bool NanStringMatchStr(NanString* left, char* right) {
  size_t right_size = strlen(right);
  if (left->size != right_size) {return false;}
  for (int i = 0; i < left->size; i++) {
    if (left->content[i] != right[i]) { return false; }
  }
  return true;
}

static NanString NanStringNull = {.size = 0, .content = NULL};

static bool NanStringIsNull(NanString* cl) {
  return cl->size == 0 && cl->content == NULL;
}

NanString NanStringFromChar(char c) {
  NanString str = {
    .size = 1,
    .content = NULL
  };
  // void* p = malloc(1);
  str.content = malloc(1);
  if (str.content == NULL) {
    SNAN_PANIC_CODE("cannot allocate");
  }
  *str.content = c;
  return str;
}
NanString NanStringFromStr(char* s) {
  NanString str = {
    .size = strlen(s),
    .content = NULL
  };
  str.content = malloc(str.size);
  if (str.content == NULL) { SNAN_PANIC_CODE("can't allocate memory"); }
  memcpy(str.content, s, str.size);
  return str;
}
NanString NanStringFromStrs(char* s, ...) {
  size_t size = 0;
  va_list list;
  va_start(list, s);
  for (
    char* next = va_arg(list, char*);
    next != NULL;
    next = va_arg(list, char*)
  ) {
    size+=strlen(next);
  }
  va_end(list);
  NanString str = {
    .size = size,
    .content = NULL
  };
  str.content = malloc(str.size);
  if (str.content == NULL) { SNAN_PANIC_CODE("can't allocate memory"); }
  size = strlen(s);
  memcpy(str.content+size, s, size);
  va_start(list, s);
  for (
    char* next = va_arg(list, char*);
    next != NULL;
    next = va_arg(list, char*)
  ) {
    size_t len = strlen(next);
    memcpy(str.content+size, next, len);
    size += len;
  }
  va_end(list);
  return str;
}
NanString NanStringFromS(char* s, size_t size) {
  NanString str = { 0 };
  str.size = size;
  str.content = malloc(size);
  if (str.content == NULL) { SNAN_PANIC_CODE("can't allocate memory"); }
  memcpy(str.content, s, size);
  return str;
}

void NanStringPrint(NanString* self) {
  for (int i = 0; i < self->size; i++) {
    putchar(self->content[i]);
  }
}

void NanStringInsert(NanString* self, void* p, size_t size) {
  memmove(self->content+size, self->content, self->size);
  memcpy(self->content, p, size);
  self->size += size;
}

bool NanStringStartWithC(NanString* self, char c){
  return self->size > 1 && self->content[0] == c;
}
bool NanStringStartWith(NanString* self, char* c){
  size_t len = strlen(c);
  if (self->size < len) { return false; }
  for (size_t i = 0; i < len; i++) {
    if (self->content[i] != c[i]) { return false; }
  }
  return true;
}

void NanStringCutLeft(NanString* self, size_t count) {
  if (count >= self->size) { NAN_PANIC_CODE("almost"); }
  size_t cursor = 0;
  while (cursor < count) { self->content++; cursor++; }
}

char* NanStringC_Str(NanString* self) {
  char* buffer = malloc(self->size+1);
  memcpy(buffer, self->content, self->size);
  buffer[self->size] = '\0';
  return buffer;
}


bool isFilePath(const char* path) {
	return access(path, F_OK) == 0;
}
bool NanIsFilePath(NanString* str) {
	return access(NanStringC_Str(str), F_OK) == 0;
}

typedef struct {
  size_t alignment;
  size_t size;
  size_t capacity;
  char* begin;
} NanStringBuilder;

NanStringBuilder NanStringBuilderCreate(size_t alignment) {
  NanStringBuilder self = {0};
  self.alignment = alignment;
  self.size = 0;
  self.capacity = alignment;
  self.begin = malloc(alignment*sizeof(char));
  if (self.begin == NULL) {
    SNAN_PANIC_CODE("can't allocate");
  }
  return self;
}
NanStringBuilder NanStringBuilderFromStr(char* str, size_t size) {
  NanStringBuilder self = {
    .alignment = 10,
    .capacity = 10,
    .size = size,
    .begin = 0
  };
  self.begin = malloc(10*size);
  if (self.begin == NULL) { SNAN_PANIC_CODE("can't allocate"); }
  memcpy(self.begin, str, size);
  return self;
}

void NanStringBuilderPrintX(NanStringBuilder* self) {
  printf("{");
  for (int i = 0; i < self->size; i++) {
    ubyte n = self->begin[i] & 0xff;
    if (n < 0x10) {
      printf("\\x0%x", n);
    } else {
      printf("\\x%x", n);
    }
  }
  printf("}\n");
}

void NanStringBuilderRealloc(NanStringBuilder* self, size_t newSize) {
  size_t _aligned_size = newSize + self->alignment - self->alignment % newSize;
  self->capacity = _aligned_size;
  self->begin = realloc(self->begin, _aligned_size);

  if (self->begin == NULL) {
    SNAN_PANIC_CODE("can't allocate");
  }
}

void NanStringBuilderPushC(NanStringBuilder* self, char c) {
  size_t _new_size = self->size + 1;
  if (_new_size > self->capacity) {
    NanStringBuilderRealloc(self, _new_size);
  }
  self->begin[self->size] = c;
  // *(self->begin+(self->size*sizeof(char))) = c;
  self->size++;
}
void NanStringBuilderPushB(NanStringBuilder* self, ubyte c) {
  size_t _new_size = self->size + 1;
  if (_new_size > self->capacity) {
    NanStringBuilderRealloc(self, _new_size);
  }
  *(self->begin+(self->size*sizeof(ubyte))) = c;
  self->size++;
}

void NanStringBuilderPushS(NanStringBuilder* self, char* str) {
  size_t _new_size = self->size + strlen(str);
  if (_new_size > self->capacity) {
    NanStringBuilderRealloc(self, _new_size);
  }
  memcpy(self->begin+(self->size*sizeof(char)), str, strlen(str));
  self->size += strlen(str);
}
void NanStringBuilderPushStr(NanStringBuilder* self, char* str, size_t size) {
  size_t _new_size = self->size + size;
  if (_new_size > self->capacity) {
    NanStringBuilderRealloc(self, _new_size);
  }
  memcpy(self->begin+(self->size*sizeof(char)), str, size);
  self->size += size;
}

void NanStringBuilderPushMany(NanStringBuilder* self, void* items, size_t size) {
  size_t _new_size = self->size+size;
  if (_new_size > self->capacity) {
    NanStringBuilderRealloc(self, _new_size);
  }
  memcpy(self->begin+self->size, items, size);
  self->size += size;
}

NanString NanStringBuilderFinalize(NanStringBuilder* self) {
  NanString str = {0};
  str.size = self->size;
  str.content = self->begin;
  return str;
}

NanString NanStringBuilderFinalizeSave(NanStringBuilder* self) {
  NanString str = {
    .size = self->size,
    .content = NULL
  };
  str.content = malloc(self->size);
  memcpy(str.content, self->begin, self->size);
  return str;
}


NanString readfile(const char* path) {
	// init file
	FILE* ptr;
	ptr = fopen(path, "rb");
	if (ptr == NULL) { NAN_PANIC_CODE("FILE ERROR"); }
	// get size of file
	long file_size;
	fseek(ptr, 0L, SEEK_END);
	file_size = ftell(ptr);
	fseek(ptr, 0L, SEEK_SET);
	// init buffer
	char* buffer = malloc(file_size);
	// read file
	fread(buffer, sizeof(char), file_size, ptr);
	// close file
	fclose(ptr);
	// get string from string builder
	NanString str = NanStringFromS(buffer, file_size);
  // free
	free(buffer); free(ptr);
	return str;
}

typedef struct {
  FILE* ptr;
  size_t size;
  uintptr_t flags;
  const char* path;
} NanFile;

#define NAN_READ   0b0001
#define NAN_WRITE  0b0010
#define NAN_BINARY 0b0100
#define NAN_CREATE 0b1000

NanFile NanFileCreate(const char* path, uintptr_t flags) {
  NanFile file = {0};
  file.ptr = NULL;
  file.path = path;
  file.flags = flags;
  file.size = (size_t)-1;
  return file;
}

size_t NanFileSeek(NanFile* file) {
  long file_size;
	fseek(file->ptr, 0L, SEEK_END);
	file_size = ftell(file->ptr);
	fseek(file->ptr, 0L, SEEK_SET);
  file->size = file_size;
  return file->size;
}

NanFile NanFileOpen(const char* path, uintptr_t flags) {
  if (!isFilePath(path) && !(flags & NAN_CREATE)) { 
    printf("'%s'\n", path);
    ENAN_PANIC_CODE("file error", "undefined file path"); }
  NanFile file = NanFileCreate(path, flags);
  char fstr[4] = "\0\0\0\0";
  if (file.flags & NAN_READ) {
    fstr[0] = 'r';
  }
  else if (file.flags & NAN_WRITE) {
    fstr[0] = 'w';
  }
  if (file.flags & NAN_BINARY) {
    fstr[1] = 'b';
  }
  if (file.flags & NAN_CREATE) {
    if (fstr[1] != 0) {
      fstr[2] = '+';
    } else {
      fstr[1] = '+';
    }
  }
  if (fstr[0] == 0) { ENAN_PANIC_CODE("file error", "undefined flags"); }
  file.ptr = fopen(path, fstr);
	if (file.ptr == NULL || ferror(file.ptr)) { 
    printf("'%s' ''%s \n", path, fstr);
    perror("file error");
    exit(1);
    // ENAN_PANIC_CODE("file error", "undefined error");
  }
  NanFileSeek(&file);
	return file;
}

void NanFileClose(NanFile* file) {
  fclose(file->ptr);
}


NanString NanFileRead(NanFile* file) {
  if (!(file->flags | NAN_READ)) { NAN_PANIC_CODE("FILE ERROR"); }
	char buffer[file->size];
	fread(buffer, sizeof(char), file->size, file->ptr);
  NanString str = NanStringFromS(buffer, file->size);
	return str;
}

size_t NanFileWrite(NanFile* file, NanString text) {
  if (!(file->flags | NAN_WRITE)) { NAN_PANIC_CODE("FILE ERROR"); }
  return fwrite(text.content, sizeof(char), text.size, file->ptr);
}


NanString NanReadFile(NanString* path) {
	// init file
	FILE* ptr;
	ptr = fopen(NanStringC_Str(path), "rb");
	if (ptr == NULL) { NAN_PANIC_CODE("FILE ERROR"); }
	// get size of file
	long file_size;
	fseek(ptr, 0L, SEEK_END);
	file_size = ftell(ptr);
	fseek(ptr, 0L, SEEK_SET);
	// init buffer
	char* buffer = malloc(file_size);
	// read file
	fread(buffer, sizeof(char), file_size, ptr);
	// close file
	fclose(ptr);
	// get string from string builder
	NanString str = NanStringFromStr(buffer);
  // free
	free(buffer); free(ptr);
	return str;
}




/*
 * sys/mman.h
 * mman-win32
 */

#ifdef __linux__

#include <sys/mman.h>

#elif __WIN32

#ifndef _SYS_MMAN_H_
#define _SYS_MMAN_H_

#ifndef _WIN32_WINNT		// Allow use of features specific to Windows XP or later.
#define _WIN32_WINNT 0x0501	// Change this to the appropriate value to target other versions of Windows.
#endif

/* All the headers include this file. */
#ifndef _MSC_VER
#include <_mingw.h>
#endif

#include <sys/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define PROT_NONE       0
#define PROT_READ       1
#define PROT_WRITE      2
#define PROT_EXEC       4

#define MAP_FILE        0
#define MAP_SHARED      1
#define MAP_PRIVATE     2
#define MAP_TYPE        0xf
#define MAP_FIXED       0x10
#define MAP_ANONYMOUS   0x20
#define MAP_ANON        MAP_ANONYMOUS

#define MAP_FAILED      ((void *)-1)

/* Flags for msync. */
#define MS_ASYNC        1
#define MS_SYNC         2
#define MS_INVALIDATE   4

void*   mmap(void *addr, size_t len, int prot, int flags, int fildes, off_t off);
int     munmap(void *addr, size_t len);
int     _mprotect(void *addr, size_t len, int prot);
int     msync(void *addr, size_t len, int flags);
int     mlock(const void *addr, size_t len);
int     munlock(const void *addr, size_t len);

#ifdef __cplusplus
};
#endif

#endif /*  _SYS_MMAN_H_ */

#include <windows.h>
#include <errno.h>
#include <io.h>

#ifndef FILE_MAP_EXECUTE
#define FILE_MAP_EXECUTE    0x0020
#endif /* FILE_MAP_EXECUTE */

static int __map_mman_error(const DWORD err, const int deferr)
{
    if (err == 0)
        return 0;
    //TODO: implement
    return err;
}

static DWORD __map_mmap_prot_page(const int prot)
{
    DWORD protect = 0;

    if (prot == PROT_NONE)
        return protect;

    if ((prot & PROT_EXEC) != 0)
    {
        protect = ((prot & PROT_WRITE) != 0) ?
                    PAGE_EXECUTE_READWRITE : PAGE_EXECUTE_READ;
    }
    else
    {
        protect = ((prot & PROT_WRITE) != 0) ?
                    PAGE_READWRITE : PAGE_READONLY;
    }

    return protect;
}

static DWORD __map_mmap_prot_file(const int prot)
{
    DWORD desiredAccess = 0;

    if (prot == PROT_NONE)
        return desiredAccess;

    if ((prot & PROT_READ) != 0)
        desiredAccess |= FILE_MAP_READ;
    if ((prot & PROT_WRITE) != 0)
        desiredAccess |= FILE_MAP_WRITE;
    if ((prot & PROT_EXEC) != 0)
        desiredAccess |= FILE_MAP_EXECUTE;

    return desiredAccess;
}

void* mmap(void *addr, size_t len, int prot, int flags, int fildes, off_t off)
{
    HANDLE fm, h;

    void * map = MAP_FAILED;

#ifdef _MSC_VER
#endif

    const DWORD dwFileOffsetLow = (sizeof(off_t) <= sizeof(DWORD)) ?
                    (DWORD)off : (DWORD)(off & 0xFFFFFFFFL);
    const DWORD dwFileOffsetHigh = (sizeof(off_t) <= sizeof(DWORD)) ?
                    (DWORD)0 : (DWORD)((off >> 32) & 0xFFFFFFFFL);
    const DWORD protect = __map_mmap_prot_page(prot);
    const DWORD desiredAccess = __map_mmap_prot_file(prot);

    const off_t maxSize = off + (off_t)len;

    const DWORD dwMaxSizeLow = (sizeof(off_t) <= sizeof(DWORD)) ?
                    (DWORD)maxSize : (DWORD)(maxSize & 0xFFFFFFFFL);
    const DWORD dwMaxSizeHigh = (sizeof(off_t) <= sizeof(DWORD)) ?
                    (DWORD)0 : (DWORD)((maxSize >> 32) & 0xFFFFFFFFL);

#ifdef _MSC_VER
#endif

    errno = 0;

    if (len == 0
        /* Unsupported flag combinations */
        || (flags & MAP_FIXED) != 0
        /* Usupported protection combinations */
        || prot == PROT_EXEC)
    {
        errno = EINVAL;
        return MAP_FAILED;
    }

    h = ((flags & MAP_ANONYMOUS) == 0) ?
                    (HANDLE)_get_osfhandle(fildes) : INVALID_HANDLE_VALUE;

    if ((flags & MAP_ANONYMOUS) == 0 && h == INVALID_HANDLE_VALUE)
    {
        errno = EBADF;
        return MAP_FAILED;
    }

    fm = CreateFileMapping(h, NULL, protect, dwMaxSizeHigh, dwMaxSizeLow, NULL);

    if (fm == NULL)
    {
        errno = __map_mman_error(GetLastError(), EPERM);
        return MAP_FAILED;
    }

    map = MapViewOfFile(fm, desiredAccess, dwFileOffsetHigh, dwFileOffsetLow, len);

    CloseHandle(fm);

    if (map == NULL)
    {
        errno = __map_mman_error(GetLastError(), EPERM);
        return MAP_FAILED;
    }

    return map;
}

int munmap(void *addr, size_t len)
{
  if (UnmapViewOfFile(addr))
      return 0;

  errno =  __map_mman_error(GetLastError(), EPERM);

  return -1;
}

int _mprotect(void *addr, size_t len, int prot)
{
    DWORD newProtect = __map_mmap_prot_page(prot);
    DWORD oldProtect = 0;

    if (VirtualProtect(addr, len, newProtect, &oldProtect))
        return 0;

    errno =  __map_mman_error(GetLastError(), EPERM);

    return -1;
}

int msync(void *addr, size_t len, int flags)
{
    if (FlushViewOfFile(addr, len))
        return 0;

    errno =  __map_mman_error(GetLastError(), EPERM);

    return -1;
}

int mlock(const void *addr, size_t len)
{
    if (VirtualLock((LPVOID)addr, len))
        return 0;

    errno =  __map_mman_error(GetLastError(), EPERM);

    return -1;
}

int munlock(const void *addr, size_t len)
{
    if (VirtualUnlock((LPVOID)addr, len))
        return 0;

    errno =  __map_mman_error(GetLastError(), EPERM);

    return -1;
}


#endif

typedef void(*NanExecFuncMemoried)(void* memory);
typedef void(*NanExecFunc)(void);
typedef void(__stdcall *NanFarFunc)(void);

#define MEMORY_CAP (10*1000*1000)

typedef struct {
  NanExecFuncMemoried runnable;
  void* memory;
} NanExec;

void* NanStringBuilderToExecGetMemory() {
  void* memory = malloc(MEMORY_CAP);
  memset(memory, 0, MEMORY_CAP);
  return memory;
}

void NanExecRun(NanExec* run) {
  run->runnable(run->memory);
}

NanExec NanStringBuilderToExec(NanStringBuilder* builder) {
  NanExec exec = {0};
  void* buffer;
  buffer = mmap(0,sizeof(builder->begin),PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_ANON,-1,0);
  memcpy(buffer, builder->begin, builder->size);
  exec.runnable = (NanExecFuncMemoried)buffer;
  exec.memory = NanStringBuilderToExecGetMemory();
  return exec;
}

typedef struct {
  size_t cursor;
  size_t size;
  bool is_end;
  char* content;
} NanStringIterator;

NanStringIterator NanStringIteratorFromString(NanString* original) {
  NanStringIterator it = {
    .content = original->content,
    .cursor = 0,
    .size = original->size,
    .is_end = false
  };
  return it;
}

NanStringIterator NanStringIteratorFromStringBulder(NanStringBuilder* original) {
  NanStringIterator it = {
    .content = NULL,
    .cursor = 0,
    .size = original->size,
    .is_end = false
  };
  it.content = malloc(original->size*sizeof(char));
  memcpy(it.content, original->begin, original->size);
  return it;
}

char NanStringIteratorNext(NanStringIterator* self) {
  if (self->cursor < 0 || self->cursor >= self->size) {
    NAN_PANIC_CODE("index out of bounds");
  }
  if (self->cursor+1 >= self->size) {
    self->is_end = true;
  }
  return self->content[self->cursor++];
}

NanString NanStringIteratorToNanChar(NanStringIterator* self) {
  if (self->cursor < 0 || self->cursor >= self->size) {
    NAN_PANIC_CODE("index out of bounds");
  }
  if (self->cursor+1 >= self->size) {
    self->is_end = true;
  }
  char* content = self->content+self->cursor++;
  NanString str = { 0 };
  str.size = 1;
  str.content = content;

  return str;
}

void NanStringIteratorSkip(NanStringIterator* self, int count) {
  if (self->cursor < 0 || self->cursor >= self->size) {
    NAN_PANIC_CODE("index out of bounds");
  }
  if (self->cursor+count >= self->size) {
    self->is_end = true;
  }
  self->cursor += count;
}


char NanStringIteratorGetCurrent(NanStringIterator* self) {
  if (self->cursor < 0 || self->cursor >= self->size) {
    NAN_PANIC_CODE("index out of bounds");
  }
  if (self->cursor+1 >= self->size) { self->is_end = true; }
  return self->content[self->cursor];
}

char* NanStringIteratorNextStr(NanStringIterator* self) {
  if (self->cursor < 0 || self->cursor >= self->size) {
    NAN_PANIC_CODE("index out of bounds");
  }
  return self->content+self->cursor;
}

char NanStringIteratorGetNexts(NanStringIterator* self, size_t offset) {
  size_t _index = offset+self->cursor-1;
  if (_index < 0 || _index >= self->size) { self->is_end = true; return -1; }
  return self->content[_index];
}

bool NanStringIteratorStrIn(NanStringIterator* self, char* str, size_t size) {
  size_t _index = size+self->cursor-1;
  if (_index < 0 || _index >= self->size) { return false; }
  return memcmp(self->content+_index, str, size) == 0;
}
bool NanStringIteratorStrInNext(NanStringIterator* self, char* str, int offset, size_t size) {
  size_t _index = offset+size+self->cursor-1;
  if (_index < 0 || _index >= self->size) { return false; }
  return memcmp(self->content+offset+_index, str, size) == 0;
}

bool NanStringIteratorStrInStr(NanStringIterator* self, char* str) {
  char c = NanStringIteratorGetCurrent(self);
  return isCharInString(str, c);
}

void NanStringBuilderPushIt(NanStringBuilder* self, NanStringIterator* it) {
  char c = NanStringIteratorGetCurrent(it);
  NanStringBuilderPushC(self, c);
}

typedef struct {
  void* begin;
  size_t size;
} NanSlicer;

NanSlicer NanSlicerCreate() {
  NanSlicer slicer = {0};
  return slicer;
}

NanSlicer NanSlicerFromStrIt(NanStringIterator* it) {
  NanSlicer slicer = {0};
  slicer.begin = it->cursor+it->content;
  slicer.size = 0;
  return slicer;
}

NanString NanSlicerToNanString(NanSlicer* slicer) {
  NanString str = {0};
  str.content = slicer->begin;
  str.size = slicer->size;
  return str;
}

void NanSlicerStep(NanSlicer* self) {
  self->size++;
}

typedef struct {
  size_t cursor;
  size_t size;
  void* content;
} NanIterator;

NanIterator NanIteratorFrom(void* row, size_t size) {
  NanIterator it = {
    .content = NULL,
    .cursor = 0,
    .size = size
  };
  it.content = row;
  return it;
}

void* NanIteratorNext(NanIterator* self) {
  if (self->cursor >= self->size) { return NULL; }
  return (self->content+self->cursor++);
}

void* NanIteratorBack(NanIterator* self) {
  if (self->cursor-1 < 0) { return NULL; }
  return (self->content+self->cursor--);
}

bool isCharInNanString(NanString parent, char c) {
  for (int i = 0; i < parent.size; i++) {
    if (parent.content[i] == c) {
      return true;
    }
  }
  return false;
}



#ifdef _WIN32
typedef HINSTANCE NanHinstance;

typedef struct {
	NanString name;
	NanFarFunc raw_func;
} NanDllFunc;

typedef struct {
	NanHinstance lib;
	NanString name;
	NanDynamicArray loadedfuncs;
} NanDll;

#define NanGetFuncFromDll(type, dll, name) ((type)NanGetFuncFromDll_raw(dll, name))
#define NanLoadFuncFromDll(dll, name) NanGetFuncFromDll_raw(dll, name)
#define NanDefFunc(type, name, right) type name = right
#define NanDefFuncDLL(type, dll, name) NanDefFunc(type, __##name, NanGetFuncFromDll(type, dll, #name))
#define NanDedFuncDLLStr(type, dll, name) NanDefFunc(type, __##name, NanGetFuncFromDll(type, dll, #name))

NanFarFunc NanGetFuncFromDll_raw(NanDll* dll, char* name) {
	if (dll->lib == NULL) { NAN_PANIC_CODE("dll not loaded"); }
	NanFarFunc _raw_func = (NanFarFunc)GetProcAddress(dll->lib, (LPCSTR)name);
	if (_raw_func == 0) { NAN_PANIC_CODEF("cannot loads func: `%s`", name); }
  NanDllFunc* func = NULL;
  NanString __name = NanStringFromStr(name);

  NanDllFunc* _temp_v = NULL;
  for (int i = 0; i < dll->loadedfuncs.size; i++) {
    func = NanDynamicArrayAt_s(&dll->loadedfuncs, i);
    if (NanStringMatch(&_temp_v->name, &__name)) {
      return func->raw_func;
    }
  }

  if (func == NULL) {
    func = malloc(sizeof(NanDllFunc));
    func->name = __name;
    func->raw_func = _raw_func;
  }

	NanDynamicArrayPush(&dll->loadedfuncs, func);

	return _raw_func;
}

uint32_t NanGetFuncAdressFromDll(NanDll* dll, char* name) {
	if (dll->lib == NULL) { NAN_PANIC_CODE("dll not loaded"); }
	uint32_t adress = (uint32_t)GetProcAddress(dll->lib, (LPCSTR)name);
	return adress;
}

NanDll NanDllCreate() {
	NanDll dll = {
		.lib = NULL,
		.name = NanStringNull,
		.loadedfuncs = NanDynamicArrayCreate(sizeof(NanDllFunc))
	};
	return dll;
}

NanDll NanLoadDll(char* name) {
	NanDll dll = NanDllCreate();
	LPSTR __name = name;
	dll.lib = LoadLibrary(__name);
	if (dll.lib == NULL) { NAN_PANIC_CODE("dll not loaded"); }
	return dll;
}

void NanDllDestroy(NanDll* dll) {
  FreeLibrary(dll->lib);
}
#endif

typedef struct {
  NanString flag;
  size_t value_i;
} NanArgument;

typedef struct {
  NanDynamicArray _with_flags;
  NanDynamicArray content;
} NanArgumentRow;

/// flag without `-` or `--`
bool NanArgumentIsInRow(NanArgumentRow* row, char* flag) {
  NanString _flag_short = NanStringFromStrs("-", flag);
  NanString _flag_long  = NanStringFromStrs("--", flag);

  for (int i = 0; i < row->_with_flags.size; i++) {
    NanArgument* arg = NanDynamicArrayAt(&row->_with_flags, i);
    if (
      NanStringMatch(&arg->flag, &_flag_short) ||
      NanStringMatch(&arg->flag, &_flag_long)
    ) {
      return true;
    }
  }
  return false;
}

/// flag with `-` or `--`
bool NanArgumentIsInRowAbs(NanArgumentRow* row, char* flag) {
  NanString _flag = NanStringFromStr(flag);
  for (int i = 0; i < row->_with_flags.size; i++) {
    NanArgument* arg = NanDynamicArrayAt(&row->_with_flags, i);
    if (NanStringMatch(&arg->flag, &_flag)) { return true; }
  }
  return false;
}
/// flag with `-` or `--`, and write to 'next' next chars 
bool NanArgumentIsInRowAbsWN(NanArgumentRow* row, char* flag, NanString** next) {
  NanString _flag = NanStringFromStr(flag);
  for (int i = 0; i < row->_with_flags.size; i++) {
    NanArgument* arg = NanDynamicArrayAt(&row->_with_flags, i);
    if (NanStringMatch(&arg->flag, &_flag)) { 
      arg = NanDynamicArrayAt(&row->_with_flags, i+1);
      *next = &arg->flag;
      return true;
    }
  }
  *next = NULL;
  return false;
}

NanString* NanArgumentRowGet(NanArgumentRow* row, size_t index) {
  void* arg = NanDynamicArrayAt_s(&row->content, index);
  if (arg == NULL) { return &NanStringNull; }
  return arg;
}

NanString* NanArgumentRowFindPathOne(NanArgumentRow* row) {
  for (int i = 0; i < row->content.size; i++) {
    NanString* arg = NanDynamicArrayAt(&row->content, i);
    if (NanIsFilePath(arg)) { return arg; }
  }
  return &NanStringNull;
}

NanArgumentRow NanParseArguments(int argc, char** argv) {
  NanDynamicArray _wflags = NanDynamicArrayCreate(sizeof(NanArgument));
  NanDynamicArray _args = NanDynamicArrayCreate(sizeof(NanString));
  size_t cursor = 1;
  while (cursor < argc) {
    NanString arg = NanStringFromStr(argv[cursor++]);
    if (
      NanStringStartWith(&arg, "-") ||
      NanStringStartWith(&arg, "--")
    ) {
      NanArgument* __arg = malloc(sizeof(NanArgument));
      __arg->flag = arg;
      if (cursor+1 < argc) {
        __arg->value_i = _args.size;
      } else {
        __arg->value_i = (size_t)-1;
      }
      NanDynamicArrayPush(&_wflags, __arg);
    }
    else {
      NanDynamicArrayPush(&_args, &arg);
    }
  }
  NanArgumentRow ar = {
    .content = _args,
    ._with_flags = _wflags
  };
  return ar;
}


typedef struct {
  NanString content;
  ubyte type;
} NanLexerUnit;

typedef struct {
  NanDynamicArray tokens;
  size_t cursor;
} NanLexer;

NanLexer NanLexerCreate() {
  NanLexer lexer = {
    .tokens = NanDynamicArrayCreate(sizeof(NanLexerUnit)),
    .cursor = 0
  };
  return lexer;
}

void NanLexerAppend(NanLexer* lexer, NanLexerUnit* unit) {
  NanDynamicArrayPush(&lexer->tokens, unit);
}

NanLexerUnit* NanLexerNext(NanLexer* lexer) {
  if (lexer->tokens.size <= lexer->cursor) {
    return NULL;
  }
  return (lexer->tokens.begin+(lexer->tokens.T_size*lexer->cursor++));
}


typedef void(*NanEventCallback)(void*);

typedef struct {
  NanString name;
  NanEventCallback callback;
} NanEventRowElement;

NanDynamicArray NanEventRowCreate() {
  NanDynamicArray arr = NanDynamicArrayCreate(sizeof(NanEventRowElement));
  return arr;
}

NanEventRowElement* NanEventRowFindOne(NanDynamicArray* self, char* name) {
  NanString __name = NanStringFromStr(name);
  for (int i = 0; i < self->size; i++) {
    NanEventRowElement* el = NanDynamicArrayAt(self, i);
    if (NanStringMatch(&el->name, &__name)) {
      return el;
    }
  }
  return NULL;
}

NanDynamicArray NanEventRowFindAll(NanDynamicArray* self, char* name) {
  NanString __name = NanStringFromStr(name);
  NanDynamicArray matched = NanDynamicArrayCreate(sizeof(NanEventRowElement));
  for (int i = 0; i < self->size; i++) {
    NanEventRowElement* el = NanDynamicArrayAt(self, i);
    if (NanStringMatch(&el->name, &__name)) {
      NanDynamicArrayPush(&matched, el);
    }
  }
  return matched;
}

void NanEventRowRun(NanDynamicArray* self, void* ev) {
  for (int i = 0; i < self->size; i++) {
    NanEventRowElement* el = NanDynamicArrayAt(self, i);
    el->callback(ev);
  }
}

void NanEventRowRunNamed(NanDynamicArray* self, char* name, void* ev) {
  NanDynamicArray __finded = NanEventRowFindAll(self, name);
  for (int i = 0; i < __finded.size; i++) {
    NanEventRowElement* el = NanDynamicArrayAt(&__finded, i);
    el->callback(ev);
  }
}

typedef struct {
  NanString name;
  int value;
} NanTypeAssociation;

typedef struct {
  size_t start;
  size_t end;
  void* content;
} NanMemoryCart;

typedef struct {
  size_t start;
  size_t size;
} NanRange;

typedef struct {
  NanDynamicArray frees;
  NanDynamicArray uses;
  size_t size;
} NanJitMemory;

NanJitMemory NanJitMemoryCreate() {
  NanJitMemory jm = {
    .frees = NanDynamicArrayCreate(sizeof(NanRange)),
    .uses = NanDynamicArrayCreate(sizeof(NanRange)),
    .size = 0
  };
  return jm;
}

// todo:
// void NanJitMemoryClean(NanJitMemory* self) {
// 	if (self->frees.size == 0) { return; }
// 	for (int i = 0; i < self->frees.size; i++) {

// 	}
// }

NanRange* NanJitMemoryAllocate(NanJitMemory* self, size_t size) {
  NanRange* next_ = {0};
  if (self->frees.size != 0) {
    for (int i = 0; i < self->frees.size; i++) {
      NanRange* free_d = NanDynamicArrayAt(&self->frees, i);
      if (free_d->size == size) {
        next_->start = free_d->start;
        next_->size = size;
        NanDynamicArrayDelete(&self->frees, i);
        return next_;
      }
      if (free_d->size > size) {
        next_->start = free_d->start;
        next_->size = size;
        next_->size -= size;
        return next_;
      }
    }
  }
  next_->start = self->size;
  next_->size = size;
  self->size += size;
  NanDynamicArrayPush(&self->uses, next_);
  return next_;
}

void NanJitMemoryFree(NanJitMemory* self, NanRange* range) {
  NanRange* next_ = {0};
  for (int i = 0; i < self->uses.size; i++) {
    NanRange* uses_d = NanDynamicArrayAt(&self->uses, i);
    if (uses_d->size == range->size && uses_d->start == range->start) {
      next_->size = uses_d->size;
      next_->start = uses_d->start;
      NanDynamicArrayDelete(&self->uses, i);
      if (i+1 < self->uses.size) {
        uses_d = NanDynamicArrayAt(&self->uses, i+1);
        if (uses_d->start-1 == next_->start+next_->size) {
          next_->size += uses_d->size;
          NanDynamicArrayDelete(&self->uses, i+1);
        }
      }
      if (i-1 > 0) {
        uses_d = NanDynamicArrayAt(&self->uses, i-1);
        if (uses_d->start+uses_d->size == next_->start-1) {
          next_->start -= uses_d->size;
          next_->size += uses_d->size;
          NanDynamicArrayDelete(&self->uses, i-1);
        }
      }

      return;
    }
  }
  NAN_PANIC_CODE("range of code undefined");
}





#ifdef __cplusplus
}
#endif

#endif