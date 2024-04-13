#ifndef TOKEN_H
#define TOKEN_H

#include <string>

enum TokenType {
  TK_NUMBER,
  TK_TEXT,
  TK_SPECIAL,
  TK_OPEN,
  TK_CLOSE,
  TK_STRING,
};

enum STokenType {
//# brackets
  FIGURED_BRACKETS,
  ROUNDED_BRACKETS,
  ARROWED_BRACKETS,
  SQUARED_BRACKETS,
//# quotes
  DOUBLE_QUOTES,
  SINGLE_QUOTES,
  TILTED_QUOTES,
//# numbers
  SIMPLE_NUMBER,
  FLOAT_NUMBER,
};

typedef enum TokenType TokenType_t; 

class Token {
private:
  TokenType_t type;
  STokenType second_type;
  std::string value;
public:
  Token();
  Token(TokenType_t type);
  Token(TokenType_t type, std::string value);
  Token(TokenType_t type, STokenType second_type, std::string value);

  std::string getValue();
  TokenType_t getType();
  STokenType getSecondType();

  void setValue(std::string value);
  void setType(TokenType_t value);
  void setSecondType(STokenType value);

  void appendValue(char* str);
  void appendValue(char c);

  bool has(TokenType_t tt);
  bool has(STokenType stt);
  bool has(TokenType_t tt, STokenType stt);
  bool has(std::string value);

  static bool equalByFirst(Token* t1, Token* t2);
  static bool equalBySecond(Token* t1, Token* t2);
  static bool equalByFull(Token* t1, Token* t2);

  static bool equalByFirst(Token* t1, TokenType_t tt);
  static bool equalBySecond(Token* t1, STokenType stt);
  static bool equalByFull(Token* t1, TokenType_t tt, STokenType stt);

  void printSelf();
};


#endif
