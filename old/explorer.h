#ifndef EXPLORER_H
#define EXPLORER_H

#include <lexer.h>
#include <iostream>
#include <map>

//# [31] declared kws
#define KW_FN          "tom"     // tominto
#define KW_INT         "iew"     // wentiiew
#define KW_FLOAT       "rat"     // ratcsio
#define KW_DOUBLE      "duab"    // duab
#define KW_BOOLEAN     "non"     // non
#define KW_CHAR        "ba"      // ba
#define KW_STRING      "lina"    // lina
#define KW_CONST       "lete"    // lete
#define KW_WHILE       "poka"    // poka
#define KW_FOR         "fo"      // fo
#define KW_BREAK       "krah"    // krah
#define KW_IF          "iiow"    // iiow
#define KW_ELSE        "edie"    // edie
#define KW_VOID        "umo"     // umo
#define KW_RETURN      "req"     // req
#define KW_DO          "de"      // de
#define KW_LET         "late"    // late
#define KW_CONTINUE    "dav"     // davaii
#define KW_STRUCT      "xat"     // xat
#define KW_STATIC      "festo"   // festo
#define KW_SWITCH      "tubl"    // tubl
#define KW_CASE        "botch"   // botch
#define KW_OPERATOR    "op"      // operant
#define KW_CONVERTER   "convo"   // convo
#define KW_END         "end"     // end
#define KW_RETANDEND   "rnd"     // req & end
#define KW_NULL        "nin"     // nin
#define KW_CAST        "cast"    // cast
#define KW_PRIVATE     "pruvo"   // pruvo
#define KW_PUBLIC      "olud"    // olud
#define KW_THIS        "self"    // self

//# decl "tom'n"
#define FN_PRINT(str) printf(str)

#include <stack>

#include <worker.h>


class Explorer {
private:
  Lexer* lexer;
  ExploreStatus status;
  FUNS funs;
  std::stack<STACKN> st;

  void work_with_cbo();

  void  declareFun(std::string name, FN_NODE fnode);
  void workBody(std::vector<Token*> tks, std::map<std::string, TVAR> mvar);
  Doctype work_doctype(Lexer* lexer);
  bool workFun(std::string name, std::vector<NODE> argv); 

public:
  Explorer(Lexer* l);
  void rework(Lexer* l);
  
  void work();

  ExploreStatus getStatus();
  void setStatus(ExploreStatus st);
};

// todo
class BinaryBoolean {
private:
  const size_t bufferSize = 24;
  int buffer = 0;
  BinaryBoolean* next;
public:
  BinaryBoolean();

  size_t addNewBool(bool val);
  bool getBool(size_t index);
  void setBool(bool val);
};

#endif