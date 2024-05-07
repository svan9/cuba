#ifndef CUBA_CUBA_A_H
#define CUBA_CUBA_A_H

#include <token.h>
#include <vector>

struct BLOCK;

struct RANGE;

struct RANGE {
  size_t start;
  size_t end;
}; 

typedef enum {

} MARKERS;

struct CUSTOM_MARKER {
  const char* name;
};

struct BLOCK {
  RANGE pos; // pos in lexer
};

struct TOM {
  const char* name;
  std::vector<MARKERS> markers;
  BLOCK inner;
};


#endif