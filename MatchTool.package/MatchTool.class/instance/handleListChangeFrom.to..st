initialization
handleListChangeFrom: oldItems to: newItems

	oldItems ~= newItems ifTrue: [ 
		resultList resetSelection  ]