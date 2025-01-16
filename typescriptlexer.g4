lexer grammar typescriptlexer;

// Keywords
IF        : 'if';
ELSE      : 'else';
FOR       : 'for';
FUNCTION  : 'function';
CLASS     : 'class';
INTERFACE : 'interface';
IMPORT    : 'import';
EXPORT    : 'export';
CONST     : 'const';
LET       : 'let';
VAR       : 'var';
FROM      : 'from';
//COMPONENT : 'Component'; // Already defined

// Angular-specific Keywords
SELECTOR  : 'selector';   // Add 'selector' as a keyword
STANDALONE: 'standalone';  // Add 'standalone' as a keyword
IMPORTS   : 'imports';     // Add 'imports' as a keyword

// Type annotations
STRING_TYPE : 'string';
NUMBER_TYPE : 'number';
BOOLEAN_TYPE: 'boolean';
ANY_TYPE    : 'any';
VOID_TYPE   : 'void';

// Punctuation
COMMA      : ',';
COLON      : ':';
DOT        : '.';
SEMICOLON  : ';';
EQUALS     : '==';

// Operators
ASSIGN     : '=';
PLUS       : '+';
MINUS      : '-';
STAR       : '*';
SLASH      : '/';
LESS       : '<';
GREATER    : '>';
EQUAL      : '==';
NOT_EQUAL  : '!=';

// Parentheses and Braces
LPAREN     : '(';
RPAREN     : ')';
LBRACE     : '{';
RBRACE     : '}';

// Identifiers (variables, functions, etc.)
ID  : [a-zA-Z_][a-zA-Z0-9_]*;

// Literals
STRING_LIT : '\'' (~['\\])* '\''   // Single-quoted strings like 'module'
           | '"' (~["\\])* '"' ;   // Double-quoted strings like "module"

NUMBER_LIT : [0-9]+;

// Whitespace and comments
WS         : [ \t\r\n]+ -> skip;
LINE_COMMENT: '//' ~[\r\n]* -> skip;
BLOCK_COMMENT: '/*' .*? '*/' -> skip;

// Angular/TypeScript specific
DECORATOR  : '@';
AS         : 'as';
TYPE       : 'type';
LBRACKET   : '[';
RBRACKET   : ']';
