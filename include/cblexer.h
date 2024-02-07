#ifndef CB_LEXER_H
#define CB_LEXER_H

#include <cuba.h>

struct CB_Lexer {
  CB_Token* tokens;
  size_t    count;
  CB_Token* current_token; 
};

inline void append_token_lexer(CB_Lexer *lexer, CB_Token *token);
CB_Lexer* init_lexer();

void tokenize(CB_Lexer* lexer, const char* text);

#define string_size(str) strlen(str)

#endif
