event handling
acceptRewriteTestExpression: text

	[ testRewriteNode := RBParser parseExpression: text ]
		on: SyntaxErrorNotification 
		do: [ ^ false ]