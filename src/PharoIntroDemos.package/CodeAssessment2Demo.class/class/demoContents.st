actions
demoContents
	^ '| b |
b := RTMondrian new.
b shape rectangle
	withBorder;
	width: [ :cls | cls numberOfVariables * 5 ];
	height: [ :cls | cls numberOfMethods ].

b nodes: Collection withAllSubclasses.
b edges connectToAll: [ :cls | cls subclasses ].
b layout tree.
b normalizer
	normalizeColorAsGray: [ :cls | cls numberOfLinesOfCode ].
b'