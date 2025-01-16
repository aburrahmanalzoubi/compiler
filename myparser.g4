parser grammar myparser;

options { tokenVocab = mylexer; }

// Entry point for the program
program
    : (htmlContent | tsContent | cssContent | comment)* EOF
    ;
htmlTagName : HTML_TAGS;

// HTML content
/*htmlContent
    : HTML_OPEN_TAG htmlBody? HTML_CLOSE_TAG
    | SELF_CLOSING_TAG
    ;*/
htmlContent
    : TAG_START TAG_NAME (ATTRIBUTE_NAME EQUALS STRING_LITERAL)* TAG_END
    ;



/*htmlTagName
    : IDENTIFIER
    ;
*/
attribute
    : ATTRIBUTE_NAME (EQUALS (STRING_LITERAL | ANGULAR_TEMPLATE))?
    | ANGULAR_PROPERTY EQUALS STRING_LITERAL
    | ANGULAR_DIRECTIVE EQUALS STRING_LITERAL
    ;

htmlBody
    : (htmlContent | COMMENT | HTML_TEXT | ANGULAR_TEMPLATE | HTML_OTHER | WS)*
    ;

// TypeScript content
tsContent
    : SCRIPT_START tsStatement* TS_CLOSE
    ;

// Comments
comment
    : LINE_COMMENT
    | BLOCK_COMMENT
    ;

// TypeScript statements
tsStatement
    : variableDeclaration
    | functionDeclaration
    | ifStatement
    | forStatement
    | tsExpression SEMICOLON?
    | importStatement
    | consoleStatement
    | componentDefinition
    | interfaceDefinition
    | constDefinition
    | classDefinition
    ;

// Import Statements
importStatement
    : IMPORT importList FROM STRING_LITERAL SEMICOLON
    ;

importList
    : LBRACE (IDENTIFIER (COMMA IDENTIFIER)*)? RBRACE
    ;

// Class Definition
classDefinition
    : CLASS IDENTIFIER (EXTENDS IDENTIFIER)? LBRACE classBody RBRACE
    ;

propertyDeclaration
    : IDENTIFIER COLON typeDefinition SEMICOLON
    ;

classBody
    : (propertyDeclaration | methodDeclaration | constructorDeclaration | tsStatement)*
    ;

methodDeclaration
    : (PUBLIC | PRIVATE | STATIC)? IDENTIFIER LPAREN parameterList? RPAREN COLON typeDefinition? block
    ;

constructorDeclaration
    : CONSTRUCTOR LPAREN parameterList? RPAREN block
    ;

// Component Definition
componentDefinition
    : COMPONENT LBRACE componentOptions RBRACE classDefinition
    ;

componentOptions
    : (SELECTOR COLON STRING_LITERAL COMMA)?
      (STANDALONE COLON BOOLEAN_LITERAL COMMA)?
      (IMPORTS COLON LBRACE IDENTIFIER (COMMA IDENTIFIER)* RBRACE COMMA)?
      (TEMPLATE COLON STRING_LITERAL COMMA)?
      (STYLES COLON LBRACE STRING_LITERAL (COMMA STRING_LITERAL)* RBRACE)?
    ;

// Interface Definition
interfaceDefinition
    : INTERFACE IDENTIFIER LBRACE interfaceBody RBRACE
    ;

interfaceBody
    : propertyDefinition*
    ;

propertyDefinition
    : IDENTIFIER COLON typeDefinition SEMICOLON
    ;

typeDefinition
    : STRING
    | NUMBER
    | BOOLEAN
    | IDENTIFIER
    ;

// Constant Definition
constDefinition
    : CONST IDENTIFIER COLON typeDefinition EQUALS value SEMICOLON
    ;

value
    : STRING_LITERAL
    | NUMBER_LITERAL
    | BOOLEAN_LITERAL
    | LBRACE (propertyDefinition (COMMA propertyDefinition)*)? RBRACE
    ;

// Variable declaration
variableDeclaration
    : (LET | CONST | VAR) IDENTIFIER (ASSIGN tsExpression)? SEMICOLON
    ;

// Function declaration
functionDeclaration
    : (PUBLIC | PRIVATE | STATIC)? IDENTIFIER LPAREN parameterList? RPAREN block
    ;

parameterList
    : IDENTIFIER (COMMA IDENTIFIER)*
    ;

block
    : LBRACE tsStatement* RBRACE
    ;

// If statement
ifStatement
    : IF LPAREN tsExpression RPAREN block (ELSE block)?
    ;

// For loop
forStatement
    : FOR LPAREN forInit? SEMICOLON tsExpression? SEMICOLON forUpdate? RPAREN block
    ;

forInit
    : variableDeclaration | tsExpression
    ;

forUpdate
    : tsExpression
    ;

// TypeScript expressions
tsExpression
    : IDENTIFIER
    | NUMBER_LITERAL
    | STRING_LITERAL_TS
    | BOOLEAN_LITERAL
    | NULL_LITERAL
    | UNDEFINED_LITERAL
    | tsExpression (PLUS | MINUS | MULTIPLY | DIVIDE) tsExpression
    | BACKTICK tsExpression BACKTICK
    | TRUE
    ;

// Console Statement
consoleStatement
    : CONSOLE DOT LOG LPAREN argumentList? RPAREN SEMICOLON
    ;

argumentList
    : tsExpression (COMMA tsExpression)*
    ;

// CSS content
cssContent
    : STYLE_START cssRule* CSS_CLOSE
    ;

cssRule
    : CSS_PROPERTY CSS_VALUE
    ;

// Error handling
error
    : ERROR_CHAR
    ;
