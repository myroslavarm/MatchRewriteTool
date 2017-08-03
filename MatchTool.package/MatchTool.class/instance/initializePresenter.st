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
	
	testRewriteTool acceptBlock: [ :text |
		self acceptRewriteTestExpression: text ].
	rewriteButton action: [ self performRewrite ].
	rewriteTool acceptBlock: [ :text |
		self acceptRewriteExpression: text ].