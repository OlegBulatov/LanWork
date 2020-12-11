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
// blpapi_sessionoptions.h                                            -*-C++-*-
#ifndef INCLUDED_BLPAPI_SESSIONOPTIONS
#define INCLUDED_BLPAPI_SESSIONOPTIONS

//@PURPOSE: A common interface shared between publish and consumer sessions.
//
//@CLASSES:
//  blpapi::SessionOptions: user specified options when creating a session.
//
//@SEE_ALSO: blpapi_abstractsession, blpapi_session, blpapi_providersession
//
//@DESCRIPTION: This file defines a 'SessionOptions' class which is used
// to specify various options during session creation.
//
//
///Usage
///-----
// The following snippet shows to use the SessionOptions when creating a
// 'Session'.
//..
// #include <blpapi_session.h>
// SessionOptions sessionOptions;
// sessionOptions.setServerHost("127.0.0.1");
// Session session(sessionOptions);
// if (!session.start()) {
//      std::cout << "Failed to start session." << std::endl;
//      return;
// }
//..

#ifndef INCLUDED_BLPAPI_CALL
#include <blpapi_call.h>
#endif

#ifndef INCLUDED_BLPAPI_CORRELATIONID
#include <blpapi_correlationid.h>
#endif

#ifndef INCLUDED_BLPAPI_DEFS
#include <blpapi_defs.h>
#endif

#ifndef INCLUDED_BLPAPI_EXCEPTION
#include <blpapi_exception.h>
#endif

#ifndef INCLUDED_BLPAPI_STREAMPROXY
#include <blpapi_streamproxy.h>
#endif

#ifndef INCLUDED_BLPAPI_TLSOPTIONS
#include <blpapi_tlsoptions.h>
#endif

#ifndef INCLUDED_BLPAPI_TYPES
#include <blpapi_types.h>
#endif

#include <blpapi_authoptions.h>

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

BLPAPI_EXPORT
blpapi_SessionOptions_t *blpapi_SessionOptions_create(void);

BLPAPI_EXPORT
blpapi_SessionOptions_t *blpapi_SessionOptions_duplicate(
        const blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
void blpapi_SessionOptions_copy(blpapi_SessionOptions_t       *lhs,
                                const blpapi_SessionOptions_t *rhs);

BLPAPI_EXPORT
void blpapi_SessionOptions_destroy(blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_setServerHost(blpapi_SessionOptions_t *parameters,
                                        const char              *serverHost);

BLPAPI_EXPORT
int blpapi_SessionOptions_setServerPort(blpapi_SessionOptions_t *parameters,
                                        unsigned short           serverPort);

BLPAPI_EXPORT
int blpapi_SessionOptions_setServerAddress(blpapi_SessionOptions_t *parameters,
                                           const char              *serverHost,
                                           unsigned short           serverPort,
                                           size_t                   index);

BLPAPI_EXPORT
int blpapi_SessionOptions_removeServerAddress(
                                           blpapi_SessionOptions_t *parameters,
                                           size_t                   index);

BLPAPI_EXPORT
int blpapi_SessionOptions_setConnectTimeout(
                               blpapi_SessionOptions_t *parameters,
                               unsigned int             timeoutInMilliseconds);

BLPAPI_EXPORT
int blpapi_SessionOptions_setDefaultServices(
                                     blpapi_SessionOptions_t *parameters,
                                     const char              *defaultServices);

BLPAPI_EXPORT
int blpapi_SessionOptions_setDefaultSubscriptionService(
                                   blpapi_SessionOptions_t *parameters,
                                   const char              *serviceIdentifier);

BLPAPI_EXPORT
void blpapi_SessionOptions_setDefaultTopicPrefix(
                                           blpapi_SessionOptions_t *parameters,
                                           const char              *prefix);

BLPAPI_EXPORT
void blpapi_SessionOptions_setAllowMultipleCorrelatorsPerMsg(
                      blpapi_SessionOptions_t *parameters,
                      int                      allowMultipleCorrelatorsPerMsg);

BLPAPI_EXPORT
void blpapi_SessionOptions_setClientMode(blpapi_SessionOptions_t *parameters,
                                         int                      clientMode);

BLPAPI_EXPORT
void blpapi_SessionOptions_setMaxPendingRequests(
                                  blpapi_SessionOptions_t *parameters,
                                  int                      maxPendingRequests);

BLPAPI_EXPORT
void blpapi_SessionOptions_setAutoRestartOnDisconnection(
                                         blpapi_SessionOptions_t *parameters,
                                         int                      autoRestart);

BLPAPI_EXPORT
void blpapi_SessionOptions_setAutoRestart(
                                         blpapi_SessionOptions_t *parameters,
                                         int                      autoRestart);
BLPAPI_EXPORT
int blpapi_SessionOptions_setSessionIdentityOptions(
                                blpapi_SessionOptions_t    *parameters,
                                const blpapi_AuthOptions_t *authOptions,
                                blpapi_CorrelationId_t     *cid);

BLPAPI_EXPORT
void blpapi_SessionOptions_setAuthenticationOptions(
                                         blpapi_SessionOptions_t *parameters,
                                         const char              *authOptions);

BLPAPI_EXPORT
void blpapi_SessionOptions_setNumStartAttempts(
                                    blpapi_SessionOptions_t *parameters,
                                    int                      numStartAttempts);

BLPAPI_EXPORT
void blpapi_SessionOptions_setMaxEventQueueSize(
                                   blpapi_SessionOptions_t *parameters,
                                   size_t                   maxEventQueueSize);

BLPAPI_EXPORT
int blpapi_SessionOptions_setSlowConsumerWarningHiWaterMark(
                                         blpapi_SessionOptions_t *parameters,
                                         float                    hiWaterMark);

BLPAPI_EXPORT
int blpapi_SessionOptions_setSlowConsumerWarningLoWaterMark(
                                         blpapi_SessionOptions_t *parameters,
                                         float                    loWaterMark);

BLPAPI_EXPORT
int blpapi_SessionOptions_setDefaultKeepAliveInactivityTime(
                                     blpapi_SessionOptions_t *parameters,
                                     int                      inactivityMsecs);

BLPAPI_EXPORT
int blpapi_SessionOptions_setDefaultKeepAliveResponseTimeout(
                                        blpapi_SessionOptions_t *parameters,
                                        int                      timeoutMsecs);

BLPAPI_EXPORT
int blpapi_SessionOptions_setKeepAliveEnabled(
                                           blpapi_SessionOptions_t *parameters,
                                           int                      isEnabled);

BLPAPI_EXPORT
void blpapi_SessionOptions_setRecordSubscriptionDataReceiveTimes(
                                        blpapi_SessionOptions_t *parameters,
                                        int                      shouldRecord);

BLPAPI_EXPORT
int blpapi_SessionOptions_setServiceCheckTimeout(
                                        blpapi_SessionOptions_t *paramaters,
                                        int                      timeoutMsecs);

BLPAPI_EXPORT
int blpapi_SessionOptions_setServiceDownloadTimeout(
                                        blpapi_SessionOptions_t *paramaters,
                                        int                      timeoutMsecs);

BLPAPI_EXPORT
void blpapi_SessionOptions_setTlsOptions(
                                        blpapi_SessionOptions_t   *paramaters,
                                        const blpapi_TlsOptions_t *tlsOptions);

BLPAPI_EXPORT
int blpapi_SessionOptions_setFlushPublishedEventsTimeout(
                                        blpapi_SessionOptions_t *paramaters,
                                        int                      timeoutMsecs);

BLPAPI_EXPORT
int blpapi_SessionOptions_setBandwidthSaveModeDisabled(
                            blpapi_SessionOptions_t *parameters,
                            int                      disableBandwidthSaveMode);

BLPAPI_EXPORT
const char *blpapi_SessionOptions_serverHost(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
unsigned int blpapi_SessionOptions_serverPort(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_numServerAddresses(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_getServerAddress(
                                          blpapi_SessionOptions_t  *parameters,
                                          const char              **serverHost,
                                          unsigned short           *serverPort,
                                          size_t                    index);

BLPAPI_EXPORT
unsigned int blpapi_SessionOptions_connectTimeout(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
const char *blpapi_SessionOptions_defaultServices(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
const char *blpapi_SessionOptions_defaultSubscriptionService(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
const char *blpapi_SessionOptions_defaultTopicPrefix(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_allowMultipleCorrelatorsPerMsg(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_clientMode(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_maxPendingRequests(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_autoRestartOnDisconnection(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_autoRestart(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
const char *blpapi_SessionOptions_authenticationOptions(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_numStartAttempts(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
size_t blpapi_SessionOptions_maxEventQueueSize(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
float blpapi_SessionOptions_slowConsumerWarningHiWaterMark(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
float blpapi_SessionOptions_slowConsumerWarningLoWaterMark(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_defaultKeepAliveInactivityTime(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_defaultKeepAliveResponseTimeout(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_keepAliveEnabled(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_recordSubscriptionDataReceiveTimes(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_serviceCheckTimeout(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_serviceDownloadTimeout(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_print(blpapi_SessionOptions_t *parameters,
                                blpapi_StreamWriter_t    streamWriter,
                                void                    *stream,
                                int                      indentLevel,
                                int                      spacesPerLevel);

BLPAPI_EXPORT
int blpapi_SessionOptions_flushPublishedEventsTimeout(
                                          blpapi_SessionOptions_t *parameters);

BLPAPI_EXPORT
int blpapi_SessionOptions_bandwidthSaveModeDisabled(
                                          blpapi_SessionOptions_t *parameters);

#ifdef __cplusplus
}

namespace BEmu{
//namespace BloombergLP {
//namespace blpapi {

// FREE OPERATORS
std::ostream& operator<<(std::ostream&         stream,
                         const SessionOptions& sessionOptions);
    // Write the value of the specified 'sessionOptions' object to the
    // specified output 'stream' in a single-line format, and return a
    // reference to 'stream'.  If 'stream' is not valid on entry, this
    // operation has no effect.  Note that this human-readable format is not
    // fully specified and can change without notice, and is logically
    // equivalent to:
    // ..
    // print(stream, 0, -1);
    // ..

// ============================================================================
//                      INLINE FUNCTION DEFINITIONS
// ============================================================================


}  // close namespace BEmu
//}  // close namespace blpapi
//}  // close namespace BloombergLP

#endif // #ifdef __cplusplus
#endif // #ifndef INCLUDED_BLPAPI_SESSIONOPTIONS
