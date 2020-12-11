/* Copyright 2012. Bloomberg Finance L.P.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:  The above
 * copyright notice and this permission notice shall be included in all copies
 * or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */
// blpapi_event.h                                                     -*-C++-*-
#ifndef INCLUDED_BLPAPI_EVENT
#define INCLUDED_BLPAPI_EVENT

//@PURPOSE: A component which defines events related operations
//
//@CLASSES:
//            blpapi::Event: an event resulting from a subscription or request.
//       blpapi::EventQueue: A construct to handle replies synchronously.
//  blpapi::MessageIterator: An iterator over the Messages within an Event.
//
//@DESCRIPTION: This file defines an 'Event'. One or more 'Event's are
// generated as a result of a subscription or a request. Events contain Message
// objects which can be accessed using a 'MessageIterator'. This file also
// defines a 'EventQueue' for handling replies synchronously.
//
///Usage
///-----
// The following code snippet shows a how a 'EventQueue' is used with a
// 'generateToken' request. For any established session 'session' pass an
// 'EventQueue' object 'tokenEventQueue' when calling 'generateToken'.
// All Events in responses to 'generateToken' request will be returned in
// 'tokenEventQueue'.
//..
// //...
// EventQueue tokenEventQueue;
// session->generateToken(CorrelationId(), &tokenEventQueue);
//..
// Synchronously read the response 'event' and parse over messages using 'iter'
//..
// Event event = tokenEventQueue.nextEvent();
// if (event.eventType() == Event::TOKEN_STATUS) {
//     MessageIterator iter(event);
//     while (iter.next()) {
//         Message msg = iter.message();
//         //...
//..

#ifndef INCLUDED_BLPAPI_MESSAGE
#include <blpapi_message.h>
#endif

#ifndef INCLUDED_BLPAPI_DEFS
#include <blpapi_defs.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

//BLPAPI_EXPORT
//int blpapi_Event_eventType(
//        const Event *event);

BLPAPI_EXPORT
int blpapi_Event_addRef(
        const Event *event);

//BLPAPI_EXPORT
//int blpapi_Event_release(
//        const Event *event);

BLPAPI_EXPORT
blpapi_EventQueue_t* blpapi_EventQueue_create(void);

BLPAPI_EXPORT
int blpapi_EventQueue_destroy(blpapi_EventQueue_t* eventQueue);

BLPAPI_EXPORT
Event* blpapi_EventQueue_nextEvent(
        blpapi_EventQueue_t *eventQueue,
        int timeout);

BLPAPI_EXPORT
int blpapi_EventQueue_purge(blpapi_EventQueue_t *eventQueue);

BLPAPI_EXPORT
int blpapi_EventQueue_tryNextEvent(
        blpapi_EventQueue_t *eventQueue,
        Event **eventPointer);

//BLPAPI_EXPORT
//blpapi_MessageIterator_t* blpapi_MessageIterator_create(
//        const Event *event);
//
//BLPAPI_EXPORT
//void blpapi_MessageIterator_destroy(
//        blpapi_MessageIterator_t* iterator);
//
//BLPAPI_EXPORT
//int blpapi_MessageIterator_next(
//        blpapi_MessageIterator_t* iterator,
//        blpapi_Message_t** result);

#ifdef __cplusplus
}

//namespace BloombergLP {
//namespace blpapi {
	namespace BEmu {

		//// ================
		//// class EventQueue
		//// ================

		//class EventQueue {
		//	// A construct used to handle replies to request synchronously.
		//	//
		//	// An EventQueue can be supplied when using Session::sendRequest()
		//	// and Session::sendAuthorizationRequest() methods.
		//	//
		//	// When a request is submitted an application can either handle
		//	// the responses asynchronously as they arrive or use an
		//	// EventQueue to handle all responses for a given request or
		//	// requests synchronously. The EventQueue will only deliver
		//	// responses to the request(s) it is associated with.

		//	blpapi_EventQueue_t *d_handle_p;

		//public:
		//	EventQueue();
		//	// Construct an empty event queue.

		//	virtual ~EventQueue();
		//	// Destroy this event queue and cancel any pending request
		//	// that are linked to this queue.

		//// MANIPULATORS

		//	virtual Event nextEvent(int timeout = 0);
		//	// Returns the next Event available from the EventQueue. If
		//	// the specified 'timeout' is zero this will wait forever for
		//	// the next event. If the specified 'timeout' is non zero then
		//	// if no Event is available within the specified 'timeout' in
		//	// milliseconds an Event with a type() of TIMEOUT will be returned.

		//	virtual int tryNextEvent(Event *event);
		//	// If the EventQueue is non-empty, load the next Event available
		//	// into event and return 0 indicating success. If the EventQueue is
		//	// empty, return a non-zero value with no effect on event or the
		//	// the state of EventQueue. This method never blocks.

		//	virtual void purge();
		//	// Purges any Event objects in this EventQueue which have not
		//	// been processed and cancel any pending requests linked to
		//	// this EventQueue. The EventQueue can subsequently be
		//	// re-used for a subsequent request.

		//	blpapi_EventQueue_t* handle() const;
		//};


		////=============================================================================
		////                           INLINE FUNCTION DEFINITIONS
		////=============================================================================


		//// ----------------
		//// class EventQueue
		//// ----------------

		//inline
		//	EventQueue::EventQueue()
		//{
		//	d_handle_p = blpapi_EventQueue_create();
		//}

		//inline
		//	EventQueue::~EventQueue()
		//{
		//	blpapi_EventQueue_destroy(d_handle_p);
		//}

		//inline
		//	Event EventQueue::nextEvent(int timeout)
		//{
		//	return blpapi_EventQueue_nextEvent(d_handle_p, timeout);
		//}

		//inline
		//	int EventQueue::tryNextEvent(Event *event)
		//{
		//	Event *impl;
		//	int ret = blpapi_EventQueue_tryNextEvent(d_handle_p, &impl);
		//	if (0 == ret) {
		//		*event = Event(impl);
		//	}
		//	return ret;
		//}

		//inline
		//	void EventQueue::purge()
		//{
		//	blpapi_EventQueue_purge(d_handle_p);
		//}

		//inline
		//	blpapi_EventQueue_t* EventQueue::handle() const
		//{
		//	return d_handle_p;
		//}


	}// close namespace Bemu
//}  // close namespace blpapi
//}  // close namespace BloombergLP

#endif // #ifdef __cplusplus
#endif // #ifndef INCLUDED_BLPAPI_EVENT
