#include <cuba.h>


inline char* char_to_chars(char c) {
  char* chars;
  chars[0] = c;
  return chars;
}

inline std::string* char_to_str(char c) {
  std::string str;
  str += c;
  return &str;
}

bool is_exists(const char* str, char c) {
  return (strchr(str, c) != NULL);
}

inline void append_token_lexer(CB_Lexer *lexer, CB_Token *token) {
  append_token(lexer->tokens, token);
}


CB_Lexer *init_lexer() {
  CB_Lexer lexer = {NULL, 0, NULL};
  return &lexer;
}

inline void m_multi_lexer(CB_Kind* k, CB_Token* t, char c) {
  if (t == NULL) {
    if (is_exists(WORD_ASSERT_START_CHAR, c)) {
      *k = CB_Kind::OP_WORD;
    }
  } else {
    if (is_exists(WORD_ASSERT_BEFORE_CHAR, c)) {
      *k = CB_Kind::OP_WORD;
    } 
  }
}

inline void m_single_lexer(CB_Kind* k, CB_Token* t, char c) {
  if (is_exists(TK_OPERATORS, c)) {
    *k = CB_Kind::OP_OPERATOR;
  } else if (is_exists(NUMBER_ASSER_CHAR, c)) {
    *k = CB_Kind::OP_NUMBER;
  }
}

inline void m_push_last_token(CB_Lexer* l, CB_Token* t) {
  append_token_lexer(l, t);
  t = NULL;
}

inline void m_analize_token(CB_Kind k, CB_Token* t, CB_TOKEN_VALUE* value, char c) {
 switch (k) {
    case CB_Kind::OP_WORD:
    case CB_Kind::OP_NUMBER:
    case CB_Kind::OP_OPERATOR: {
      if (t == NULL) {
        value->string_value = char_to_str(c);
        t = create_token(k, CB_TOKEN_VALUE_TYPE::STRING_VALUE, value, NULL);
      } else {
        t->value->string_value += c;
      }
    } break;
    
    default:
      break;
  }
}

void tokenize(CB_Lexer* lexer, const char* text) {
  size_t position = 0;
  size_t text_len = string_size(text);

  char c;

  CB_Token* local_token = NULL;
  CB_TOKEN_VALUE* token_value = NULL;
  CB_Kind knd;

  for (int i = 0; i < text_len; i++) {
    c = text[i];

    if (c == '\"') {
      m_push_last_token(lexer, local_token);

      knd = CB_Kind::OP_STRING;
      token_value->string_value = char_to_str(c);
      local_token = create_token(knd, CB_TOKEN_VALUE_TYPE::STRING_VALUE, token_value, NULL);

      for (; i < text_len; i++) {
        c = text[i];
        if (c == '\\' && text[i+1] == '\"') {
          local_token->value->string_value += c + text[i+1]; 
          i+=2;
        } if (c == '\\' && text[i+1] == 'n') {
          local_token->value->string_value += '\n'; 
          i+=2;
        } if (c == '\\' && text[i+1] == 't') {
          local_token->value->string_value += '\n'; 
          i+=2;
        } else if (c == '\"') {
          m_push_last_token(lexer, local_token);
          break;
        }
        local_token->value->string_value += c;
      }
    }

    m_multi_lexer(&knd, local_token, c);
    m_single_lexer(&knd, local_token, c);
    if (knd != local_token->kind) {
      m_push_last_token(lexer, local_token);
    } 
    m_analize_token(knd, local_token, token_value, c);
  }
}
