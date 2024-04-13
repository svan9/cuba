#ifndef CUBA_LEXER_H
#define CUBA_LEXER_H

#include <iostream>
#include <string>
#include <token.h>

class Lexer {
private:
  size_t size;
  size_t current;

  Token* tokens;

  bool isCorrectIndex(size_t index);
  static bool charIntoString(char c, const char* string);

  void doString(int* index, std::string str);
  void doBrackets(int* index, std::string str);
  void doEngl(int* index, std::string str);
  void doSpecial(int* index, std::string str);
  void doNumber(int* index, std::string str);

  Token simulateCharLikeBracket(char c);

public:
  Lexer();
  Lexer(std::string str);
  Lexer(size_t size);
  ~Lexer();

  Token* next();
  void move(size_t index);
  void append(Token token);
  bool isEnd();
  Token* get(size_t offset);
  Token* getCurrent();
  

  void printTokens();

  void forceSize(size_t size);
  
  void generateFromLine(std::string str);
  
  size_t getSize();
};


std::string* pstr(std::string str);
char** pchars(std::string str);

int* pint(int str);
int* pint(std::string str);

#endif