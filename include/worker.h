#ifndef WORKER_H
#define WORKER_H

#include <lexer.h>
#include <iostream>
#include <map>
#include <vector>
#include <string>
// #include <explorer.h>
#include <stack>
#include <cstring>
#include <stdarg.h>


enum ExploreStatus {
  NEXT, WAIT, ERROR, EXIT
};

enum Doctype {
  SIMPLE, CUBA_OBJECT
};

struct STACKN {
  std::string type;
  void* value;
};

//# decl "tom'n"
#define FN_PRINT(str) printf(str)

#include <stack>

struct NODE; 
struct FN_NODE; 
struct FUNS;
struct VARIABLES;
struct TVAR;
struct FN_ARG_NODE;

enum VAR_VIEW_TYPE {
  PRIVATE, PUBLIC
};

struct FUNS {
  std::map<std::string, FN_NODE> row;
};

struct VARIABLES {
  std::map<std::string, NODE*> GLOBAL;
  std::map<std::string, NODE*> LOCAL;
};

struct FN_ARG_NODE {
  std::string declName;
  std::string type;
  bool isForCast;
};

struct FN_NODE {
  std::string declName;
  std::string rttype;
  std::vector<FN_ARG_NODE> args;
  std::vector<Token*> inner;
};

struct TVAR {
  size_t count;
  std::string name;
  void* value;
  std::string type;
};

struct NODE {
  VAR_VIEW_TYPE view_type;
  std::string type_name;
  void* value;
};

#ifndef WORKER_H_DEFS
#define WORKER_H_DEFS

#define CONNECT(a, b) a##b

#define INIT_SWSTR(type_) \
  std::stack<type_> _ntemp_a23235__9;

#define TERM_SWSTR() \
  delete &_ntemp_a23235__9

#define SWITCH_STR(val) \
  _ntemp_a23235__9.push(val);\
  if (false) {}

#define SWEND_STR() \
  _ntemp_a23235__9.pop()

#define SWSTR_CASE(val) \
  else if (_ntemp_a23235__9.top() == val)

#define chars char*

#define ATOS(a) #a

#define BT_ERROR(msg) \
  throw std::overflow_error(\
    string_format("ERROR (%i): '%s'", __LINE__,  msg)\
  )

#define BT_ERRORA(errtype, msg) \
  throw std::overflow_error(\
    string_format("ERROR '%s' (%i): '%s'", errtype, __LINE__,  msg)\
  )

#define TKGEN_OPEN(err) \
  tk = this->lexer->next(); \
  if (!tk->has(TokenType::TK_OPEN)) { \
    tk->printSelf(); \
    BT_ERROR(err); \
  }

#define TKGEN_NEXT() \
  tk = this->lexer->next();

#define TKGEN_CLOSE(err) \
  tk = this->lexer->next(); \
  if (!tk->has(TokenType::TK_CLOSE)) { \
    tk->printSelf(); \
    BT_ERROR(err); \
  }

#define TKGEN_MT(name, type, err) \
  tk = this->lexer->next(); \
  if (!tk->has(name)) { \
    tk->printSelf(); \
    BT_ERROR(err); \
  }\
\
  tk = this->lexer->next();\
  if (!tk->has(type)) { \
    tk->printSelf(); \
    BT_ERROR(err); \
  }

#define TKGEN_BEGINEND(psh, err) \
  tk = this->lexer->next();\
  if (!tk->has("begin")) { \
    tk->printSelf(); \
    BT_ERROR(err); \
  }\
  \
  while (!tk->has("end")) {\
    tk = this->lexer->next();\
    psh.push_back(tk);\
  }

#define TKGEN_TK(str, err) \
  tk = this->lexer->next(); \
  if (!tk->has(str)) { \
    tk->printSelf(); \
    BT_ERROR(err); \
  } \

#define TKGEN_TKA(str, err, is_on) \
  tk = this->lexer->next(); \
  if (is_on && !tk->has(str)) { \
    tk->printSelf(); \
    BT_ERROR(err); \
  } \

#define TKGEN_TKNERR(str) \
  tk = this->lexer->next();


#define getNextStack() st.top(); st.pop()

#define GETPT(type_, val) \
  * ( ( type_ * ) val )

bool TKFN_ARGMATCH(int argc, std::vector<NODE> argv, std::vector<FN_ARG_NODE> args);

std::map<std::string, TVAR> GEN_MVAR(int argc, std::vector<NODE> argv, std::vector<FN_ARG_NODE> args, std::stack<STACKN> st);

enum ARGCOUNT_DECLFN {
  _print = 1,
};

#define getargcount(name) \
  ([](std::string name) {\
    int cnt = -1;\
    if (name == "print") {cnt = getargcount_(print);}\
    return cnt;\
  })(name)

#define getargcount_(name) \
  (int)(CONNECT(ARGCOUNT_DECLFN::_, name))


#define is_exist(map_, key_) \
  map_.count(key_) != 0
  
#define get_one(map_, key_) \
  map_.find(key_)->second

#define CHKC() printf("MARK! at %i line\n", __LINE__);

#define printlast(stack_)\
  if (stack_.empty()) {}\
  else if (stack_.top().type == "iew") {\
    printf("%i", GETPT(int, stack_.top().value));\
  }\
  else if (stack_.top().type == "lina") {\
    printf("%s", GETPT(chars, stack_.top().value));\
  }\
  else if (stack_.top().type == "ba") {\
    printf("%c", GETPT(char, stack_.top().value));\
  }\

#define dublmem(new_, old) \
  void* new_ = malloc(sizeof(old));\
  std::memcpy(new_, old, sizeof(old));\


#endif
#endif