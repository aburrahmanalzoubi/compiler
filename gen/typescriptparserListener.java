// Generated from C:\u005Cuntitled\typescriptparser.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link typescriptparser}.
 */
public interface typescriptparserListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link typescriptparser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(typescriptparser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(typescriptparser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(typescriptparser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(typescriptparser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#componentDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterComponentDeclaration(typescriptparser.ComponentDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#componentDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitComponentDeclaration(typescriptparser.ComponentDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterClassDeclaration(typescriptparser.ClassDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitClassDeclaration(typescriptparser.ClassDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#classDeclarationBody}.
	 * @param ctx the parse tree
	 */
	void enterClassDeclarationBody(typescriptparser.ClassDeclarationBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#classDeclarationBody}.
	 * @param ctx the parse tree
	 */
	void exitClassDeclarationBody(typescriptparser.ClassDeclarationBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#classMember}.
	 * @param ctx the parse tree
	 */
	void enterClassMember(typescriptparser.ClassMemberContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#classMember}.
	 * @param ctx the parse tree
	 */
	void exitClassMember(typescriptparser.ClassMemberContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#methodDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterMethodDeclaration(typescriptparser.MethodDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#methodDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitMethodDeclaration(typescriptparser.MethodDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#propertyDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterPropertyDeclaration(typescriptparser.PropertyDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#propertyDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitPropertyDeclaration(typescriptparser.PropertyDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#interfaceDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterInterfaceDeclaration(typescriptparser.InterfaceDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#interfaceDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitInterfaceDeclaration(typescriptparser.InterfaceDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#interfaceMember}.
	 * @param ctx the parse tree
	 */
	void enterInterfaceMember(typescriptparser.InterfaceMemberContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#interfaceMember}.
	 * @param ctx the parse tree
	 */
	void exitInterfaceMember(typescriptparser.InterfaceMemberContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDeclaration(typescriptparser.FunctionDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDeclaration(typescriptparser.FunctionDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#parameter}.
	 * @param ctx the parse tree
	 */
	void enterParameter(typescriptparser.ParameterContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#parameter}.
	 * @param ctx the parse tree
	 */
	void exitParameter(typescriptparser.ParameterContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#variableDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterVariableDeclaration(typescriptparser.VariableDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#variableDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitVariableDeclaration(typescriptparser.VariableDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#importDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterImportDeclaration(typescriptparser.ImportDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#importDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitImportDeclaration(typescriptparser.ImportDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(typescriptparser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(typescriptparser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(typescriptparser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(typescriptparser.ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#functionCall}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCall(typescriptparser.FunctionCallContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#functionCall}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCall(typescriptparser.FunctionCallContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#argument}.
	 * @param ctx the parse tree
	 */
	void enterArgument(typescriptparser.ArgumentContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#argument}.
	 * @param ctx the parse tree
	 */
	void exitArgument(typescriptparser.ArgumentContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#typescriptFile}.
	 * @param ctx the parse tree
	 */
	void enterTypescriptFile(typescriptparser.TypescriptFileContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#typescriptFile}.
	 * @param ctx the parse tree
	 */
	void exitTypescriptFile(typescriptparser.TypescriptFileContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#importStatement}.
	 * @param ctx the parse tree
	 */
	void enterImportStatement(typescriptparser.ImportStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#importStatement}.
	 * @param ctx the parse tree
	 */
	void exitImportStatement(typescriptparser.ImportStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#importSpecifier}.
	 * @param ctx the parse tree
	 */
	void enterImportSpecifier(typescriptparser.ImportSpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#importSpecifier}.
	 * @param ctx the parse tree
	 */
	void exitImportSpecifier(typescriptparser.ImportSpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#classBody}.
	 * @param ctx the parse tree
	 */
	void enterClassBody(typescriptparser.ClassBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#classBody}.
	 * @param ctx the parse tree
	 */
	void exitClassBody(typescriptparser.ClassBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link typescriptparser#classBodyContent}.
	 * @param ctx the parse tree
	 */
	void enterClassBodyContent(typescriptparser.ClassBodyContentContext ctx);
	/**
	 * Exit a parse tree produced by {@link typescriptparser#classBodyContent}.
	 * @param ctx the parse tree
	 */
	void exitClassBodyContent(typescriptparser.ClassBodyContentContext ctx);
}