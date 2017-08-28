event handling
performRewrite
| sampleAST resultAST |

matchExpression accept.
testExpression accept.
testRewriteTool accept.

sampleAST := RBParser parseExpression: testRewriteTool.

resultAST := RBParseTreeRewriter
    replace: matchExpression with: testExpression in: sampleAST.

^ (rewriteTool formattedCode)