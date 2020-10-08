(*
class Main {
	main():IO {
		new IO.out_string("Hello world!\n")
	};*)
};	--tokenize these two
(* This is a comment 1 *)
--This is a single line comment 2
*)	--unmatched
(* This is a 
	(*
		nested comment 3
	*)
*)
--This is a single line comment that contains EOF 4 which is ok