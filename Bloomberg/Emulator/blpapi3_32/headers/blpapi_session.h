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
// blpapi_session.h                                                   -*-C++-*-
#ifndef INCLUDED_BLPAPI_SESSION
#define INCLUDED_BLPAPI_SESSION

//@PURPOSE: Provide consumer session to get Bloomberg Service.
//
//@CLASSES:
// blpapi::Session: A consumer session for consuming service
//
//@DESCRIPTION: This component implements a consumer session for getting
// services.

#ifndef INCLUDED_BLPAPI_ABSTRACTSESSION
#include <blpapi_abstractsession.h>
#endif

#ifndef INCLUDED_BLPAPI_CALL
#include <blpapi_call.h>
#endif

#ifndef INCLUDED_BLPAPI_CORRELATIONID
#include <blpapi_correlationid.h>
#endif

#ifndef INCLUDED_BLPAPI_DEFS
#include <blpapi_defs.h>
#endif

#ifndef INCLUDED_BLPAPI_EVENT
#include <blpapi_event.h>
#endif

#ifndef INCLUDED_BLPAPI_EVENTDISPATCHER
#include <blpapi_eventdispatcher.h>
#endif

#ifndef INCLUDED_BLPAPI_IDENTITY
#include <blpapi_identity.h>
#endif

#ifndef INCLUDED_BLPAPI_REQUEST
#include <blpapi_request.h>
#endif

#ifndef INCLUDED_BLPAPI_REQUESTTEMPLATE
#include <blpapi_requesttemplate.h>
#endif

#ifndef INCLUDED_BLPAPI_SERVICE
#include <blpapi_service.h>
#endif

#ifndef INCLUDED_BLPAPI_SESSIONOPTIONS
#include <blpapi_sessionoptions.h>
#endif

#ifndef INCLUDED_BLPAPI_SUBSCRIPTIONLIST
#include <blpapi_subscriptionlist.h>
#endif

#ifndef INCLUDED_BLPAPI_TYPES
#include <blpapi_types.h>
#endif

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void(*blpapi_EventHandler_t)(Event* event,
                                     blpapi_Session_t* session,
                                     void *userData);

BLPAPI_EXPORT
blpapi_Session_t* blpapi_Session_create(
        blpapi_SessionOptions_t *parameters,
        blpapi_EventHandler_t handler,
        blpapi_EventDispatcher_t* dispatcher,
        void *userData);

BLPAPI_EXPORT
void blpapi_Session_destroy(
        blpapi_Session_t *session);

BLPAPI_EXPORT
int blpapi_Session_start(
        blpapi_Session_t *session);

BLPAPI_EXPORT
int blpapi_Session_startAsync(
        blpapi_Session_t *session);

BLPAPI_EXPORT
int blpapi_Session_stop(
        blpapi_Session_t* session);

BLPAPI_EXPORT
int blpapi_Session_stopAsync(
        blpapi_Session_t* session);

BLPAPI_EXPORT
int blpapi_Session_nextEvent(
        blpapi_Session_t* session,
        Event **eventPointer,
        unsigned int timeoutInMilliseconds);

BLPAPI_EXPORT
int blpapi_Session_tryNextEvent(
        blpapi_Session_t* session,
        Event **eventPointer);

BLPAPI_EXPORT
int blpapi_Session_subscribe(
        blpapi_Session_t *session,
        const blpapi_SubscriptionList_t *subscriptionList,
        const blpapi_Identity_t* handle,
        const char *requestLabel,
        int requestLabelLen);

BLPAPI_EXPORT
int blpapi_Session_resubscribe(
        blpapi_Session_t *session,
        const blpapi_SubscriptionList_t *resubscriptionList,
        const char *requestLabel,
        int requestLabelLen);

BLPAPI_EXPORT
int blpapi_Session_resubscribeWithId(
        blpapi_Session_t *session,
        const blpapi_SubscriptionList_t *resubscriptionList,
        int resubscriptionId,
        const char *requestLabel,
        int requestLabelLen);

BLPAPI_EXPORT
int blpapi_Session_unsubscribe(
        blpapi_Session_t *session,
        const blpapi_SubscriptionList_t *unsubscriptionList,
        const char *requestLabel,
        int requestLabelLen);

BLPAPI_EXPORT
int blpapi_Session_cancel(
        blpapi_Session_t *session,
        const blpapi_CorrelationId_t *correlationIds,
        size_t numCorrelationIds,
        const char *requestLabel,
        int requestLabelLen);

BLPAPI_EXPORT
int blpapi_Session_setStatusCorrelationId(
        blpapi_Session_t *session,
        const Service *service,
        const blpapi_Identity_t *identity,
        const blpapi_CorrelationId_t *correlationId);

BLPAPI_EXPORT
int blpapi_Session_sendRequest(
        blpapi_Session_t *session,
        const Request *request,
        blpapi_CorrelationId_t *correlationId,
        blpapi_Identity_t *identity,
        blpapi_EventQueue_t *eventQueue,
        const char *requestLabel,
        int requestLabelLen);

BLPAPI_EXPORT
int blpapi_Session_sendRequestTemplate(
        blpapi_Session_t *session,
        const blpapi_RequestTemplate_t *requestTemplate,
        blpapi_CorrelationId_t *correlationId);

BLPAPI_EXPORT
int blpapi_Session_createSnapshotRequestTemplate(
        blpapi_RequestTemplate_t **requestTemplate,
        blpapi_Session_t *session,
        const char *subscriptionString,
        const blpapi_Identity_t* identity,
        blpapi_CorrelationId_t *correlationId);

BLPAPI_EXPORT
int blpapi_Session_sendAuthorizationRequest(
        blpapi_Session_t *session,
        const Request *request,
        blpapi_Identity_t *identity,
        blpapi_CorrelationId_t *correlationId,
        blpapi_EventQueue_t *eventQueue,
        const char *requestLabel,
        int requestLabelLen);

BLPAPI_EXPORT
int blpapi_Session_openService(
        blpapi_Session_t *session,
        const char* serviceName);

BLPAPI_EXPORT
int blpapi_Session_openServiceAsync(
        blpapi_Session_t *session,
        const char* serviceName,
        blpapi_CorrelationId_t *correlationId);

BLPAPI_EXPORT
int blpapi_Session_generateToken(
        blpapi_Session_t *session,
        blpapi_CorrelationId_t *correlationId,
        blpapi_EventQueue_t *eventQueue);

BLPAPI_EXPORT
int blpapi_Session_getService(
        blpapi_Session_t *session,
		Service **service,
        const char* serviceName);

// Deprecated: Use blpapi_Session_createIdentity instead
BLPAPI_EXPORT
blpapi_UserHandle_t* blpapi_Session_createUserHandle(
        blpapi_Session_t *session);

BLPAPI_EXPORT
blpapi_Identity_t* blpapi_Session_createIdentity(
        blpapi_Session_t *session);

BLPAPI_EXPORT
blpapi_AbstractSession_t* blpapi_Session_getAbstractSession(
    blpapi_Session_t* session);

BLPAPI_EXPORT
blpapi_SubscriptionIterator_t* blpapi_SubscriptionItr_create(
        blpapi_Session_t *session);

BLPAPI_EXPORT
void blpapi_SubscriptionItr_destroy(
        blpapi_SubscriptionIterator_t *iterator);

BLPAPI_EXPORT
int blpapi_SubscriptionItr_next(
        blpapi_SubscriptionIterator_t *iterator,
        const char** subscriptionString,
        blpapi_CorrelationId_t *correlationId,
        int *status);

BLPAPI_EXPORT
int blpapi_SubscriptionItr_isValid(
        const blpapi_SubscriptionIterator_t *iterator);

#ifdef __cplusplus
}

#ifndef INCLUDED_CSTRING
#include <cstring> // for std::memset
#define INCLUDED_CSTRING
#endif

namespace BloombergLP {
namespace blpapi {

class Session;
                         // ==================
                         // class EventHandler
                         // ==================

extern "C" void blpapi_eventHandlerAdapter(Event   *event,
                                           blpapi_Session_t *,
                                           void             *userData);
    // Adapter 'blpapi_EventHandler_t' implementation that dispatches the
    // specified 'event' to a 'blpapi::Session' pointed by 'userData'.

                         // =============
                         // class Session
                         // =============


}  // close namespace blpapi
}  // close namespace BloombergLP


#endif // ifdef __cplusplus

#endif // INCLUDED_BLPAPI_SESSION
