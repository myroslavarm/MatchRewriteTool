event handling
performMatch
	| matches |

	matchExpression accept.
	testExpression accept.
	
	self isReadyForMatch ifFalse: [ ^ self ].
	
	matches := OrderedCollection new.
	
	testNode nodesDo: [ :node |
		matchNode
			match: node
			onSuccess: [ :map |
				matches add: node -> map ]
			onFailure: [ ] ].
	
	resultList items: matches