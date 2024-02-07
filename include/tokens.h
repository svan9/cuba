#ifndef TOKENS_H
#define TOKENS_H

#define eng_abc_lower "abcdefghijklmnopqrstuvwxyz"
#define eng_abc_upper "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

#define TK_OPERATORS  "+-=^*><?!~%/"
#define TK_ABC        eng_abc_lower eng_abc_upper
#define TK_DIGITS     "0987654321"

#define TK_QUOTES     "'\"`"
#define TK_BREKETS    "{[()]}"

#define WORD_ASSERT_START_CHAR TK_ABC "_$#"
#define WORD_ASSERT_BEFORE_CHAR WORD_ASSERT_START_CHAR TK_DIGITS

#define NUMBER_ASSER_CHAR TK_DIGITS "_."


// #define IS_NUMBER(text)

#endif