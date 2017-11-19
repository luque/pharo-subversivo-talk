tests
testNotifiesSubscriberAboutAnEvent
	| event publisher subscriber |
	"an Event"
	event := 'test event'.

	"a mocked Subscriber collaborator"
	subscriber := protocol mock: 'subscriber'.
	protocol describe
		once: subscriber recv: #eventReceived:;
		with: event.

	"SUT"
	publisher := Publisher new.
	"protocol visualize: publisher."
	publisher addSubscriber: subscriber.
	publisher publish: event