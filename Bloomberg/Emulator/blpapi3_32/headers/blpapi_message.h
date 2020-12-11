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
// blpapi_message.h                                                   -*-C++-*-
#ifndef INCLUDED_BLPAPI_MESSAGE
#define INCLUDED_BLPAPI_MESSAGE

//@PURPOSE: Defines a message containing elements.
//
//@CLASSES:
// blpapi::Message: individual message inside an event.
//
//@SEE_ALSO: blpapi_event
//
//@DESCRIPTION: This file defines a 'Message'. A 'Message' is contained in an
// 'Event' and contains 'Element's.

#ifndef INCLUDED_BLPAPI_CALL
#include <blpapi_call.h>
#endif

#ifndef INCLUDED_BLPAPI_CORRELATIONID
#include <blpapi_correlationid.h>
#endif

#ifndef INCLUDED_BLPAPI_DEFS
#include <blpapi_defs.h>
#endif

#ifndef INCLUDED_BLPAPI_ELEMENT
#include <blpapi_element.h>
#endif

#ifndef INCLUDED_BLPAPI_SERVICE
#include <blpapi_service.h>
#endif

#ifndef INCLUDED_BLPAPI_STREAMPROXY
#include <blpapi_streamproxy.h>
#endif

#ifndef INCLUDED_BLPAPI_TIMEPOINT
#include <blpapi_timepoint.h>
#endif

//struct blpapi_Message;
//typedef struct blpapi_Message blpapi_Message_t;

#ifdef __cplusplus
extern "C" {
#endif

BLPAPI_EXPORT
blpapi_Name_t* blpapi_Message_messageType(
        const blpapi_Message_t *message);

BLPAPI_EXPORT
const char* blpapi_Message_typeString(
        const blpapi_Message_t *message);

BLPAPI_EXPORT
const char* blpapi_Message_topicName(
        const blpapi_Message_t *message);

BLPAPI_EXPORT
Service* blpapi_Message_service(
        const Message *message);

BLPAPI_EXPORT
int blpapi_Message_numCorrelationIds(
        const blpapi_Message_t *message);

BLPAPI_EXPORT
blpapi_CorrelationId_t blpapi_Message_correlationId(
        const blpapi_Message_t *message,
        size_t index);

//BLPAPI_EXPORT
//blpapi_Element_t* blpapi_Message_elements(
//        const blpapi_Message_t *message);

BLPAPI_EXPORT
const char *blpapi_Message_privateData(
        const blpapi_Message_t *message,
        size_t *size);

BLPAPI_EXPORT
int blpapi_Message_fragmentType(
        const blpapi_Message_t *message);

BLPAPI_EXPORT
int blpapi_Message_recapType(
        const blpapi_Message_t *message);

BLPAPI_EXPORT
int blpapi_Message_print(const blpapi_Message_t *message,
                         blpapi_StreamWriter_t   streamWriter,
                         void                   *stream,
                         int                     indentLevel,
                         int                     spacesPerLevel);

BLPAPI_EXPORT
int blpapi_Message_addRef(const blpapi_Message_t *message);

BLPAPI_EXPORT
int blpapi_Message_release(const blpapi_Message_t *message);

BLPAPI_EXPORT
int blpapi_Message_timeReceived(
    const blpapi_Message_t *message,
    blpapi_TimePoint_t *timeReceived);

#ifdef __cplusplus
}

namespace BEmu {
//namespace BloombergLP {
//namespace blpapi {
                         // =============
                         // class Message
                         // =============


// FREE OPERATORS
std::ostream& operator<<(std::ostream& stream, const Message &message);
    // Write the value of the specified 'message' object to the specified
    // output 'stream' in a single-line format, and return a reference to
    // 'stream'.  If 'stream' is not valid on entry, this operation has no
    // effect.  Note that this human-readable format is not fully specified,
    // can change without notice, and is logically equivalent to:
    //..
    //  print(stream, 0, -1);
    //..

// ============================================================================
//                      INLINE AND TEMPLATE FUNCTION IMPLEMENTATIONS
// ============================================================================


//}  // close namespace blpapi
//}  // close namespace BloombergLP
}  // close namespace BEmu

#endif // #ifdef __cplusplus
#endif // #ifndef INCLUDED_BLPAPI_MESSAGE
