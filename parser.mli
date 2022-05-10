type token =
  | INTEGER of (int)
  | CONSTANT of (string)
  | VARIABLE of (string)
  | EOF
  | LPAREN
  | RPAREN
  | LBRACKET
  | RBRACKET
  | COLON
  | RULE_COND
  | SUBTRACT
  | NOT_EQ
  | ADD
  | MULT
  | EQ
  | RTARROW
  | COMMA
  | DOT
  | APOSTROPHE
  | SEMICOLON

val filename :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string
val database :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Helper.database
val query :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Helper.query
