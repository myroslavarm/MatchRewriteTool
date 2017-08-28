initialization
initializeWidgets
	self instantiateWidgets.
	
	matchExpression aboutToStyle: true.
	testExpression aboutToStyle: true.
	
	executeButton
		icon: #smallDoItIcon asIcon;
		label: 'Match';
		shortcut: Character cr meta.
	
	resultList displayBlock: [ :assoc |
		assoc key formattedCode ].
	
	matchMapList
		allowToSelect: false;
		displayBlock: [ :assoc |
		{ assoc key formattedCode . 
		  assoc value formattedCode } ].
	
	testRewriteExpression aboutToStyle: true.
	rewriteButton
		icon: #smallDoItIcon asIcon;
		label: 'Rewrite'.
	rewriteExpression aboutToStyle: true.
	
	self initializeFocus