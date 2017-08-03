visiting
acceptRewriteExpression: text

	[ rewriteNode := RBParser parseRewriteExpression: text ]
		on: SyntaxErrorNotification 
		do: [ ^ false ]