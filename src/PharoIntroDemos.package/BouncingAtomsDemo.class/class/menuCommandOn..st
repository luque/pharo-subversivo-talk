world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: self label asSymbol)
		parent: #'Pharo Subversivo Demos';
		order: 1.0;
		action: [ self
				load;
				openInWorkspace ];
		icon: ((self iconNamed: #smallDoIt) scaledToSize: 16 @ 16);			
		withSeparatorAfter