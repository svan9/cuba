#ifndef _CUBA_CUBA_A_H_
#define _CUBA_CUBA_A_H_

#include <vector>
#include <token.h>
#include <worker.h>
#include <iostream>
#include <map>
#include <algorithm>
#include <dictionary.h>

#define PUSHCS(CS, E) \
  CS->code.push_back(E)

#define TKV(el) \
  ((Token*) el.value)


enum ELEMENT_TYPE_t {
  EL_BLOCK,
  EL_VARIABLE,
  EL_LINE,
  EL_FLAGROW,
  EL_TEXT,
  EL_NUMBER,
  EL_STRING,
  EL_TOKEN,
  EL_MACROS,
  EL_EXPRESSION,
  EL_TYPE_EXPRESSION,
  EL_GENERIC,
  EL_ARRAY,
};

typedef enum {
  T_INT      /*dev*/,
  T_UINT     /*dev*/,
  T_CHAR     /*dev*/,
  T_UCHAR    /*dev*/,
  T_STRING   /*dev*/,
  T_FLOAT    /*dev*/,
  T_BOOLEAN  /*dev*/,
  T_BIT      /*dev*/,
} DEEP_TYPE;

typedef enum {
  JOKE /*joke (ignore next line)*/, 
  GEN /*generic*/,
  FLAG_SUPPORT /*flag_support*/,
  BII /*builder*/,
  FESTO /*static*/,
  PRUVO /*private*/,
  OLUD  /*public*/,
} STATIC_MARKER_t;

struct RANGE_t {
  size_t start;
  size_t end;
};

struct ELEMENT_t {
  ELEMENT_TYPE_t type;
  void* value;
  size_t index;
};

struct LINE_t {
  std::vector<ELEMENT_t> elements;
};

struct CUSTOM_MARKER_t {
  const char* name;
};

typedef enum {
  M_STATIC,
  M_CUSTOM
} MARKER_USED_t;

typedef union {
  MARKER_USED_t used;
  STATIC_MARKER_t static_marker;
  CUSTOM_MARKER_t custom_marker;
  GENERIC_t arguments;
} MARKER_t;

struct FLAG_ROW_t { // '[...]' <-- flag row
  size_t size;
  std::vector<MARKER_t> markers;
};

struct VARIABLE_t {
  std::string name;
  std::string temp_type;
  DEEP_TYPE deep_type;
  FLAG_ROW_t markers;
  void* value;
};

struct BLOCK_t {
  bool init_self;
  VARIABLE_t self; // root
  std::vector<LINE_t> lines;
};

struct GENERIC_t {
  // const char* name;
  std::vector<ELEMENT_t> elements;
};

struct ARRAY_t { // '(...)' <-- array
  size_t size;
  std::vector<TYPE_EXPRESSION_t> children;
};

struct EVENT_REF_t { // 'on { ... <-- event }' 
  const char* name;
  const char* ref;
};

// struct
struct XAT_t {
  std::string name;
  FLAG_ROW_t markers;
  std::vector<std::string> hasroot;
  std::vector<EVENT_REF_t> ons /*events|operators*/;
  std::vector<VARIABLE_t> children;
};

struct TYPE_EXPRESSION_t {
  const char* type;
  const char* name;
};


struct CUBA_STATUS {
  size_t pos;
  Lexer* lex;
  std::vector<ELEMENT_t> code;
  std::map<std::string, XAT_t> structs;
};

#define CSGetNext(CS) \
  CS->code.at(CS->pos++)

#define CSGetNextN(CS) \
  CS->code.at(CS->pos)

#define CSBack(CS) \
  CS->pos--;

#define ElementNotIndexed(el) \
  (el.index == -1)

#define CSEOF(CS) \
  (CS->pos < CS->code.size())

#define AnyAlloc(type_) \
  malloc(sizeof(type_))

#define AnyAllocInit(type_, name) \
  type_* name = (type_*)malloc(sizeof(type_))

#define GenExit_Ret(type_, var_) \
  ELEMENT_t exit_;\
  exit_.type = type_;\
  exit_.value = var_;\
  return exit_;\

#define GenExit_(type_, var_) \
  ELEMENT_t exit_;\
  exit_.type = type_;\
  exit_.value = var_;\

// ? is ...

#define IS_BLOCK(e) \
  TKV(e)->has(TK_OPEN, FIGURED_BRACKETS)

#define IS_FLAG_ROW(e) \
  TKV(e)->has(TK_OPEN, SQUARED_BRACKETS)

#define IS_MARKER(cs, e) \
  (TKV(e)->has("!") && TKV(CSGetNextN(cs))->has("#"))

//### '<'
#define IS_GENERIC(e) \
  TKV(e)->has(TK_OPEN, ARROWED_BRACKETS)
  
//### '('
#define IS_ARRAY(e) \
  TKV(e)->has(TK_OPEN, ROUNDED_BRACKETS)

// ? is end ...

#define IS_ENFOF_LINE(e) \
  TKV(e)->has(";")

#define IS_ENFOF_BLOCK(e) \
  TKV(e)->has(TK_CLOSE, FIGURED_BRACKETS)

#define IS_ENFOF_FLAG_ROW(e) \
  TKV(e)->has(TK_CLOSE, SQUARED_BRACKETS)

#define IS_ENFOF_MARKER(e) \
  TKV(e)->has(",")

#define IS_ENFOF_MARKER(e) \
  TKV(e)->has(",")

#define IS_ENFOF_GENERIC(e) \
  TKV(e)->has(TK_CLOSE, ARROWED_BRACKETS)

#define IS_ENFOF_ARRAY(e) \
  TKV(e)->has(TK_CLOSE, ROUNDED_BRACKETS)

#define IS_ENFOF_TYPE_EXPRESSION(e) \
  TKV(e)->has(",")

#define IsComma(e) \
  TKV(e)->has(",")

// ? exit if is end
#define Exit_EndOfBlock(e) \ 
  if (IS_ENFOF_BLOCK(e)) { break; }

#define Exit_EndOfLine(e) \ 
  if (IS_ENFOF_LINE(e)) { break; }

#define Exit_EndOfFlagRow(e) \ 
  if (IS_ENFOF_FLAG_ROW(e)) { break; }

#define Exit_EndOfMarker(e) \ 
  if (IS_ENFOF_MARKER(e)) { break; }

#define Exit_EndOfGeneric(e) \ 
  if (IS_ENFOF_GENERIC(e)) { break; }

#define Exit_EndOfArray(e) \ 
  if (IS_ENFOF_ARRAY(e)) { break; }

#define Exit_EndOfTypeExpression(e) \ 
  if (IS_ENFOF_TYPE_EXPRESSION(e)) { break; }

#define SKIPIF(cs, expr) \
  if (expr) {CSGetNext(cs);}


#endif