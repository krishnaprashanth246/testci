
--some miscellaneous cases in string recognition

"(*hello world not a comment 8*)"

"\"hel\lo\" \w\o\r\l\d\t\b\n\f\!\,\.\;\?\\\*\)\^\9\""

"helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10"
--1024 character string

"hello\worldtest10helloworl\dtest10helloworldt\est10hellow\orldtest10hellow\orldtest\10helloworldtest10he\lloworldtest10hell\oworldtest\1\0helloworldtest10hell\oworldtest10helloworldtest10hello\worldtest10helloworldte\st10helloworldtest10hellow\orldtest10helloworldtest1\0helloworldtest10hellowor\ldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10"
--1024 effective characters string with \

"5helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10"
--1025 character string

"helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10 "
--1025 character string with null at the end

"helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10\ "
--1025 effective character string with escaped null at the end

"12helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10
--1026 character string unterminated

"123helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10helloworldtest10"
--1027 character string


"multiple\
escaped\
newlines12\\\
\"\
"
"hello\\\\\\\\\\\
world\\\\\
\"
--error unterminated string

"This string contains a null character  "
"This string has backslash error at the end\