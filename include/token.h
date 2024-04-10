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

class Token {
private:
  TokenType type;
  STokenType second_type;
  std::string value;
public:
  Token();
  Token(TokenType type);
  Token(TokenType type, std::string value);
  Token(TokenType type, STokenType second_type, std::string value);

  std::string getValue();
  TokenType getType();
  STokenType getSecondType();

  void setValue(std::string value);
  void setType(TokenType value);
  void setSecondType(STokenType value);

  void appendValue(char* str);
  void appendValue(char c);

  bool has(TokenType tt);
  bool has(STokenType stt);
  bool has(TokenType tt, STokenType stt);
  bool has(std::string value);

  static bool equalByFirst(Token* t1, Token* t2);
  static bool equalBySecond(Token* t1, Token* t2);
  static bool equalByFull(Token* t1, Token* t2);

  static bool equalByFirst(Token* t1, TokenType tt);
  static bool equalBySecond(Token* t1, STokenType stt);
  static bool equalByFull(Token* t1, TokenType tt, STokenType stt);

  void printSelf();
};


#endif
