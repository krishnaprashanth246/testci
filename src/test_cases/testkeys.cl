(*keywords*)
--1,2,3 columns are correct keywords, 4th is recognized as identifers
CLASS		class 		ClAsS 		classs1
ELSE		else 		eLsE 		Else_e
FI			fi 			fI 			f_ii3
IF			if 			If 			I_ff
IN 			in 			iN 			inn
INHERITS	inherits 	inHERiTs 	Inhherits9
LET			let 		lET 		ll_et
LOOP		loop 		lOOp 		Looop_5
POOL		pool 		PooL 		Poll
THEN		then 		TheN 		th_hen
WHILE		while 		whIlE 		Whiile6
CASE		case 		CaSe 		casee8
ESAC		esac 		eSaC 		Essac
OF			of 			oF 			Off1
NEW			new 		neW 		nn_ew
ISVOID		isvoid 		isVoiD 		IsVooid10
NOT			not 		nOt 		noO_tt

--bool constants should start with lowercase letters, else it is considered a TYPEID
true	tRUE 	True
false	fALSE 	False

(*special symbols*)

( )
:
@
,
+
-
*
/
~
<
=
<=
.
{ }
<-
=>
;

"
--considered as unterminated string constant

(*invalid characters*)

\ | ` ! # $ % ^ & [ ] ' ?

90.999 	--floating point numbers connot be directly represented, tokenized separately
>	-- greater than symbol is error
>= 	-- equal symbol is tokenized
=< 	-- pattern is wrong but tokenized separately
​	-- zero length space character \342 is not recognized
😉️	-- emojis unrecognized