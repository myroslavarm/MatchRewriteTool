event handling
acceptMatchExpression: text

	[ matchNode := RBParser parseRewriteExpression: text ]
		on: SyntaxErrorNotification 
		do: [ ^ false ]