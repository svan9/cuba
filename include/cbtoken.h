#ifndef CB_TOKEN_H
#define CB_TOKEN_H

#include <cuba.h>

enum CB_Kind {
  OP_NUMBER, OP_OPERATOR, OP_WORD, OP_DIGIS, OP_BLOCK,
  OP_STRING,
  OP_LIST, OP_DICTIONARY, 
  OP_EOF, OP_NONRESERVED
};

enum CB_TOKEN_VALUE_TYPE {
  STRING_VALUE, BLOCK_VALUE
};

union CB_TOKEN_VALUE {
  std::string* string_value;
  CB_Token_t*  block_value;
};

struct CB_Token {
  CB_Kind_t              kind;
  CB_TOKEN_VALUE_TYPE_t  value_type;
  CB_TOKEN_VALUE_t*      value;
  CB_Token_t*            next;
};

CB_Token* create_token(
  CB_Kind kind, 
  CB_TOKEN_VALUE_TYPE value_type, 
  CB_TOKEN_VALUE* value, 
  CB_Token* next
);

inline void push_token(CB_Token* token, CB_Token* next);

void append_token(CB_Token* token, CB_Token* next);

inline bool is_ended_token(CB_Token* token);

#endif