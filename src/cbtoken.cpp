#include <cuba.h>

CB_Token* create_token(
  CB_Kind kind, 
  CB_TOKEN_VALUE_TYPE value_type, 
  CB_TOKEN_VALUE* value,
  CB_Token* next
) {
  CB_Token cb_token = { kind, value_type, value, next };
  return &cb_token;
}

inline void push_token(CB_Token* token, CB_Token* next) {
  token->next = next;
}

void append_token(CB_Token* token, CB_Token* next) {
  if (is_ended_token(token)) {
    token->next = next;
  } else {
    append_token(token->next, next);
  }
}

inline bool is_ended_token(CB_Token* token) {
  if (token->next == NULL) {
    return true;
  }
  return false;
}