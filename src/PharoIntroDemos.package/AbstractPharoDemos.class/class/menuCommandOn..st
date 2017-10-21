world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Pharo Subversivo Demos')
		order: 1.0;
		icon: ((self iconNamed: #pharoIcon) scaledToSize: 16 @ 16)