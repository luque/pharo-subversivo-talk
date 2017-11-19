actions
demoContents
	^ 'MessageTally on: [ XMLParserTest new benchmark1 ].
	
	
	"gtInspector"
	gtInspectorPerformanceChartIn: composite
	<gtInspectorPresentationOrder: 40>
	^ composite roassal2
		title: ''Top 20'';
		initializeView: [ RTDoubleBarBuilder new ];
		painting: [ :builder :presentation | InspectorMessageTallyCharter new performanceOf: self with: builder in: presentation ];
		when: [ self children notEmpty ]
	'