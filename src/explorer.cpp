#include <explorer.h>

std::string string_format(const std::string fmt, ...) {
  int size = ((int)fmt.size()) * 2 + 50;
  std::string str;
  va_list ap;
  while (1) {
    str.resize(size);
    va_start(ap, fmt);
    int n = vsnprintf((char *)str.data(), size, fmt.c_str(), ap);
    va_end(ap);
    if (n > -1 && n < size) {
      str.resize(n);
      return str;
    }
    if (n > -1) size = n + 1;
    else size *= 2;
  }
  return str;
}


Explorer::Explorer(Lexer *l) {
  this->lexer = l;
  work();
}

void Explorer::rework(Lexer* l) {
  this->lexer = l;
  work();
}

ExploreStatus Explorer::getStatus() {
  return this->status;
}

void Explorer::setStatus(ExploreStatus st) {
  this->status = st;
}

//# works 
void Explorer::work() {
  this->lexer->move(0);
  Token* tk;
  tk = this->lexer->next();

  Doctype dct = work_doctype(this->lexer);
  
  switch (dct) {
    case Doctype::CUBA_OBJECT: {
      this->work_with_cbo();
    } break;
    
    default: break;
  }
}

// todo ALL error 
// todo CALL:
//* cast support 
void Explorer::work_with_cbo() {
  Token* tk; 
  tk = this->lexer->next();
  
  while (!this->lexer->isEnd()) {
    // tk->printSelf();
    switch (tk->getType()) {
      case TokenType::TK_TEXT: {
        if (tk->has("tom")) {
          FN_NODE fnode = {};

          //? name
          TKGEN_TK(TokenType::TK_TEXT, "name");
          fnode.declName = tk->getValue();
          
          //? rettype
          TKGEN_TK("type", "rettype");
          TKGEN_TK(TokenType::TK_TEXT, "rettype");
          fnode.rttype = tk->getValue();
          
          //? args
          //* argc
          TKGEN_TK("argc", "argc");
          TKGEN_TK(TokenType::TK_NUMBER, "argc");
          int argc = std::stoi(tk->getValue());

          FN_ARG_NODE aa = {"", "", false};
          std::vector<FN_ARG_NODE> vv{(size_t)argc, aa};
          fnode.args = vv;

          //* cast
          TKGEN_TK("cast", "cast");
          TKGEN_TK(TokenType::TK_OPEN, "cast");
          for (int k=0; k < argc; k++) {
            TKGEN_TK(TokenType::TK_NUMBER, "cast");
            fnode.args.at(k).isForCast = tk->has("1");
            // TKGEN_TK(",", "cast");
          }
          TKGEN_TK(TokenType::TK_CLOSE, "cast");

          //* arg type
          TKGEN_TK("arg", "arg");

          TKGEN_TK(TokenType::TK_OPEN, "arg");
          for (int k=0; k < argc; k++) {
            TKGEN_TK(TokenType::TK_TEXT, "arg");
            fnode.args.at(k).type = tk->getValue();
            // TKGEN_TK(",", "arg");
          }
          TKGEN_TK(TokenType::TK_CLOSE, "arg");

          //* arg name
          TKGEN_TK("name", "name");
          TKGEN_TK(TokenType::TK_OPEN, "name");
          for (int k=0; k < argc; k++) {
            TKGEN_TK(TokenType::TK_TEXT, "name");
            fnode.args.at(k).declName = tk->getValue();
          }
          TKGEN_TK(TokenType::TK_CLOSE, "name");
          
          //* inner
          TKGEN_BEGINEND(fnode.inner, "inner");

          this->declareFun(fnode.declName, fnode);
          tk = this->lexer->next();
        }

        else if (tk->has("call")) {
          TKGEN_TK(TokenType::TK_TEXT, "name");
          std::string name = tk->getValue();

          bool is_declr = (name == "print");

          if (!this->funs.row.count(name) && (!is_declr)) { 
            BT_ERROR("undefined");
          }
          
          FN_NODE fnode;

          if (!is_declr) {
            fnode = this->funs.row.find(name)->second;
          }

          //* argc
          TKGEN_MT("argc", TokenType::TK_NUMBER, "argc");

          int argc = std::stoi(tk->getValue());

          // ! "argc error"
          if ((!is_declr) && (fnode.args.size() != argc)) { 
            BT_ERROR("argc");
          }

          std::vector<NODE> argv;

          for (int k=0; k < argc; k++) {
            argv.push_back(NODE{});
          }
          
          //* arg
          TKGEN_TK("arg","arg");

          TKGEN_OPEN("arg");
          for (int k=0; k < argc; k++) {
            tk = this->lexer->next();
            argv.at(k).type_name = tk->getValue();
          }
          TKGEN_CLOSE("arg");

          //* val
          TKGEN_TK("val", "val");

          TKGEN_OPEN("val");
          for (int k=0; k < argc; k++) {
            tk = this->lexer->next();
            if (
              (!is_declr) &&
              (fnode.args.at(k).type == "iew") && 
              (!tk->has(TokenType::TK_NUMBER))
            ) {
              throw std::overflow_error("errr: type"); 
            }

            if (is_declr) {
              if (tk->has("lst") && (argv.at(k).type_name == "iew")) {
                argv.at(k).value = st.top().value;
              }
              else if (argv.at(k).type_name == "iew") {
                argv.at(k).value = pint(tk->getValue());
              }
            }
            else if (fnode.args.at(k).type == "iew") {
              argv.at(k).value = pint(tk->getValue());
            } else {
              argv.at(k).value = pstr(tk->getValue());
            }

            // TKGEN_TK(",", ",");
          }
          TKGEN_CLOSE("val");

          if (is_declr) {
            this->workFun(name, argv);
          } else {
            bool is_args_match = TKFN_ARGMATCH(argc, argv, fnode.args);

            if (!is_args_match) {
              BT_ERRORA("argtype error", "arguments not matched");
            }

            std::map<std::string, TVAR> mvar;

            mvar = GEN_MVAR(argc, argv, fnode.args, this->st);
            
            TKGEN_TK("end", "NOT END");

            this->workBody(fnode.inner, mvar);
            
          }

          TKGEN_NEXT();
        }
        
        else {
          TKGEN_NEXT();
        }
      } break;
      
      default: { 
        TKGEN_NEXT();
      } break;  
    }
  }
}

bool Explorer::workFun(std::string name, std::vector<NODE> argv) {
  bool matched = false;

  if (name == "print") {
    matched = true;
    if (GETPT(chars, argv[0].value) == "lst") {
      printlast(st);
    } 
    else if (argv[0].type_name == "iew") {
      printf("%i", GETPT(int, argv[0].value));
    }
  }

  return matched;
}

void Explorer::workBody(
  std::vector<Token*> tks,
  std::map<std::string, TVAR> mvar
) {
  std::string cmd;
  STACKN rett;

  bool openif = false;
  bool skipIF = false;

  std::map<std::string, NODE> local_vars;
  int argcs = 0;
  std::string tempa = "";

  for (Token* tk: tks) {
    if (tk->has("push")) {
      argcs = 0;
      cmd = "push";
    } 
    else if (tk->has("int")) {
      argcs = 0;
      cmd = "int";
    }
    else if (tk->has("pop")) {
      argcs = 0;
      cmd = "pop";
    }
    else if (tk->has("ret")) {
      argcs = 0;
      cmd = "ret";
    }
    else if (tk->has("call")) {
      argcs = 0;
      cmd = "call";
    }
    else if (tk->has("lmv")) {
      argcs = 0;
      cmd = "lmv";
    }
    else if (tk->has("var")) {
      argcs = 0;
      cmd = "var";
    }
    else if (tk->has("mov")) {
      argcs = 0;
      cmd = "mov";
    }
    // ? if
    else if (tk->has("ifl")) { // * if less
      openif = true;
      cmd = "ifl";

      STACKN ap, bp;
      
      ap = getNextStack();
      bp = getNextStack();

      skipIF = !(GETPT(int, ap.value) < GETPT(int, bp.value));
      
      st.push(ap); st.push(bp);
    }
    else if (tk->has("ifeq")) { // * if equal
      openif = true;
      cmd = "ifeq";

      STACKN ap, bp;
      
      ap = getNextStack();
      bp = getNextStack();

      skipIF = !(GETPT(int, ap.value) == GETPT(int, bp.value));
      
      st.push(ap); st.push(bp);
    }
    else if (tk->has("sife")) { // * if strings equal
      openif = true;
      cmd = "sife";

      STACKN ap, bp;
      
      ap = getNextStack();
      bp = getNextStack();

      skipIF = !(GETPT(chars, ap.value) > GETPT(chars, bp.value));
      
      st.push(ap); st.push(bp);
    }
    else if (tk->has("ifm")) { // * if more
      openif = true;
      cmd = "ifm";

      STACKN ap, bp;
      
      ap = getNextStack();
      bp = getNextStack();

      skipIF = !(GETPT(int, ap.value) > GETPT(int, bp.value));
      
      st.push(ap); st.push(bp);
    }
    else if (tk->has("ifne")) { // * if not equal
      openif = true;
      cmd = "ifne";

      STACKN ap, bp;
      
      ap = getNextStack();
      bp = getNextStack();

      skipIF = !(GETPT(int, ap.value) > GETPT(int, bp.value));
      
      st.push(ap); st.push(bp);
    }
    else if (tk->has("sifn")) { // *string if not equal
      openif = true;
      cmd = "sifn";

      STACKN ap, bp;
      
      ap = getNextStack();
      bp = getNextStack();

      skipIF = !(GETPT(chars, ap.value) != GETPT(chars, bp.value));
      
      st.push(ap); st.push(bp);
    }
    else if (tk->has("else")) { // * else
      openif = true;
      cmd = "else";
      skipIF = false;
    }
    else if (tk->has("enif")) { // * end if
      openif = false;
      cmd = "enif";
      skipIF = false;
    }

    else if (tk->has("end")) {
      break;
    }

    
    else if (skipIF) {
      //? alo📞 ...
    }

    else if (cmd == "push") {
      if (tk->has(TokenType::TK_TEXT)) {
        TVAR rv = mvar.find(tk->getValue())->second;
        this->st.push({rv.type, rv.value});
      }
      else if (tk->has(TokenType::TK_NUMBER)) {
        this->st.push({"iew", pint(tk->getValue())});
      }
      else if (tk->has(TokenType::TK_STRING)) {
        this->st.push({"lina", pstr(tk->getValue())});
      }
    }
    
    else if (cmd == "int") {
      if (tk->has("add")) {
        STACKN ap, bp;
        int c;
        
        if (st.empty()) { BT_ERROR("null"); }
        ap = getNextStack();
        
        if (st.empty()) { BT_ERROR("null"); }
        bp = getNextStack();

        c = GETPT(int, ap.value) + GETPT(int, bp.value);
        
        st.push(ap);
        st.push(bp);
        st.push({"iew", pint(c)});
      }
      else if (tk->has("sub")) {
        STACKN ap, bp;
        int c;
        
        if (st.empty()) { BT_ERROR("null"); }
        ap = getNextStack();
        
        if (st.empty()) { BT_ERROR("null"); }
        bp = getNextStack();

        c = GETPT(int, ap.value) - GETPT(int, bp.value);
        
        st.push(ap);
        st.push(bp);
        st.push({"iew", pint(c)});
      }
      else if (tk->has("mult")) {
        STACKN ap, bp;
        int c;
        
        if (st.empty()) { BT_ERROR("null"); }
        ap = getNextStack();
        
        if (st.empty()) { BT_ERROR("null"); }
        bp = getNextStack();

        c = GETPT(int, ap.value) * GETPT(int, bp.value);
        
        st.push(ap);
        st.push(bp);
        st.push({"iew", pint(c)});
      }
      else if (tk->has("div")) {
        STACKN ap, bp;
        int c;
        
        if (st.empty()) { BT_ERROR("null"); }
        ap = getNextStack();
        
        if (st.empty()) { BT_ERROR("null"); }
        bp = getNextStack();

        c = GETPT(int, ap.value) / GETPT(int, bp.value);
        
        st.push(ap);
        st.push(bp);
        st.push({"iew", pint(c)});
      }
    }
    
    else if (cmd == "pop") {
      if (tk->has(TokenType::TK_NUMBER)) {
        int count = std::stoi(tk->getValue());
        for (int m=0; m<count; m++) {
          if (st.empty()) break;
          STACKN last = st.top();
          free(last.value);
          st.pop();
        }
      }
    }
   
    else if (cmd == "ret") {
      if (tk->has(TokenType::TK_TEXT)) {
        //? last in stack
        if (tk->has("lst")) {
          rett = st.top();
        } else {
          if (is_exist(mvar, tk->getValue())) {
            TVAR rv = get_one(mvar, tk->getValue());
            rett = {rv.type, rv.value};
          } else if (is_exist(local_vars, tk->getValue())) {
            NODE rv = get_one(local_vars, tk->getValue());
            rett = {rv.type_name, rv.value};
          }
        }
      } 
      else if (tk->has(TokenType::TK_NUMBER)) {
        rett = {"iew", (pint(tk->getValue()))};
      }
      else if (tk->has(TokenType::TK_STRING)) {
        rett = {"lina", (pstr(tk->getValue()))};
      }
    }

    else if (cmd == "call") {
      if (tk->has(TokenType::TK_TEXT)) {
        std::string name = tk->getValue();
        int argc = getargcount(name);

        std::vector<NODE> bb;
        std::stack<STACKN> lstm;
        for (int m=0; m < argc; m++) {
          NODE nd;
          STACKN aa = getNextStack();
          
          dublmem(val_, aa.value);

          nd.value = &val_;
          nd.type_name = aa.type;

          bb.push_back(nd);
          lstm.push(aa);
        }

        while (!lstm.empty()) {
          st.push(lstm.top());
          lstm.pop();
        }

        if (!this->workFun(name, bb)) {
          if (!this->funs.row.count(name)) {
            BT_ERROR("undefined");
          }

          FN_NODE fnode;

          fnode = this->funs.row.find(name)->second;

          bool is_args_match = TKFN_ARGMATCH(argc, bb, fnode.args);

          if (!is_args_match) {
            BT_ERRORA("argtype error", "arguments not matched");
          }

          std::map<std::string, TVAR> mvar;

          mvar = GEN_MVAR(argc, bb, fnode.args, this->st);
          
          this->workBody(fnode.inner, mvar);
        }
      }
    }

    else if (cmd == "lmv") {
      if (tk->has(TokenType::TK_TEXT)) {
        std::string name = tk->getValue();
        if (is_exist(local_vars, name)) {
          NODE* var = &get_one(local_vars, name);

          dublmem(val_, st.top().value);

          var->value = val_;
          var->type_name = st.top().type;
        }
      }
    }

    else if (cmd == "mov") {
      if (tk->has(TokenType::TK_TEXT)) {
        if (argcs == 0) {
          std::string name = tk->getValue();
          tempa = name;
        }
        else if (argcs == 1) {
          std::string name = tk->getValue();
          if (tempa == "lst" && is_exist(local_vars, name)) {
            NODE* var_b = &get_one(local_vars, name);

            dublmem(val_, st.top().value);

            var_b->value = val_;
            var_b->type_name = st.top().type;
          }
          else if (is_exist(local_vars, tempa) && 
            name == "lst") {
            NODE* var_a = &get_one(local_vars, tempa);

            dublmem(val_, var_a->value);

            st.pop();
            st.push({var_a->type_name, val_});
          }
          else if (is_exist(local_vars, tempa) && 
            is_exist(local_vars, name)) {
            NODE* var_a = &get_one(local_vars, tempa);
            NODE* var_b = &get_one(local_vars, name);
            
            dublmem(val_, var_a->value);

            var_b->value = val_;
            var_b->type_name = var_a->type_name;
          }
          
        }
      }
      argcs++;
    } 

    else if (cmd == "var") {
      if (tk->has(TokenType::TK_TEXT)) {
        if (argcs == 0) {
          std::string name = tk->getValue();
          NODE var = {};
          
          local_vars.insert(
            std::pair<std::string, NODE>(name, var)
          );

          tempa = name;
        }
        else if (argcs == 1) {
          std::string type_ = tk->getValue();
          
          if (is_exist(local_vars, tempa)) {
            NODE* var = &get_one(local_vars, tempa);
            var->value = nullptr;
            var->type_name = type_;
          }
          
        }
      }
      argcs++;
    }
  }
  
  st.push(rett);
}

void Explorer::declareFun(std::string name, FN_NODE fnode) { 
  this->funs.row.insert(
    std::pair<std::string, FN_NODE>(name, fnode)
    );
}

Doctype Explorer::work_doctype(Lexer* lexer) {
  Token* tk;
  tk = lexer->getCurrent();

  Doctype exitt = Doctype::SIMPLE;

  switch (tk->getType()) {
    case TokenType::TK_TEXT: {
      if (tk->has("doctype")) {
        tk = lexer->next();
        if (tk->has("cuba_object")) {
          exitt = Doctype::CUBA_OBJECT;
        }
        // lexer->move(0);
      }
    } break;     
  }
  return exitt;
}

bool TKFN_ARGMATCH(int argc, std::vector<NODE> argv, std::vector<FN_ARG_NODE> args) {
  bool eq = true;
  for (int k=0; k < argc; k++) { 
    if (argv.at(k).type_name != args.at(k).type) {
      eq = false; break;
    }
  }
  return eq;
}

std::map<std::string, TVAR> GEN_MVAR(int argc, std::vector<NODE> argv, std::vector<FN_ARG_NODE> args, std::stack<STACKN> st) {
  std::map<std::string, TVAR> mvar;
  for (int k=0; k < argc; k++) {
    void *vlv;
    if (args.at(k).declName == "lst") {
      vlv = st.top().value;
    } else {
      vlv = argv.at(k).value;
    }

    TVAR tv = {
        (size_t)argc,
        args.at(k).declName,
        vlv,
        args.at(k).type
      };
    mvar.insert( std::pair<std::string, TVAR>(args.at(k).declName, tv) );
  }
  return mvar;
}

