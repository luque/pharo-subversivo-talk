world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: self label asSymbol)
		parent: #'Pharo Subversivo Demos';
		order: 9.1;
		action: [ self load; openInWorkspace
			 ];
		icon: ((self iconNamed: #smallInspect) scaledToSize: 16 @ 16);
		withSeparatorAfter