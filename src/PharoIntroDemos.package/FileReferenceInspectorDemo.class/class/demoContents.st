actions
demoContents
	^ 'FileSystem disk workingDirectory.
	
	
	"A Grapher visualization"
  csv := (ZnEasy get: ''http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.csv'') contents.
	tab := RTTabTable new
		input: csv
		usingDelimiter: $,.
	tab removeFirstRow.
	tab replaceEmptyValuesWith: ''0'' inColumns: #(4 5).
	tab convertColumnsAsFloat: #(4 5).

	b := RTGrapher new.
	ds := RTData new.
	ds interaction popup.
	ds dotShape color: (Color blue trans).
	ds points: tab values.
	ds x: [ :row | row at: 4 ].
	ds y: [ :row | row at: 5 ].
	b add: ds.

	b maxY: 8.
	b maxX: 700.

	b axisX title: ''depth''.
	b axisY title: ''magnitude''.
	b.
	
	"Another visualization"
	csv := (ZnEasy get: ''http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.csv'') contents.
	tab := RTTabTable new
		input: csv
		usingDelimiter: $,.
	tab removeFirstRow.
	tab replaceEmptyValuesWith: ''0'' inColumns: #(2 3 5).
	tab convertColumnsAsFloat: #(2 3 5).
	
	v := RTView new.
	map := RTOSM new.
	e := map element.
	v add: e.
	tab values
		do: [ :row | 
			e := (RTEllipse new
			  size: (2 raisedTo: row fifth) * 10;
			  color: (Color red alpha: 0.3)) elementOn: row fifth.
			e @ RTPopup @ RTHighlightable.
			e translateTo: (map latLonToRoassal: row second @ row third).
			v add: e ].

	v canvas camera scale: 0.02; noInitializationWhenOpen.

	v @ RTDraggableView.
	RTEmptyViewContext setOnView: v.
	v
	'