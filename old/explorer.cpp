#include <explorer.h>
#include <cerror.h>
#include <bitset>

#include <utils.hpp>

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
  std::string entry;
  
  while (!this->lexer->isEnd()) {
    switch (tk->getType()) {
      case TokenType::TK_TEXT: {
        if (tk->has("tom")) {
          
          FN_NODE fnode = {};

          bool is_type = false;
          bool is_argc = false;
          bool is_cast = false;
          bool is_arg  = false;
          bool is_name = false;

          //? name
          TKGEN_TK(TokenType::TK_TEXT, "name");
          fnode.declName = tk->getValue();
          
          while (!tk->has("begin") && lexer->isEnd()) {
            tk = this->lexer->next();
            if (tk->has("type")) {
              //? rettype
              TKGEN_TK(TokenType::TK_TEXT, "rettype");
              fnode.rttype = tk->getValue();
              is_type = true;
            }
            //? args
            if (tk->has("argc")) {
            //* argc
              TKGEN_TK(TokenType::TK_NUMBER, "argc");
              int argc = std::stoi(tk->getValue());

              FN_ARG_NODE aa = {"", "", false};
              std::vector<FN_ARG_NODE> vv{(size_t)argc, aa};
              fnode.args = vv;
              is_argc = true;
            }
            else if (tk->has("cast")) {
              //* cast
              TKGEN_TK(TokenType::TK_OPEN, "cast"); int k = 0;
              while (!tk->has(TokenType::TK_CLOSE)) {
                tk = this->lexer->next();
                if (tk->has(TokenType::TK_CLOSE)) { break; }
                fnode.args.at(k++).isForCast = tk->has("1");
                tk = this->lexer->next();
              }
              is_cast = true;
            }
            else if (tk->has("arg")) {
              //* arg type
              TKGEN_TK(TokenType::TK_OPEN, "arg"); int k = 0;
              while (!tk->has(TokenType::TK_CLOSE)) {
                tk = this->lexer->next();
                if (tk->has(TokenType::TK_CLOSE)) { break; }
                fnode.args.at(k).type = tk->getValue();
                tk = this->lexer->next();
              }
              is_arg = true;
            }
            else if (tk->has("name")) {
              //* arg name
              TKGEN_TK(TokenType::TK_OPEN, "name"); int k = 0;
              while (!tk->has(TokenType::TK_CLOSE)) {
                tk = this->lexer->next();
                if (tk->has(TokenType::TK_CLOSE)) { break; }
                fnode.args.at(k).declName = tk->getValue();
                tk = this->lexer->next();
              }
              is_name = true;
            }
          }

          if (!is_type) {
            fnode.rttype = "void";
            std::vector<FN_ARG_NODE> vv{};
            fnode.args = vv;
            TKGEN_NEXT();
          }
          else if (!(is_arg && is_name)) {
            BT_ERROR("undefined 'arg | name | cast'");
          }

          //* inner
          if (!tk->has("begin")) {
            tk->printSelf();
            BT_ERROR("inner");
          }
          
          while (!tk->has("end")) {
            tk = this->lexer->next();
            fnode.inner.push_back(tk);
          }

          this->declareFun(fnode.declName, fnode);
          tk = this->lexer->next();
        }        
        else if (tk->has("entry")) {
          TKGEN_TK(TokenType::TK_TEXT, "entry");
          entry = tk->getValue();
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

  if (!is_exist(this->funs.row, entry)) {
    BT_ERROR("undefined entry(tom) name");
  }

  FN_NODE fn = get_one(this->funs.row, entry);
  this->workBody(fn.inner, {});
}

bool Explorer::workFun(std::string name, std::vector<NODE> argv) {
  bool matched = false;
  if (name == "print") {
    matched = true;
    if (st.empty()) {}
    else if (st.top().type == "iew") {
      printf("%i", GETPT(int, st.top().value));
    }
    else if (st.top().type == "lina") {
      printf("%s", GETPT(chars, st.top().value));
    }
    else if (st.top().type == "ba") {
      printf("%c", GETPT(char, st.top().value));
    }
  }
  else if (name == "gets") {
    matched = true;
    chars type = GETPT(chars, st.top().value);
    
    if (st.empty()) {}
    else if (type == "iew") {
      int value;
      scanf("%i", &value);
      STACKN st;
      st.type = type;
      st.value = pint(value);
    }
    else if (type == "lina") {
      chars value;
      scanf("%s", &value);
      STACKN st;
      st.type = type;
      st.value = pchars(value);
    }
    else if (type == "ba") {
      char value;
      scanf("%c", &value);
      STACKN st;
      st.type = type;
      st.value = pchar(value);
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

#pragma region cmd
    if (tk->has("push")) {
      argcs = 0;
      cmd = "push";
    } 
    else if (tk->has("cast")) {
      argcs = 0;
      cmd = "cast";
    } 
    else if (tk->has("int")) {
      argcs = 0;
      cmd = "int";
    }
    else if (tk->has("str")) {
      argcs = 0;
      cmd = "str";
    }
    else if (tk->has("bit")) {
      argcs = 0;
      cmd = "bit";
    }
    else if (tk->has("pop")) {
      argcs = 0;
      cmd = "pop";
    }
    else if (tk->has("upop")) {
      argcs = 0;
      cmd = "upop";
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

#pragma endregion cmd
    
    else if (skipIF) {
      //? alo📞 ...
    }

    else if (cmd == "push") {
      if (tk->has(TokenType::TK_TEXT)) {
        if (!is_exist(mvar, tk->getValue())) {
          cbocallErrW("undefined name '%s'", tk->getValue().c_str());
        }
        TVAR rv = mvar.find(tk->getValue())->second;
        this->st.push({rv.type, rv.value});
      }
      else if (tk->has(TokenType::TK_NUMBER)) {
        this->st.push({"iew", pint(tk->getValue())});
      }
      else if (tk->has(TokenType::TK_STRING)) {
        this->st.push({"lina", pchars(tk->getValue())});
      }
    }

    else if (cmd == "cast") {
      if (!st.empty()) {
        STACKN content_, type_, newOut;
      
        if (st.empty()) { BT_ERROR("null"); }
        type_ = getNextStack();
        
        if (st.empty()) { BT_ERROR("null"); }
        content_ = getNextStack();

        chars type = GETPT(chars, type_.value);
        newOut.type = type;
        
        if (content_.type == "iew") {
          
        }
        else if (content_.type == "lina") {
          
        }
        else if (content_.type == "ba") {
          
        }


        st.push(content_); st.push(type_); st.push(newOut);
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
    
    else if (cmd == "str") {
      // len
      if (tk->has("len")) {
        STACKN text;
        if (st.empty()) { cbocallErr("stack error 'is empty'"); }
        text = getNextStack();
        STACKN newOut;
        newOut.type = "iew";
        newOut.value = pint(strlen(GETPT(chars, text.value)));
        st.push(text); st.push(newOut);
      }
    }

    else if (cmd == "bit") {
      // len
      if (tk->has("left")) {
        STACKN content, count;
        if (st.empty()) { cbocallErr("stack error 'is empty'"); }
        count = getNextStack();
        if (st.empty()) { cbocallErr("stack error 'is empty'"); }
        content = getNextStack();
        STACKN newOut;
        newOut.type = content.type;
        std::string newStr;

        chars str = GETPT(chars, content.value);
        int shift = GETPT(int, count.value);

        newStr.append(str);
        newStr += std::string(shift, (char)0);
        newOut.value = pchars(newStr.c_str());

        st.push(content); st.push(count); st.push(newOut);
      }
      else if (tk->has("smsh")) {
        STACKN right, left;
        if (st.empty()) { cbocallErr("stack error 'is empty'"); }
        left = getNextStack();
        if (st.empty()) { cbocallErr("stack error 'is empty'"); }
        right = getNextStack();
        STACKN newOut;
        newOut.type = left.type;
        std::string newStr;

        chars str1 = GETPT(chars, left.value);
        chars str2 = GETPT(chars, right.value);

        newStr.append(str1);
        newStr.append(str2);
      
        newOut.value = pchars(newStr.c_str());
        st.push(right); st.push(left); st.push(newOut);
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

    else if (cmd == "upop") {
      if (tk->has(TokenType::TK_NUMBER)) {
        int count = std::stoi(tk->getValue());
        if (st.empty()) {  } //: empty
        STACKN lst_ = getNextStack(); 
        for (int m=0; m<count; m++) {
          if (st.empty()) break;
          STACKN last = st.top();
          free(last.value);
          st.pop();
        }
        st.push(lst_);
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

