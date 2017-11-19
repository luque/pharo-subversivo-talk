actions
demoContents
	^ '| b |
b := RTMondrian new.
b shape circle.
b nodes: Collection withAllSubclasses.
b shape line color: Color veryLightGray.
b edges 
	moveBehind;
	connectFrom: #superclass.
b layout cluster.
b normalizer
	normalizeSize: #numberOfMethods min: 6 max: 40;
	distinctColorUsing: #package.
b'