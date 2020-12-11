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
// blpapi_abstractsession.h                                           -*-C++-*-
#ifndef INCLUDED_BLPAPI_ABSTRACTSESSION
#define INCLUDED_BLPAPI_ABSTRACTSESSION

//@PURPOSE: A common interface shared between publish and consumer sessions.
//
//@CLASSES:
// blpapi::AbstractSession: shared interface between different session types.
//
//@SEE_ALSO: blpapi_session, blpapi_providersession
//
//@DESCRIPTION: This file defines an abstract class 'AbstractSession' - an
// interfaces which are shared between its concrete implementations 'Session'
// and 'ProviderSession'.
//
///SERVICE IDENTIFIER
///------------------
// A service identifier is the fully qualified service name which uniquely
// identifies the service in the API infrastructure.
// A service must be of the form '//<namespace>/<local-name>' where
// '<namespace>' and '<local-name>' are non-empty strings of characters from
// the set '[-_.a-zA-Z0-9]'. Service identifiers are case-insensitive, but
// clients are encouraged to prefer identifiers without upper-case characters.
// Note that the <namespace> and <local-name> cannot contain the character
// '/'.

#include <blpapi_authoptions.h>

#ifndef INCLUDED_BLPAPI_CORRELATIONID
#include <blpapi_correlationid.h>
#endif

#ifndef INCLUDED_BLPAPI_CALL
#include <blpapi_call.h>
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

#ifndef INCLUDED_BLPAPI_EXCEPTION
#include <blpapi_exceptionutil.h>
#endif

#ifndef INCLUDED_BLPAPI_IDENTITY
#include <blpapi_identity.h>
#endif

#ifndef INCLUDED_BLPAPI_REQUEST
#include <blpapi_request.h>
#endif

#ifndef INCLUDED_BLPAPI_SERVICE
#include <blpapi_service.h>
#endif

#ifndef INCLUDED_BLPAPI_TYPES
#include <blpapi_types.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

// All of the blpapi_UserHandle_* functions have been deprecated. Please use
// blpapi_Identity_* versions of these functions instead.

BLPAPI_EXPORT
void blpapi_UserHandle_release(blpapi_UserHandle_t *handle);

BLPAPI_EXPORT
int blpapi_UserHandle_addRef(blpapi_UserHandle_t *handle);

BLPAPI_EXPORT
int blpapi_UserHandle_hasEntitlements(
        const blpapi_UserHandle_t *handle,
        const Service    *service,
        const blpapi_Element_t    *eidElement,
        const int                 *entitlementIds,
        size_t                     numEntitlements,
        int                       *failedEntitlements,
        int                       *failedEntitlementsCount);

BLPAPI_EXPORT
int blpapi_AbstractSession_cancel(
        blpapi_AbstractSession_t     *session,
        const blpapi_CorrelationId_t *correlationIds,
        size_t                        numCorrelationIds,
        const char                   *requestLabel,
        int                           requestLabelLen);

BLPAPI_EXPORT
int blpapi_AbstractSession_sendAuthorizationRequest(
        blpapi_AbstractSession_t *session,
        const Request   *request,
        blpapi_Identity_t        *identity,
        blpapi_CorrelationId_t   *correlationId,
        blpapi_EventQueue_t      *eventQueue,
        const char               *requestLabel,
        int                       requestLabelLen);

BLPAPI_EXPORT
int blpapi_AbstractSession_openService(
        blpapi_AbstractSession_t *session,
        const char               *serviceIdentifier);

BLPAPI_EXPORT
int blpapi_AbstractSession_openServiceAsync(
        blpapi_AbstractSession_t *session,
        const char               *serviceIdentifier,
        blpapi_CorrelationId_t   *correlationId);

BLPAPI_EXPORT
int blpapi_AbstractSession_generateToken(
        blpapi_AbstractSession_t *session,
        blpapi_CorrelationId_t   *correlationId,
        blpapi_EventQueue_t      *eventQueue);

BLPAPI_EXPORT
int blpapi_AbstractSession_generateManualToken(
        blpapi_AbstractSession_t *session,
        blpapi_CorrelationId_t   *correlationId,
        const char               *user,
        const char               *manualIp,
        blpapi_EventQueue_t      *eventQueue);

BLPAPI_EXPORT
int blpapi_AbstractSession_getService(
        blpapi_AbstractSession_t  *session,
	Service         **service,
        const char                *serviceIdentifier);

BLPAPI_EXPORT
blpapi_Identity_t *blpapi_AbstractSession_createIdentity(
        blpapi_AbstractSession_t *session);

BLPAPI_EXPORT
int blpapi_AbstractSession_generateAuthorizedIdentityAsync(
        blpapi_AbstractSession_t   *session,
        const blpapi_AuthOptions_t *authOptions,
        blpapi_CorrelationId_t     *cid);

BLPAPI_EXPORT
int blpapi_AbstractSession_getAuthorizedIdentity(
        blpapi_AbstractSession_t     *session,
        const blpapi_CorrelationId_t *cid,
        blpapi_Identity_t            **identity);

#ifdef __cplusplus
}

#ifndef INCLUDED_VECTOR
#include <vector>
#define INCLUDED_VECTOR
#endif



#endif // #ifdef __cplusplus
#endif // #ifndef INCLUDED_BLPAPI_ABSTRACTSESSION
