#ifndef DICTIONARY_H
#define DICTIONARY_H

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
#define SPECIAL "!@#$%^&*?/\\|,;:.~+=-"

//# quotes
#define QUOTES "\"'`"

//# brackets
//? 1 - figure | 2 - squared | 3 - rounded | 4 - arrowed 
#define OPEN_BRACKETS "{[(<"
#define CLOSE_BRACKETS "}])>"
#define BRACKETS OPEN_BRACKETS CLOSE_BRACKETS


//# spaces
#define SPACES "\r\n\t " // \f\v

#endif