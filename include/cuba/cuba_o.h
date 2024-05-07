#ifndef CUBA_OBJECT_CUBA_O_H
#define CUBA_OBJECT_CUBA_O_H

#include <token.h>

struct BLOCK;

struct RANGE;

struct RANGE {
  size_t start;
  size_t end;
}; 

struct BLOCK {
  RANGE pos;
};

#endif