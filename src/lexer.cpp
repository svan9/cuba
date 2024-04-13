#include <lexer.h>
#include <string.h>
#include <dictionary.h>
#include <token.h>
#include <exception>
#include <cstdio>

bool Lexer::isCorrectIndex(size_t index) {
  return index >= 0 && index < this->size;
}

bool Lexer::charIntoString(char c, const char* string) {
  for (int i = 0; i < strlen(string); i++) {
    if (string[i] == c) return true;
  }
  return false;
}

Lexer::Lexer() {}

Lexer::Lexer(std::string str) {
  this->size = str.size();
  this->current = 0;
  this->tokens = new Token[str.size()];
  // (Token*)malloc(sizeof(Token)*str.size())
  this->generateFromLine(str);
}

Lexer::Lexer(size_t size) {
  this->size = size;
  this->current = 0;
  this->tokens = (Token*)calloc(sizeof(Token*), size);
}

Lexer::~Lexer() {
  free(this->tokens);
}

Token* Lexer::next() {
  return &(this->tokens[this->current++]);
}

Token* Lexer::get(size_t offset) {
  return &(this->tokens[this->current+offset]);
}

Token* Lexer::getCurrent() {
  return &this->tokens[this->current-1];
}

void Lexer::move(size_t index) {
  // todo Error listener
  if (!isCorrectIndex(index)) throw "uncorrect index";
  this->current = index;
}

bool Lexer::isEnd() {
  return !(this->current < this->size);
}

void Lexer::append(Token token) {
  // todo Error listener
  if (!isCorrectIndex(this->current)) { 
    throw std::overflow_error("is overflow"); 
  }

  // printf("%i\n", sizeof(this->tokens));
  *(this->tokens+this->current++) = token;
}

void Lexer::forceSize(size_t size) {
  if (size > this->size) throw "its cant be more";
  this->size = size;
}

void Lexer::generateFromLine(std::string str) {
  size_t actualyTokenCount = 0;

  for (int i = 0; i < str.size();i++) {
    char c = str[i];

    if (charIntoString(c, SPACES)) {
      //$ -> skip
    } 
    else if (charIntoString(c, SPECIAL)) {
      // printf("SPECIAL [%c] \n ", c);
      actualyTokenCount++;
      this->doSpecial(&i, str);
    }
    else if (charIntoString(c, NUMBER)) {
      // printf("AFN  [%c] \n ", c);
      actualyTokenCount++;
      this->doNumber(&i, str);
    }
    else if (charIntoString(c, ENGL)) {
      // printf("ENGL [%c] \n ", c);
      actualyTokenCount++;
      this->doEngl(&i, str);
    } 
    else if (charIntoString(c, BRACKETS)) {
      // printf("BRACKETS [%c]\n ", c);
      actualyTokenCount++;
      this->doBrackets(&i, str);
    }
    else if (charIntoString(c, QUOTES)) {
      // printf("QUOTES [%c]\n ", c);
      actualyTokenCount++;
      this->doString(&i, str);
    }
  }

  this->size = actualyTokenCount;
  this->current = 0;
  // //! CHECK
  free(this->tokens+this->size);
}

void Lexer::printTokens() {
  printf("[");
  for (int i = 0; i < this->size; i++) {
    printf("{TYPE: %i; VALUE: '%s'}, ", this->tokens[i].getType(), this->tokens[i].getValue().c_str());
  }
  printf("]\n");
}

size_t Lexer::getSize() {
  return this->size;
}

void Lexer::doString(int* index, std::string str) {
  const char quote = str[(*index)++];
  Token token{TokenType::TK_STRING};

  //? specify type of quotes 
  switch (quote) {
    case '\'': {
      token.setSecondType(STokenType::SINGLE_QUOTES);
    } break;
    case '\"': {
      token.setSecondType(STokenType::DOUBLE_QUOTES);
    } break;
    case '`': {
      token.setSecondType(STokenType::TILTED_QUOTES);
    } break;
    default: break;
  }

  //? alo 📞
  for (int i = *index; i < str.size(); i++) {
    char c = str[i];
    if (!(str[i] != quote && i-1 >= 0 && str[i-1] != '\\')) {
      this->append(token);
      *index = i;
      return;
    } else {
      token.appendValue(c);
    }
  }

  this->append(token);
  *index = str.size()-1;
}

void Lexer::doBrackets(int* index, std::string str) {
  const char bracket = str[*index];
  Token token;

  if (this->charIntoString(bracket, OPEN_BRACKETS)) {
    token = {TokenType::TK_OPEN};
  }
  else if (this->charIntoString(bracket, CLOSE_BRACKETS)) {
    token = {TokenType::TK_CLOSE};
  }

  //? specify type of brackets 
  switch (bracket) {
    case CLOSE_BRACKETS[0]:
    case OPEN_BRACKETS[0]: {
      token.setSecondType(STokenType::FIGURED_BRACKETS);
    } break;
    case CLOSE_BRACKETS[1]:
    case OPEN_BRACKETS[1]: { 
      token.setSecondType(STokenType::SQUARED_BRACKETS);
    } break;
    case CLOSE_BRACKETS[2]:
    case OPEN_BRACKETS[2]: { 
      token.setSecondType(STokenType::ROUNDED_BRACKETS);
    } break;
    case CLOSE_BRACKETS[3]:
    case OPEN_BRACKETS[3]: { 
      token.setSecondType(STokenType::ARROWED_BRACKETS);
    } break;
    default: break;
  }

  // *index++;
  token.appendValue(bracket);

  this->append(token);
}

void Lexer::doEngl(int* index, std::string str) {
  const char chr = str[*index];
  Token token{TokenType::TK_TEXT};

  //? alo 📞
  for (int i = *index; i < str.size(); i++) {
    char c = str[i];

    if (!charIntoString(c, ASSERTED_FOR_NAME)) {
      this->append(token);
      *index = i-1;
      return;
    }

    token.appendValue(c);
  }

  this->append(token);
  *index = str.size()-1;
}

void Lexer::doNumber(int* index, std::string str) {
  const char chr = str[*index];
  Token token{ TokenType::TK_NUMBER };

  // //? alo 📞
  for (int i = *index; i < str.size(); i++) {
    char c = str[i];

    // if (
    //   !token.has(STokenType::FLOAT_NUMBER) &&
    //   !charIntoString(c, ASSERTED_FOR_FLOAT)
    // ) {
    //   token.setSecondType(STokenType::FLOAT_NUMBER);
    // }

    // if (
    //   token.has(STokenType::FLOAT_NUMBER) && 
    //   !charIntoString(c, ASSERTED_FOR_FLOAT)
    // ) {
    //   token.setSecondType(STokenType::SIMPLE_NUMBER);
    //   this->append(token);
    //   *index = i;
    //   return;
    // }
    // else 
    if (c == EOF || !charIntoString(c, ASSERTED_FOR_NUMBERS)) {
      token.setSecondType(STokenType::SIMPLE_NUMBER);
      this->append(token);
      *index = i-1;
      return;
    }

    token.appendValue(c);
  }

  this->append(token);
  *index = str.size()-1;
}

void Lexer::doSpecial(int* index, std::string str) {
  const char chr = str[*index];
  Token token{TokenType::TK_SPECIAL};
  token.appendValue(chr);
  this->append(token);
  // token.printSelf();
}

Token Lexer::simulateCharLikeBracket(char c) {
  Token token;

  if (this->charIntoString(c, OPEN_BRACKETS)) {
    token = {TokenType::TK_OPEN};
  } else 
  if (this->charIntoString(c, CLOSE_BRACKETS)) {
    token = {TokenType::TK_CLOSE};
  }

  //? specify type of brackets 
  switch (c) {
    case CLOSE_BRACKETS[0]:
    case OPEN_BRACKETS[0]: {
      token.setSecondType(STokenType::FIGURED_BRACKETS);
    } break;
    case CLOSE_BRACKETS[1]:
    case OPEN_BRACKETS[1]: { 
      token.setSecondType(STokenType::SQUARED_BRACKETS);
    } break;
    case CLOSE_BRACKETS[2]:
    case OPEN_BRACKETS[2]: { 
      token.setSecondType(STokenType::ROUNDED_BRACKETS);
    } break;
    case CLOSE_BRACKETS[3]:
    case OPEN_BRACKETS[3]: { 
      token.setSecondType(STokenType::ARROWED_BRACKETS);
    } break;
    default: break;
  }

  return token;
}

//@ TOKEN
Token::Token(TokenType type) {
  this->type = type;
  this->value = "";
}

Token::Token() { }

std::string Token::getValue() {
  return this->value;
}

TokenType Token::getType() {
  return this->type;
}

STokenType Token::getSecondType() {
  return this->second_type;
}

void Token::setValue(std::string value) {
  this->value = value;
}

void Token::setType(TokenType value) {
  this->type = value;
}

void Token::setSecondType(STokenType value) {
  this->second_type = value;
}

void Token::appendValue(char* str) {
  this->value.append(str);
}

void Token::appendValue(char c) {
  this->value.push_back(c);
}

bool Token::has(TokenType tt) {
  return (this->type == tt);
}

bool Token::has(STokenType stt) {
  return (this->second_type == stt);
}

bool Token::has(TokenType tt, STokenType stt) {
  return (
    (this->type == tt) &&
    (this->second_type == stt)
    );
}

bool Token::has(std::string value) {
  return (this->value == value);
}

bool Token::equalByFirst(Token *t1, Token *t2) {
  return (t1->getType() == t2->getType());
}

bool Token::equalBySecond(Token *t1, Token *t2) {
  return (t1->getSecondType() == t2->getSecondType());
}

bool Token::equalByFull(Token *t1, Token *t2) {
  return (
    (t1->getType() == t2->getType()) && 
    (t1->getSecondType() == t2->getSecondType())
    );
}

bool Token::equalByFirst(Token *t1, TokenType tt) {
  return (t1->getType() == tt);
}

bool Token::equalBySecond(Token *t1, STokenType stt) {
  return (t1->getSecondType() == stt);
}

bool Token::equalByFull(Token *t1, TokenType tt, STokenType stt) {
  return (
    (t1->getType() == tt) && 
    (t1->getSecondType() == stt)
    );
}

void Token::printSelf() {
  printf("{TYPE: %i, VALUE: '%s'}\n", this->type, this->value.c_str());
}

std::string* pstr(std::string str) {
  void *obj = malloc(sizeof(std::string));
  *(std::string*)obj = str;
  return (std::string*)obj;
}

char** pchars(std::string str) {
  void *obj = malloc(sizeof(char*));
  *(char**)obj = (char*)str.c_str();
  return (char**)obj;
}

int* pint(int str) {
  void *obj = malloc(sizeof(int));
  *(int*)obj = str;
  return (int*)obj;
}

int* pint(std::string str) {
  void *obj = malloc(sizeof(int));
  *(int*)obj = std::stoi(str);
  return (int*)obj;
}
