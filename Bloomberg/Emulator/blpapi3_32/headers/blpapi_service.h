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
// blpapi_service.h                                                   -*-C++-*-
#ifndef INCLUDED_BLPAPI_SERVICE
#define INCLUDED_BLPAPI_SERVICE

//@PURPOSE: A service which provides access to API data (provide or consume).
//
//@CLASSES:
//   blpapi::Service: The service which provides access to API data.
// blpapi::Operation: An operation which can be performed by the Service.
//
//@DESCRIPTION: This file defines a 'Service'.
// All API data is associated with a 'Service'. A service object is obtained
// from a Session and contains zero or more 'Operations'. A service can be a
// provider service (can generate API data) or a consumer service.

#ifndef INCLUDED_BLPAPI_DEFS
#include <blpapi_defs.h>
#endif

#ifndef INCLUDED_BLPAPI_TYPES
#include <blpapi_types.h>
#endif

#ifndef INCLUDED_BLPAPI_SCHEMA
#include <blpapi_schema.h>
#endif

#ifndef INCLUDED_BLPAPI_REQUEST
#include <blpapi_request.h>
#endif

#ifndef INCLUDED_BLPAPI_CORRELATIONID
#include <blpapi_correlationid.h>
#endif

#ifndef INCLUDED_BLPAPI_STREAMPROXY
#include <blpapi_streamproxy.h>
#endif

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

BLPAPI_EXPORT
const char* blpapi_Operation_name(blpapi_Operation_t *operation);

BLPAPI_EXPORT
const char* blpapi_Operation_description(blpapi_Operation_t *operation);

BLPAPI_EXPORT
int blpapi_Operation_requestDefinition(
                         blpapi_Operation_t                *operation,
                         blpapi_SchemaElementDefinition_t **requestDefinition);

BLPAPI_EXPORT
int blpapi_Operation_numResponseDefinitions(blpapi_Operation_t *operation);

BLPAPI_EXPORT
int blpapi_Operation_responseDefinition(
                         blpapi_Operation_t                *operation,
                         blpapi_SchemaElementDefinition_t **responseDefinition,
                         size_t                             index);

BLPAPI_EXPORT
int blpapi_Operation_responseDefinitionFromName(
                         blpapi_Operation_t                *operation,
                         blpapi_SchemaElementDefinition_t **responseDefinition,
                         const blpapi_Name_t               *name);

BLPAPI_EXPORT
const char* blpapi_Service_name(Service *service);

BLPAPI_EXPORT
const char* blpapi_Service_description(Service *service);

BLPAPI_EXPORT
int blpapi_Service_numOperations(Service *service);

BLPAPI_EXPORT
int blpapi_Service_numEventDefinitions(Service *service);

BLPAPI_EXPORT
int blpapi_Service_addRef(Service *service);

BLPAPI_EXPORT
void blpapi_Service_release(Service *service);

BLPAPI_EXPORT
const char* blpapi_Service_authorizationServiceName(Service *service);

BLPAPI_EXPORT
int blpapi_Service_getOperation(Service     *service,
                                blpapi_Operation_t  **operation,
                                const char           *nameString,
                                const blpapi_Name_t  *name);

BLPAPI_EXPORT
int blpapi_Service_getOperationAt(Service     *service,
                                  blpapi_Operation_t  **operation,
                                  size_t                index);

BLPAPI_EXPORT
int blpapi_Service_getEventDefinition(
                                 Service                  *service,
                                 blpapi_SchemaElementDefinition_t **result,
                                 const char                        *nameString,
                                 const blpapi_Name_t               *name);

BLPAPI_EXPORT
int blpapi_Service_getEventDefinitionAt(
                                    Service                  *service,
                                    blpapi_SchemaElementDefinition_t **result,
                                    size_t                             index);

BLPAPI_EXPORT
int blpapi_Service_createRequest(Service   *service,
                                 Request  **request,
                                 const char         *operation);

BLPAPI_EXPORT
int blpapi_Service_createAuthorizationRequest(Service   *service,
                                              Request  **request,
                                              const char         *operation);

BLPAPI_EXPORT
int blpapi_Service_createPublishEvent(Service  *service,
                                      Event   **event);

BLPAPI_EXPORT
int blpapi_Service_createAdminEvent(Service  *service,
                                    Event   **event);

BLPAPI_EXPORT
int blpapi_Service_createResponseEvent(
                                  Service              *service,
                                  const blpapi_CorrelationId_t  *correlationId,
                                  Event               **event);

BLPAPI_EXPORT int blpapi_Service_print(const Service *service,
                                       blpapi_StreamWriter_t   streamWriter,
                                       void                   *stream,
                                       int                     level,
                                       int                     spacesPerLevel);

#ifdef __cplusplus
}

#ifndef INCLUDED_BLPAPI_EXCEPTION
#include <blpapi_exception.h>
#endif

namespace BEmu {
//namespace BloombergLP {
//namespace blpapi {
                         // ===============
                         // class Operation
                         // ===============

//class Operation {
//    // Defines an operation which can be performed by a Service.
//    //
//    // Operation objects are obtained from a Service object. They
//    // provide read-only access to the schema of the Operations
//    // Request and the schema of the possible response.
//
//    blpapi_Operation_t *d_handle;
//
//  public:
//    Operation(blpapi_Operation_t *handle);
//
//    ~Operation();
//        // Destroy this Operation object.
//
//    // ACCESSORS
//
//    const char* name() const;
//        // Returns a pointer to a null-terminated, read-only string
//        // which contains the name of this operation. The pointer
//        // remains valid until this Operation is destroyed.
//
//    const char* description() const;
//        // Returns a pointer to a null-terminated, read-only string
//        // which contains a human readable description of this
//        // Operation. The pointer returned remains valid until this
//        // Operation is destroyed.
//
//    SchemaElementDefinition requestDefinition() const;
//        // Returns a read-only SchemaElementDefinition which defines
//        // the schema for this Operation.
//
//    int numResponseDefinitions() const;
//        // Returns the number of the response types that can be
//        // returned by this Operation.
//
//    SchemaElementDefinition responseDefinition(size_t index) const;
//        // Returns a read-only SchemaElementDefinition which defines
//        // the schema for the response that this Operation delivers.
//
//
//    SchemaElementDefinition responseDefinition(const Name& name) const;
//        // Returns a read-only 'SchemaElementDefinition' which defines
//        // the schema for the response that this 'Operation' delivers.
//
//    blpapi_Operation_t *handle() const;
//        // Returns handle to the underlying implementation.
//
//    bool isValid() const;
//        // Returns true if this 'Operation' is valid. That is, it was
//        // returned from a 'Service'.
//};
                         // =============
                         // class Service
                         // =============

// FREE OPERATORS
std::ostream& operator<<(std::ostream& stream, const Service& service);
    // Write the value of the specified 'service' object to the specified
    // output 'stream' in a single-line format, and return a reference to
    // 'stream'.  If 'stream' is not valid on entry, this operation has no
    // effect.  Note that this human-readable format is not fully specified,
    // can change without notice, and is logically equivalent to:
    //..
    //  print(stream, 0, -1);
    //..

// ============================================================================
//                      INLINE FUNCTION DEFINITIONS
// ============================================================================

//                            // ---------------
//                            // class Operation
//                            // ---------------
//inline
//Operation::Operation(blpapi_Operation_t *newHandle)
//: d_handle(newHandle)
//{
//}
//
//inline
//Operation::~Operation()
//{
//}
//
//inline
//const char* Operation::name() const
//{
//    if (!isValid()) {
//        ExceptionUtil::throwOnError(BLPAPI_ERROR_ILLEGAL_ARG);
//    }
//
//    return blpapi_Operation_name(d_handle);
//}
//
//inline
//const char* Operation::description() const
//{
//    if (!isValid()) {
//        ExceptionUtil::throwOnError(BLPAPI_ERROR_ILLEGAL_ARG);
//    }
//
//    return blpapi_Operation_description(d_handle);
//}
//
//inline
//SchemaElementDefinition Operation::requestDefinition() const
//{
//    blpapi_SchemaElementDefinition_t *definition = 0;
//
//    ExceptionUtil::throwOnError(
//            blpapi_Operation_requestDefinition(d_handle, &definition));
//    return SchemaElementDefinition(definition);
//}
//
//inline
//int Operation::numResponseDefinitions() const
//{
//    if (!isValid()) {
//        ExceptionUtil::throwOnError(BLPAPI_ERROR_ILLEGAL_ARG);
//    }
//
//    return blpapi_Operation_numResponseDefinitions(d_handle);
//}
//
//inline
//SchemaElementDefinition Operation::responseDefinition(size_t index) const
//{
//    blpapi_SchemaElementDefinition_t *definition;
//
//    ExceptionUtil::throwOnError(
//            blpapi_Operation_responseDefinition(d_handle, &definition, index));
//    return SchemaElementDefinition(definition);
//}
//
//inline
//SchemaElementDefinition Operation::responseDefinition(const Name& name) const
//{
//    blpapi_SchemaElementDefinition_t *definition;
//
//    ExceptionUtil::throwOnError(
//            blpapi_Operation_responseDefinitionFromName(
//                d_handle,
//                &definition,
//                name.impl()));
//    return SchemaElementDefinition(definition);
//}
//
//inline
//blpapi_Operation_t* Operation::handle() const
//{
//    return d_handle;
//}
//
//inline
//bool Operation::isValid() const
//{
//    return d_handle != 0;
//}

//}  // close namespace blpapi
//}  // close namespace BloombergLP
}  // close namespace BEmu

#endif // #ifdef __cplusplus
#endif // #ifndef INCLUDED_BLPAPI_SERVICE
