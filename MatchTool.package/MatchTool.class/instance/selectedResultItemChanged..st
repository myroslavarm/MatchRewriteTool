event handling
selectedResultItemChanged: item

	item
		ifNil: [ 
			matchMapList items: #().
			testExpression clearSelection  ]
		ifNotNil: [ 
			matchMapList items: item value associations.
			testExpression setSelection: item key sourceInterval ]
