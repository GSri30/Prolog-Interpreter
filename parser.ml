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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Interpreter;;
# 28 "parser.ml"
let yytransl_const = [|
    0 (* EOF *);
  260 (* LPAREN *);
  261 (* RPAREN *);
  262 (* LBRACKET *);
  263 (* RBRACKET *);
  264 (* COLON *);
  265 (* RULE_COND *);
  266 (* SUBTRACT *);
  267 (* NOT_EQ *);
  268 (* ADD *);
  269 (* MULT *);
  270 (* EQ *);
  271 (* RTARROW *);
  272 (* COMMA *);
  273 (* DOT *);
  274 (* APOSTROPHE *);
  275 (* SEMICOLON *);
    0|]

let yytransl_block = [|
  257 (* INTEGER *);
  258 (* CONSTANT *);
  259 (* VARIABLE *);
    0|]

let yylhs = "\255\255\
\003\000\002\000\002\000\005\000\005\000\006\000\006\000\004\000\
\004\000\007\000\007\000\008\000\008\000\009\000\009\000\009\000\
\009\000\001\000\000\000\000\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\001\000\002\000\002\000\004\000\001\000\
\003\000\001\000\004\000\001\000\003\000\003\000\001\000\001\000\
\001\000\008\000\002\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\019\000\000\000\002\000\
\020\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\
\000\000\003\000\005\000\000\000\006\000\001\000\000\000\000\000\
\016\000\017\000\015\000\000\000\000\000\000\000\000\000\009\000\
\000\000\000\000\011\000\000\000\007\000\000\000\014\000\013\000\
\000\000\000\000\018\000"

let yydgoto = "\004\000\
\006\000\009\000\013\000\014\000\010\000\011\000\015\000\029\000\
\030\000"

let yysindex = "\016\000\
\252\254\001\000\012\255\000\000\253\254\000\000\016\255\000\000\
\000\000\021\000\012\255\251\254\000\000\005\255\007\255\022\255\
\004\255\000\000\000\000\012\255\000\000\000\000\012\255\008\255\
\000\000\000\000\000\000\004\255\021\255\011\255\013\255\000\000\
\026\255\024\255\000\000\004\255\000\000\014\255\000\000\000\000\
\027\255\018\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\250\254\000\000\
\000\000\000\000\031\000\000\000\000\000\000\000\019\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\028\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\249\255\026\000\000\000\254\255\002\000\
\011\000"

let yytablesize = 259
let yytable = "\012\000\
\008\000\005\000\010\000\020\000\025\000\026\000\027\000\028\000\
\012\000\010\000\010\000\021\000\031\000\007\000\016\000\032\000\
\001\000\002\000\003\000\017\000\018\000\022\000\023\000\024\000\
\033\000\035\000\036\000\038\000\039\000\037\000\004\000\041\000\
\012\000\042\000\043\000\008\000\019\000\040\000\034\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\007\000"

let yycheck = "\002\000\
\000\000\006\001\009\001\009\001\001\001\002\001\003\001\004\001\
\011\000\016\001\017\001\017\001\020\000\002\001\018\001\023\000\
\001\000\002\000\003\000\004\001\000\000\017\001\016\001\002\001\
\017\001\005\001\016\001\002\001\005\001\017\001\000\000\018\001\
\005\001\007\001\017\001\017\001\011\000\036\000\028\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001"

let yynames_const = "\
  EOF\000\
  LPAREN\000\
  RPAREN\000\
  LBRACKET\000\
  RBRACKET\000\
  COLON\000\
  RULE_COND\000\
  SUBTRACT\000\
  NOT_EQ\000\
  ADD\000\
  MULT\000\
  EQ\000\
  RTARROW\000\
  COMMA\000\
  DOT\000\
  APOSTROPHE\000\
  SEMICOLON\000\
  "

let yynames_block = "\
  INTEGER\000\
  CONSTANT\000\
  VARIABLE\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause_list) in
    Obj.repr(
# 20 "parser.mly"
                  (Query(_1))
# 201 "parser.ml"
               : Helper.query))
; (fun __caml_parser_env ->
    Obj.repr(
# 23 "parser.mly"
      ([])
# 207 "parser.ml"
               : Helper.database))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate_list) in
    Obj.repr(
# 24 "parser.mly"
                        (_1)
# 214 "parser.ml"
               : Helper.database))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 27 "parser.mly"
              ([_1])
# 221 "parser.ml"
               : 'predicate_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'predicate_list) in
    Obj.repr(
# 28 "parser.mly"
                              ((_1)::_2)
# 229 "parser.ml"
               : 'predicate_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause) in
    Obj.repr(
# 31 "parser.mly"
                (Fact(Head(_1)))
# 236 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'clause) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'clause_list) in
    Obj.repr(
# 32 "parser.mly"
                                        (Rule(Head(_1),Body(_3)))
# 244 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'clause) in
    Obj.repr(
# 35 "parser.mly"
             ([_1])
# 251 "parser.ml"
               : 'clause_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'clause) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'clause_list) in
    Obj.repr(
# 36 "parser.mly"
                              (_1::_3)
# 259 "parser.ml"
               : 'clause_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 39 "parser.mly"
                (Clause(_1, []))
# 266 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'term_list) in
    Obj.repr(
# 40 "parser.mly"
                                     (Clause(_1, _3))
# 274 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 43 "parser.mly"
           ([_1])
# 281 "parser.ml"
               : 'term_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term_list) in
    Obj.repr(
# 44 "parser.mly"
                          (_1::_3)
# 289 "parser.ml"
               : 'term_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 47 "parser.mly"
                     (_2)
# 296 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
             (Variable(_1))
# 303 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 49 "parser.mly"
            (Number(_1))
# 310 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 50 "parser.mly"
             (Constant(_1, []))
# 317 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 3 : string) in
    Obj.repr(
# 54 "parser.mly"
                                                                                            ( _3 ^ "." ^ _5 )
# 325 "parser.ml"
               : string))
(* Entry filename *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry database *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry query *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let filename (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : string)
let database (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : Helper.database)
let query (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 3 lexfun lexbuf : Helper.query)
;;
