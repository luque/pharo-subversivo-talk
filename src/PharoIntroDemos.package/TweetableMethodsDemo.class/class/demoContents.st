actions
demoContents
	^ '| total tweetable |
	total := Object withAllSubclasses inject: 0 into: [ :count :cls | count + cls selectors size ].
tweetable := Object withAllSubclasses inject: 0 into: [ 
	:count :cls | 
	count + (cls selectors count: [ :sel | (cls >> sel) sourceCode  size <= 280]) ].
(tweetable / total) asFloat * 100'