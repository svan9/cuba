#include <cuba.h>

struct Cuba_Status {
  CODE_STATUS* status;
  CB_Lexer* lexer;
  char* text;
  size_t pos;
};

void set_code_status(Cuba_Status* cbs, CODE_STATUS status) {
  cbs->status = &status;
}

Cuba_Status* create_cbs() {
  Cuba_Status* cbs;
  CODE_STATUS* cst;
  cbs->status = cst;
  cbs->pos    = 0;
  return cbs;
}

enum CODE_STATUS {
  OK, ERROR,
  START, LEXERPART
};

void pmain(Cuba_Status* cbs) {
  CB_Lexer* lexer;

  set_code_status(cbs, CODE_STATUS::LEXERPART);
  cbs->lexer = init_lexer();
  tokenize(cbs->lexer, "ss");
}

int main(int argc, char** argv) { 
  Cuba_Status* cbs = create_cbs();
  pmain(cbs);
}