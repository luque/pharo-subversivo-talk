world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: self label asSymbol)
		parent: #'Pharo Subversivo Demos';
		order: 12.0;
		action: [ self openInWorkspace
			"	load;" ];
		icon: ((self iconNamed: #smallInspect) scaledToSize: 16 @ 16)