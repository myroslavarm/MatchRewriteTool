initialization
initializePresenter
	super initializePresenter.
	
	matchExpression acceptBlock: [ :text |
		self acceptMatchExpression: text ].
	testExpression acceptBlock: [ :text |
		self acceptTestExpression: text ].
	
	executeButton action: [ self performMatch ].
	
	resultList
		whenSelectedItemChanged: [ :item |
			self selectedResultItemChanged: item ];
		whenListChanged: [ :newItems :oldItems |
			 self handleListChangeFrom: oldItems to: newItems ].
	
	testRewriteExpression acceptBlock: [ :text |
		self acceptRewriteTestExpression: text ].
	rewriteButton action: [ self performRewrite ].
	rewriteExpression acceptBlock: [ :text |
		self acceptRewriteExpression: text ].
	
	rewriteButton action: [ self performRewrite ].