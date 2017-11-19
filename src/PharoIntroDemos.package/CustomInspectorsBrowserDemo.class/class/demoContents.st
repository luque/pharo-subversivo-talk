actions
demoContents
	^ '(Object withDeep: #subclasses flatCollect: [ :each | 
			Pragma allNamed: #gtInspectorPresentationOrder: in: each ]) 
				collect: [ :each | each method ]'