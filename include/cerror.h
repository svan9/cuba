#ifndef ERROR_H
#define ERROR_H

#include <string>

#define callErr(ext, text) \
  printf("\033[91m~~~ERROR [" ext "_ERROR]: %s \033[0m", text);\
  exit(0);

#define cbocallErr(text) \
  callErr("CBO", text)

#define cbocallErrW(text, ...) \
  callErr("CBO", string_format(text, __VA_ARGS__).c_str())


#endif