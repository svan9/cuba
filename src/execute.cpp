#include <execute.h>

#include <mman.h>
#include <string.h>

/// returns a buffer of code-function
/// may runned with:
/// (rettype(*)(argstype)buf) -- function
/// you can run it like a function
void* execute(char code[]) {
	void* buf;
	buf = mmap(0,sizeof(code),PROT_READ|PROT_WRITE|PROT_EXEC,
		MAP_PRIVATE|MAP_ANON,-1,0);

	memcpy (buf, code, sizeof(code));
    __builtin___clear_cache(buf, buf+sizeof(code)-1);
	
	return buf;
	// int i = ((int (*)(void))buf)();
}