#ifndef CUBA_LEXER_H
#define CUBA_LEXER_H

#include <iostream>
#include <string>
#include <token.h>
#include <bitset>

class Lexer {
private:
  size_t size;
  size_t current;

  Token* tokens;

  bool isCorrectIndex(size_t index);
  static bool charIntoString(char c, const char* string);

  void doString(size_t* index, std::string str);
  void doBrackets(size_t* index, std::string str);
  void doEngl(size_t* index, std::string str);
  void doSpecial(size_t* index, std::string str);
  void doNumber(size_t* index, std::string str);

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

std::bitset<8>* pbin(std::bitset<8> str);

char* pchar(char str);
#endif