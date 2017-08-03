event handling
acceptTestExpression: text

	[ testNode := RBParser parseExpression: text ]
		on: SyntaxErrorNotification 
		do: [ ^ false ]