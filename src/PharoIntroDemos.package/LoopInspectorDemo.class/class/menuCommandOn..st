world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: self label asSymbol)
		parent: #'Pharo Subversivo Demos';
		order: 2.0;
		action: [ self
				load;
				openInWorkspace ];
		icon: ((self iconNamed: #smallInspect) scaledToSize: 16 @ 16)