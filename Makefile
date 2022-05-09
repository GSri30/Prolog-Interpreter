evaluate : helper.cmx env.cmx interpreter.cmx parser.cmx lexer.cmx evaluate.cmx
	ocamlfind ocamlopt -linkpkg -package unix -o evaluate helper.cmx env.cmx interpreter.cmx parser.cmx lexer.cmx evaluate.cmx 

helper.cmi: helper.mli
	ocamlopt -c helper.mli

helper.cmx: helper.ml helper.cmi
	ocamlopt -c helper.ml

env.cmi: env.mli helper.cmi
	ocamlopt -c env.mli

env.cmx: env.ml env.cmi helper.cmi
	ocamlopt -c env.ml

interpreter.cmi : interpreter.mli helper.cmi env.cmi
	ocamlopt -c interpreter.mli

interpreter.cmx : interpreter.cmi interpreter.ml helper.cmi env.cmi
	ocamlopt -c interpreter.ml

parser.ml : parser.mly
	ocamlyacc parser.mly

parser.mli : parser.mly
	ocamlyacc parser.mly

lexer.ml : lexer.mll parser.mli
	ocamllex lexer.mll

parser.cmx : parser.cmi parser.ml
	ocamlopt -c parser.ml

parser.cmi : parser.mli
	ocamlopt -c parser.mli

lexer.cmx : parser.cmi lexer.ml
	ocamlopt -c lexer.ml

evaluate.cmx : parser.cmi lexer.cmx interpreter.cmi evaluate.ml
	ocamlopt -c evaluate.ml

clean:
	rm *.cmx *.cmi *.o evaluate lexer.ml parser.ml parser.mli
