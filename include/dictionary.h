#ifndef DICTIONARY_H
#define DICTIONARY_H

#define __USE_TURTLE_KW

//# number 
#define NUMBER "1234567890"

//# asserted for number: float | double | int | ~~~ 
#define ASSERTED_FOR_FLOAT NUMBER "._"
#define ASSERTED_FOR_NUMBERS NUMBER "_"
#define ASSERTED_FOR_START_NUMBERS NUMBER "-+"

//# engl 
#define ENGL_L "abcdefghijklmnopqrstuvwxyz"
#define ENGL_U "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#define ENGL ENGL_U ENGL_L

//# asserded for naming variable or types 
#define ASSERTED_FOR_NAME ENGL "_" NUMBER

//# special symbols 
#define SPECIAL "!@#$%^&*?/\\|,;:.~+=-`"

//# quotes
#define QUOTES "\"'"

//# brackets
//? 1 - figure | 2 - squared | 3 - rounded | 4 - arrowed 
#define OPEN_BRACKETS "{[(<"
#define CLOSE_BRACKETS "}])>"
#define BRACKETS OPEN_BRACKETS CLOSE_BRACKETS


//# spaces
#define SPACES "\r\n\t\f\v\a\b " // 


#if defined(__USE_TURTLE_KW)

//# [~~] declared kws
#define KW_FN          "tom"     // tominto
#define KW_INT         "iew"     // wentiiew
#define KW_FLOAT       "rat"     // ratcsio
#define KW_DOUBLE      "duab"    // duab
#define KW_BOOLEAN     "non"     // non
#define KW_CHAR        "ba"      // ba
#define KW_STRING      "lina"    // lina
#define KW_CONST       "lete"    // lete
#define KW_IFTOUCHED   "iiod"    // iiod
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
#define KW_USE         "yas"     // yas
#define KW_ENTRY       "entry"   // entry

#elif defined(__USE_ENGL_KW)

//# [~~] declared kws
#define KW_FN          "fun"     
#define KW_INT         "int"     
#define KW_FLOAT       "float"   
#define KW_DOUBLE      "double"    
#define KW_BOOLEAN     "boolean"     
#define KW_CHAR        "char"
#define KW_STRING      "string"    
#define KW_CONST       "const"    
#define KW_WHILE       "while"    
#define KW_FOR         "for"      
#define KW_BREAK       "break"    
#define KW_IF          "if"    
#define KW_IFTOUCHED   "finally"    
#define KW_ELSE        "else"    
#define KW_VOID        "void"     
#define KW_RETURN      "return"     
#define KW_DO          "dp"      
#define KW_LET         "let"    
#define KW_CONTINUE    "continue"     
#define KW_STRUCT      "struct"     
#define KW_STATIC      "static"   
#define KW_SWITCH      "switch"    
#define KW_CASE        "case"   
#define KW_OPERATOR    "operator"      
#define KW_CONVERTER   "converter"   
#define KW_END         "end"     
#define KW_RETANDEND   "retend"     
#define KW_NULL        "null"     
#define KW_CAST        "cast"    
#define KW_PRIVATE     "private"   
#define KW_PUBLIC      "public"    
#define KW_THIS        "self"    
#define KW_USE         "use"     
#define KW_ENTRY       "entry"   

#endif

#endif