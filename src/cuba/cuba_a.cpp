#include <cuba/cuba_a.h>
#include <lexer.h>
#include <cerror.h>



// extern "C" {
void cuba_a(Lexer* lexer) {
  CUBA_STATUS cs;
  cs.lex = lexer;
  cs.pos = 0;

  //# generate pre code
  while (!cs.lex->isEnd()) {
    ELEMENT(&cs);
  }

  //# generate global block
  // allocate block
  AnyAllocInit(BLOCK_t, globalBlock);

  // root element of block
  globalBlock->init_self = false;

  // works as long as there are elements
  while (cs.pos < cs.code.size()) {
    // get next token
    ELEMENT_t e = cs.code.at(cs.pos);
    
    // break if is end
    Exit_EndOfBlock(e);

    // append line into block
    globalBlock->lines.push_back(LINE(&cs));
  }

  //# explore structures
  for (LINE_t line: globalBlock->lines) {
    attractKW(&line, &cs);
  }
}

void attractKW(LINE_t* line, CUBA_STATUS* cs) {
  FLAG_ROW_t markers = {};
  size_t cursor;
  while (cursor < line->elements.size()) {
    ELEMENT_t e = line->elements.at(cursor++);

    switch(e.type) {
      case EL_FLAGROW: {
        markers = GETPT(FLAG_ROW_t, e.value);
      } break;

      case EL_TOKEN: {
        Token* tk = GETPT(Token*, e.value);
        // append struct
        if (tk->has(KW_STRUCT)) {
          e = line->elements.at(cursor++);

          tk = GETPT(Token*, e.value);

          XAT_t xat;
          xat.markers = markers;
          xat.name = tk->getValue();
          
          e = line->elements.at(cursor++);
          BLOCK_t* b_inner = GETPT(BLOCK_t*, e.value);
          observeStructInside(b_inner, &xat);

          cs->structs[xat.name] = xat;
        }
        
      } break;
      
      default: break;
    }
    
  }
}

void observeStructInside(BLOCK_t* block, XAT_t* xat) {
  std::string buffer;
  
  for (LINE_t line: block->lines) {
    size_t cursor = 0;
    ELEMENT_t e = line.elements.at(cursor++);
    if (e.type == EL_TOKEN) {
      Token* tk = GETPT(Token*, e.value);

      // observe empty
      if (tk->has(TK_STRING)) { continue; }

      // observe root
      if (tk->has(KW_THIS)) {
        e = line.elements.at(cursor++);
        tk = GETPT(Token*, e.value);
        if (tk->has("~")) {
          e = line.elements.at(cursor++);
          tk = GETPT(Token*, e.value);

          buffer = tk->getValue();
          xat->hasroot.push_back(buffer);
          continue;
        }
      }

      VARIABLE_t var;
      var.temp_type = tk->getValue();

      e = line.elements.at(cursor++);
      tk = GETPT(Token*, e.value);

      var.name = tk->getValue(); 

      xat->children.push_back(var);
    }
  }
}


// works out 'element'
// generate cs elements document 
void ELEMENT(CUBA_STATUS* cs) {
  ELEMENT_t element;

  Token* tk = cs->lex->next();
  
  element.type  = EL_TOKEN;
  element.index = -1;
  element.value = (void*)tk;

  PUSHCS(cs, element);
}

// works out 'line'
LINE_t LINE(CUBA_STATUS* cs) {
  // allocate line
  LINE_t line;

  // works as long as there are elements
  while (CSEOF(cs)) {
    // get next token
    ELEMENT_t e = CSGetNext(cs);

    // break if is end
    Exit_EndOfLine(e);

    // care 'block'
    if (IS_BLOCK(e)) {
      e = BLOCK(cs);
    }

    if (IS_FLAG_ROW(e)) {
      e = FLAG_ROW(cs);
    }
    
    if (IS_GENERIC(e)) {
      e = GENERIC(cs);
    }

    if (IS_ARRAY(e)) {
      e = ARRAY(cs);
    }
    
    // append current element into line
    line.elements.push_back(e);
  }

  return line;
}

// works out 'block'
ELEMENT_t BLOCK(CUBA_STATUS* cs) {
  
  // allocate block
  AnyAllocInit(BLOCK_t, block);

  // root element of block
  block->init_self = false;

  // works as long as there are elements
  while (CSEOF(cs)) {
    // get next token
    ELEMENT_t e = CSGetNextN(cs);
    
    // break if is end
    Exit_EndOfBlock(e);

    // append line into block
    block->lines.push_back(LINE(cs));
  }

  // generate exit message
  GenExit_Ret(EL_BLOCK, block);
}

// works out 'flag_row'
ELEMENT_t FLAG_ROW(CUBA_STATUS* cs) {
  // allocate flag_row
  AnyAllocInit(FLAG_ROW_t, flag_row);

  MARKER_t marker;

  // works as long as there are elements
  while (CSEOF(cs)) {
    // get next token
    ELEMENT_t e = CSGetNext(cs);
    
    // break if is end
    Exit_EndOfFlagRow(e);

    if (IS_MARKER(cs, e)) {
      marker = MARKER(cs);
    }

    // append line into block
    flag_row->markers.push_back(marker);
  }

  // generate exit message
  GenExit_Ret(EL_FLAGROW, flag_row);
}

// works out 'marker'
// TODO:
//* needs - generic
MARKER_t MARKER(CUBA_STATUS* cs) {
  MARKER_t marker;

  // works as long as there are elements
  while (CSEOF(cs)) {
    // get next token
    ELEMENT_t e = CSGetNext(cs);
    Exit_EndOfMarker(e);


    if (TKV(e)->has("joke")) {
      marker.used = M_STATIC;
      marker.static_marker = JOKE;
    }
    else if (TKV(e)->has("gen")) {
      marker.used = M_STATIC;
      marker.static_marker = GEN;
    }
    else if (TKV(e)->has("flag_support")) {
      marker.used = M_STATIC;
      marker.static_marker = FLAG_SUPPORT;
    }
    else if (TKV(e)->has("bii")) {
      marker.used = M_STATIC;
      marker.static_marker = BII;
    }
    else if (TKV(e)->has("festo")) {
      marker.used = M_STATIC;
      marker.static_marker = FESTO;
    }
    else if (TKV(e)->has("pruvo")) {
      marker.used = M_STATIC;
      marker.static_marker = PRUVO;
    }
    else if (TKV(e)->has("olud")) {
      marker.used = M_STATIC;
      marker.static_marker = OLUD;
    } else {
      marker.used = M_CUSTOM;
      marker.custom_marker = {(TKV(e)->getValue().c_str())};
    }


    // TODO 
    // if (IS_GENERIC(e)) {
    //   marker.arguments = GENERIC(cs);
    // }

    // Exit_EndOfMarker

  }

  return marker;
}

// works out 'generic' 
ELEMENT_t GENERIC(CUBA_STATUS* cs) {
  AnyAllocInit(GENERIC_t, generic);

  // works as long as there are elements
  while (CSEOF(cs)) {
    // get next token
    ELEMENT_t e = CSGetNextN(cs);
    Exit_EndOfGeneric(e);
    SKIPIF(cs, IsComma(e));

    generic->elements.push_back(e);
  }

  GenExit_Ret(EL_GENERIC, generic);
}

// works out 'array' 
ELEMENT_t ARRAY(CUBA_STATUS* cs) {
  AnyAllocInit(ARRAY_t, array);

  // works as long as there are elements
  while (CSEOF(cs)) {
    // get next token
    ELEMENT_t e = CSGetNextN(cs);
    Exit_EndOfArray(e);

    array->children.push_back(TYPE_EXPRESSION(cs));
  }

  GenExit_Ret(EL_ARRAY, array);
}

// works out 'type_expression' 
TYPE_EXPRESSION_t TYPE_EXPRESSION(CUBA_STATUS* cs) {
  // allocate expression
  TYPE_EXPRESSION_t expression;

  // works as long as there are elements
  while (CSEOF(cs)) {
    // get next token
    ELEMENT_t e = CSGetNext(cs);
    Exit_EndOfTypeExpression(e);

    expression.type = TKV(e)->getValue().c_str();
    
    ELEMENT_t e = CSGetNext(cs);
    expression.name = TKV(e)->getValue().c_str();
  }

  return expression;
}
