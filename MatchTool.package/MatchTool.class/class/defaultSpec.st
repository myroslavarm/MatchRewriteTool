specs
defaultSpec

	^ SpecLayout composed newRow: [ :row | row 
		newColumn: [ :col | col
			add: #matchExpression;
			add: #testExpression ]
		origin: 0@0 corner: 0.3@1;
		
		newColumn: [ :col | col
			add: #executeButton height: 30;
			add: #resultList ]
		origin: 0.3@0 corner: 0.6@1;
		
		newColumn: [ :col | col
			add: #matchMapList ]
		origin: 0.6@0 corner: 0.8@1;
	
		newColumn: [ :col | col
			add: #testRewriteExpression;
			add: #rewriteButton height: 30;
			add: #rewriteExpression ]
		origin: 0.8@0 corner: 1@1 ];
		yourself