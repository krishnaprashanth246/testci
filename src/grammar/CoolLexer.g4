lexer grammar CoolLexer;

tokens{
	ERROR,
	TYPEID,
	OBJECTID,
	BOOL_CONST,
	INT_CONST,
	STR_CONST,
	LPAREN,
	RPAREN,
	COLOGNE,
	ATSYM,
	SEMICOLON,
	COMMA,
	PLUS,
	MINUS,
	STAR,
	SLASH,
	TILDE,
	LT,
	EQUALS,
	LBRACE,
	RBRACE,
	DOT,
	DARROW,
	LE,
	ASSIGN,
	CLASS,
	ELSE,
	FI,
	IF,
	IN,
	INHERITS,
	LET,
	LOOP,
	POOL,
	THEN,
	WHILE,
	CASE,
	ESAC,
	OF,
	NEW,
	ISVOID,
	NOT
}
/*
  DO NOT EDIT CODE ABOVE THIS LINE
*/

@members{

	/*
		YOU CAN ADD YOUR MEMBER VARIABLES AND METHODS HERE
	*/

	/**
	* Function to report errors.
	* Use this function whenever your lexer encounters any erroneous input
	* DO NOT EDIT THIS FUNCTION
	*/
	public void reportError(String errorString){
		setText(errorString);
		setType(ERROR);
	}

	public void processString() {
		Token t = _factory.create(_tokenFactorySourcePair, _type, _text, _channel, _tokenStartCharIndex, getCharIndex()-1, _tokenStartLine, _tokenStartCharPositionInLine);
		String text = t.getText();

		StringBuilder str = new StringBuilder(0);
		//write your code to test strings here

		//the case where the last character of the text is \n
		if (text.charAt(text.length()-1)=='\n')
		{
			int j = 0;
			for(j = 0; j<(text.length()-1); j++)	//loop through for errors
			{
				if(text.charAt(j)=='\\')	//....\'\u0000'...
				{
					if (text.charAt(j+1)=='\u0000')
					{
						reportError("String contains escaped null character.");
						return;
					}
					j++;
					if(j==text.length()-1)	//misc case where the last \n is escaped, this contains EOF
					{
						reportError("EOF in string constant")
						return;
					}
				}
				if (text.charAt(j)=='\u0000')
				{
					reportError("String contains null character.")
					return;
				}
			}
			if(j>1024)	//when string constant is longer than 1024 effective characters
			{
				if ((j == 1025) && (text.charAt(j)=='\n'))	//accounting for the misc case of 1025 character string
				{
					reportError("Unterminated string constant")
					return;
				}
				reportError("String constant too long");
				return;
			}
			reportError("Unterminated string constant");
			//if no other error is encountered, then this is unterminated string
		}
		else
		{	//the case where it is not an unterminated string
		int i = 0;
		while( i < text.length() ) {
			//while iterating, since \ comes in pairs, the program is bound to reach 
			//either the last character or the last but one character
			if(i == text.length()-2) {	//iterator reaching the last but one character
				if(text.charAt(i)=='\\') {
					if(text.charAt(i+1) == '\u0000') {
						reportError("String contains escaped null character.");
						return;
					}
					//when the last but one character is \ , the last character is escaped
					//so whatever the last character, the string contains EOF
					reportError("EOF in string constant");
					return;
				}
			}
			if(i == text.length()-1) {	//iterator reaching the last character
				if(text.charAt(i)=='\\') {
					//if this case occurs, it means that this \ is not escaped by any other
					//and it does not have any other character next to it for escaping.
					//This is a backslash error.
					reportError("Backslash at end of file");
					return;
				} 
				else if(text.charAt(i) == '\u0000') {	//the misc case where last character is null followed by EOF
					reportError("String contains null character.");
					return;
				}
				else if(text.charAt(i)!='\"') {	// The case where the last character is anything but \"
					reportError("EOF in string constant");
					return;
				}//If the last character is \", this is a terminated string and execution of it follows.
			}
			if(text.charAt(i) == '\\') {	//special escaped characters
				if(text.charAt(i+1) == '\u0000') {
					reportError("String contains escaped null character.");
					return;
				}
				else if(text.charAt(i+1) == '\"')
					str.append('\"');
				else if(text.charAt(i+1) == 'b')
					str.append('\b');
				else if(text.charAt(i+1) == 't')
					str.append('\t');
				else if(text.charAt(i+1) == 'f')
					str.append('\f');
				else if(text.charAt(i+1) == 'n')
					str.append('\n');
				else
					str.append(text.charAt(i+1));
				i++;
			}
			else {
				if(text.charAt(i) == '\u0000') {
					reportError("String contains null character.");
					return;
				}
				str.append(text.charAt(i));	//remove the backslash if it is not a special escaped character
			}
			i++;
			if (str.length() > 1025)	//this string length here includes the last \"
			{
				reportError("String constant too long");
				return;
			}
		}
		String outText = str.toString();
		outText = outText.substring(0,outText.length()-1);	//removing the last \"

		setText(outText);
		setType(STR_CONST);	//terminated correct string constant
		}
	}

	public void errorChar() {	//function for processing invalid characters
		Token t = _factory.create(_tokenFactorySourcePair, _type, _text, _channel, _tokenStartCharIndex, getCharIndex()-1, _tokenStartLine, _tokenStartCharPositionInLine);
		String text = t.getText();
		reportError(text);
	}
}

/*
	WRITE ALL LEXER RULES BELOW
*/

fragment IN_SINGLE_COMMENT : ~('\n');

SEMICOLON   : ';';
DARROW      : '=>';
CLASS		: [Cc][Ll][Aa][Ss][Ss] ;
ELSE		: [Ee][Ll][Ss][Ee] ;
FI			: [Ff][Ii];
IF			: [Ii][Ff] ;
IN 			: [Ii][Nn] ;
INHERITS	: [Ii][Nn][Hh][Ee][Rr][Ii][Tt][Ss] ;
LET			: [Ll][Ee][Tt] ;
LOOP		: [Ll][Oo][Oo][Pp] ;
POOL		: [Pp][Oo][Oo][Ll] ;
THEN		: [Tt][Hh][Ee][Nn] ;
WHILE		: [Ww][Hh][Ii][Ll][Ee] ;
CASE		: [Cc][Aa][Ss][Ee] ;
ESAC		: [Ee][Ss][Aa][Cc] ;
OF			: [Oo][Ff] ;
NEW			: [Nn][Ee][Ww] ;
ISVOID		: [Ii][Ss][Vv][Oo][Ii][Dd] ;
NOT			: [Nn][Oo][Tt] ;
BOOL_CONST	: 't'[Rr][Uu][Ee] | 'f'[Aa][Ll][Ss][Ee] ;
OBJECTID	: [a-z][a-z|A-Z|0-9|_]* ;
TYPEID		: [A-Z][a-z|A-Z|0-9|_]* ;
INT_CONST	: [0-9]+ ;
LPAREN		: '(' ;
RPAREN		: ')' ;
COLOGNE		: ':' ;
ATSYM		: '@' ;
COMMA		: ',' ;
PLUS		: '+' ;
MINUS		: '-' ;
STAR		: '*' ;
SLASH		: '/' ;
TILDE		: '~' ;
LT			: '<' ;
EQUALS		: '=' ;
LBRACE		: '{' ;
RBRACE		: '}' ;
DOT			: '.' ;
LE  		: '<=' ;
ASSIGN		: '<-' ;
WHITESPACE	: [ \t\r\n\f\b\u000b]+ -> skip ;	// skip spaces, tabs, newlines

SINGLE_LINE_COMMENT	: ('--' IN_SINGLE_COMMENT* '\n' 						//single line comment
					    | '--' IN_SINGLE_COMMENT* (EOF))  -> skip;          //EOF in single line comment is not an error

STRAY_COMMENT	: '*)' {reportError("Unmatched *)");};

START_COMMENT 	: '(*' -> skip, pushMode(COMMENT_MODE);

STRING_EOF		: '"'(EOF) {reportError("EOF in string constant");};	//misc case
STRING_START	: '"' -> skip, pushMode(STRING_MODE);	//when matching the string skip the leading \"

OTHER_CHARACTERS: . {errorChar();};		//if the character matches no other pattern then it is error

/*Using two modes for handling comments and one for strings */

mode COMMENT_MODE;
COMMENT_START	: '(*' -> skip, pushMode(COMMENT_MODE2);	//this makes it possible for nested comments
COMMENT_END		: '*)' -> skip, popMode;
ERR1			: '(*'EOF { reportError("EOF in comment"); } ;
EOF_IN_COMMENT	: .?(EOF) { reportError("EOF in comment"); } -> mode(DEFAULT_MODE);
ANYTHING		: . -> skip;	//ignore everything inside comment

mode COMMENT_MODE2;				//second comment mode for handling a miscellaneous EOF error
ERR2		: .(EOF) { reportError("EOF in comment"); } ;
OCOM		: '(*' -> pushMode(COMMENT_MODE2), skip ;
ERR3		: '(*'EOF { reportError("EOF in comment"); } ;
ERR4		: '*)'EOF { reportError("EOF in comment"); } ; 	//misc case that cannot be recognized with one comment mode
CCOM		: '*)' -> skip, popMode;
INCOM_TEXT	: . -> skip ;		//ignore everything inside comment


mode STRING_MODE;

// send every possibility of being a string to processString function along with errors
STRING_END		: (~('"'|'\n'|'\u001a'|'\\') | ('\\'.) )*?'"' {processString();} ->mode(DEFAULT_MODE) ;	
NEWLINE_UNESC	: (~('"'|'\n'|'\u001a'|'\\') | ('\\'.) )*?'\n' {processString();} -> mode(DEFAULT_MODE) ;
EOF_IN_STR		: (~('"'|'\n'|'\u001a'|'\\') | ('\\'.) )*?('\\')?(EOF) {processString();} ->  mode(DEFAULT_MODE) ;
//Backslash is always matched in pairs with character immediately next to it.
//Although this may not be the case when there is EOF after backslash, which is a backslash error.
