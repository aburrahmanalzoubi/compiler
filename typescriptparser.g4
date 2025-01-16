parser grammar typescriptparser;

options { tokenVocab=typescriptlexer; }

// Root rule
program     : statement+;

// Statements
statement   :
 componentDeclaration
            |classDeclaration
            | interfaceDeclaration
            | functionDeclaration
            | variableDeclaration
            | importDeclaration
| export
            ;
export  :EXPORT ;
// Class Declaration
componentDeclaration
    : DECORATOR ID classDeclarationBody
    ;
classDeclaration
    : DECORATOR ID classDeclarationBody
    | CLASS ID LBRACE classMember* RBRACE
    ;

classDeclarationBody
    : LBRACE classMember* RBRACE
    ;

classMember
    : methodDeclaration
    | propertyDeclaration
    ;

methodDeclaration
    : ID LPAREN parameter* RPAREN COLON type? SEMICOLON
    ;

propertyDeclaration
    : ID COLON type SEMICOLON
    ;

interfaceDeclaration
    : INTERFACE ID LBRACE interfaceMember* RBRACE
    ;

interfaceMember
    : propertyDeclaration
    | methodDeclaration
    ;

functionDeclaration
    : FUNCTION ID LPAREN parameter* RPAREN COLON type? SEMICOLON
    ;

parameter
    : ID COLON type
    ;

variableDeclaration
    : (CONST | LET | VAR) ID COLON type ASSIGN expression SEMICOLON
    ;

importDeclaration
    : IMPORT LBRACE ID RBRACE FROM STRING_LIT SEMICOLON
    ;
    list : ID LBRACKET RBRACKET
    | ID LBRACKET RBRACKET ASSIGN LBRACKET bodylist RBRACKET ;
    bodylist : (object COMMA)* | (NUMBER_LIT COMMA)*| ;
   object : LBRACE bodyobject RBRACE ;
   bodyobject : (ID COLON initvalue)*;
initvalue :(NUMBER_LIT COMMA)* | (STRING_LIT COMMA)*  ;
type        : STRING_TYPE
            | NUMBER_TYPE
            | BOOLEAN_TYPE
            | ANY_TYPE
            | VOID_TYPE
            | ID
            | list;



expression  : STRING_LIT
            | NUMBER_LIT
            | ID
            | functionCall
            ;

functionCall
    : ID LPAREN argument* RPAREN
    ;

argument    : expression
            ;


// Starting rule for parsing a TypeScript file
typescriptFile : statement* EOF;

// Handle import statements
importStatement
    : IMPORT importSpecifier FROM STRING_LIT   SEMICOLON
    ;

importSpecifier
    : LBRACE ID (COMMA ID)* RBRACE       // Handles imports like `{ Component }`
    | ID                                  // Handles default imports like `import {Something} from 'module'`
    ;


/*importStatement
    : IMPORT STRING_LIT FROM DECORATOR  SEMICOLON
    ;
*/
// Handle component declarations


classBody
    : LBRACE classBodyContent* RBRACE
    ;

classBodyContent
    : methodDeclaration
    | propertyDeclaration
    ;
