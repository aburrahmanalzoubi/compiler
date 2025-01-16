lexer grammar mylexer;
// Detect <script> and <style> first to switch modes correctly
//SCRIPT_START : '<script>' -> pushMode(TS);
//STYLE_START  : 'style'  -> pushMode(CSS);
//TAG_START    : '<' -> pushMode(HTML);  // Handles other HTML tags
TAG_START : '<' -> pushMode(HTML);  // Start of any HTML tag
TAG_NAME  : [a-zA-Z][a-zA-Z0-9_-]*; // Tag name like div, span, etc.
TAG_END   : '>' -> popMode;         // End of the tag
SELF_CLOSING_TAG : '/>';            // Self-closing tag
WS : [ \t\r\n]+ -> skip;            // Skip whitespace globally


// Attribute Handling
ATTRIBUTE_NAME : [a-zA-Z_:@*][a-zA-Z0-9_.:@[\]-]*;
EQUALS         : '=';
STRING_LITERAL : '"' (~["] | '\\"')* '"';

DOCTYPE     : '<!DOCTYPE';


// HTML Mode
mode HTML;


SLASH            : '/';

QUOTE            : '"';
HTML_TAGS : [a-zA-Z][a-zA-Z0-9_-]*;  // Matches any valid HTML tag

                 // Strings in double quotes

// Angular Templates and Bindings
ANGULAR_TEMPLATE : '{{' .*? '}}';                  // Angular template
ANGULAR_PROPERTY : '[' ATTRIBUTE_NAME ']';
ANGULAR_DIRECTIVE: '*' ATTRIBUTE_NAME;

// Comments
COMMENT          : '<!--' .*? '-->' -> skip;       // HTML comments
SINGLE_LINE_COMMENT : '//' ~[\r\n]*;               // Single-line comments
MULTI_LINE_COMMENT  : '/*' .*? '*/';               // Multi-line comments

// Tags and Text
   /*HTML_TAGS        : 'html' | 'body' | 'head' | 'script' | 'style'
                 | 'div' | 'span' | 'ul' | 'li' | 'img' | 'p'
                 | 'h3' | 'h4' | 'br' | 'a' | 'link';*/

HTML_CLOSE_TAG   : '</' [a-zA-Z_][a-zA-Z0-9_]* '>' -> popMode; // Closing tag
HTML_TEXT        : (~('<' | '`' | '{' | '\r' | '\n'))+;
HTML_OTHER       : .;

// TypeScript Mode
mode TS;
// Keywords (defined first)
IMPORT  : 'import';
FROM    : 'from';
EXPORT  : 'export';
CLASS   : 'class';
LET     : 'let';
CONST   : 'const';
VAR     : 'var';
IF      : 'if';
ELSE    : 'else';
RETURN  : 'return';
NEW     : 'new';
STATIC  : 'static';
CONSOLE : 'console';
FOR     : 'for';
WHILE   : 'while';

// Type Keywords
TYPE_KEYWORD : 'string' | 'number' | 'boolean' | 'void' | 'any' | 'unknown';



TS_CLOSE : '</script>' -> popMode;
WS_TS : [ \t\r\n]+ -> skip;
IDENTIFIER : [a-zA-Z_][a-zA-Z0-9_]*;


FILE_PATH        : (('./' | '../' | [a-zA-Z]+ ':')?) [a-zA-Z0-9_/$-]+ ( '/' [a-zA-Z0-9_/$-]+ )* '.' [a-zA-Z]+;



STANDALONE       : 'standalone';

STRING_LITERAL_TS: '\'' (~('\'' | '\\') | '\\'.)* '\''
                 | '"' (~('"' | '\\') | '\\'.)* '"';

// Add these token definitions in the appropriate section of Mylexer
LOG        : 'log';
SELECTOR   : 'selector';
IMPORTS    : 'imports';
STYLES     : 'styles';
TEMPLATE   : 'template';
// Add these token definitions to Mylexer

// Literals and Operators
NUMBER_LITERAL   : [0-9]+ ('.' [0-9]+)?;
BOOLEAN_LITERAL  : 'true' | 'false';
NULL_LITERAL     : 'null';
UNDEFINED_LITERAL: 'undefined';

TEMPLATE_LITERAL : '`' (~[`\\] | '\\' .)* '`';
DOT              : '.';
COLON            : ':';
SEMICOLON        : ';';
COMMA            : ',';
ASSIGN           : '=';
PLUS             : '+';
MINUS            : '-';
MULTIPLY         : '*';
DIVIDE           : '/';
LBRACE           : '{';
RBRACE           : '}';
LPAREN           : '(';
RPAREN           : ')';
LESS_THAN        : '<';
GREATER_THAN     : '>';
QUESTION         : '?';
ARROW            : '=>';
EQ               : '==';
NEQ              : '!=';
LT               : '<';
GT               : '>';
LTE              : '<=';
GTE              : '>=';
AND              : '&&';
OR               : '||';
NOT              : '!';



LINE_COMMENT_TS: '//' ~[\r\n]* -> skip;
BLOCK_COMMENT_TS: '/*' .*? '*/' -> skip;
// Whitespace and Error Handling

TS_OTHER: . -> channel(HIDDEN);
COMPONENT      : '@Component';
// TypeScript Ty
// Comments
LINE_COMMENT   : '//' ~[\r\n]* -> skip;
BLOCK_COMMENT  : '/*' .*? '*/' -> skip;
TYPE           : 'type';
LSQUARE        : '[';
RSQUARE        : ']';
// CSS Mode
mode CSS;
CSS_PROPERTY     : [a-zA-Z-]+ ':';
CSS_VALUE        : [a-zA-Z0-9#.%]+ ';';
CSS_CLOSE        : '</style>' -> popMode;          // End of CSS mode
CSS_WS           : [ \t\r\n]+ -> skip;
CSS_OTHER        : .;

// Error Handling
ERROR_CHAR       : . -> channel(HIDDEN);
