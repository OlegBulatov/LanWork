unit blpapi_h;

interface

const
  BLPAPI_ELEMENT_INDEX_END: Cardinal =  $ffffffff;

  BLPAPI_CORRELATION_TYPE_UNSET   : Word = 0;
  BLPAPI_CORRELATION_TYPE_INT     : Word = 1;
  BLPAPI_CORRELATION_TYPE_POINTER : Word = 2;
  BLPAPI_CORRELATION_TYPE_AUTOGEN : Word = 3;
  BLPAPI_CORRELATION_MAX_CLASS_ID : Word = $FFFF;

  BLPAPI_EVENTTYPE_ADMIN                = 1;
  BLPAPI_EVENTTYPE_SESSION_STATUS       = 2;
  BLPAPI_EVENTTYPE_SUBSCRIPTION_STATUS  = 3;
  BLPAPI_EVENTTYPE_REQUEST_STATUS       = 4;
  BLPAPI_EVENTTYPE_RESPONSE             = 5;
  BLPAPI_EVENTTYPE_PARTIAL_RESPONSE     = 6;
  BLPAPI_EVENTTYPE_SUBSCRIPTION_DATA    = 8;
  BLPAPI_EVENTTYPE_SERVICE_STATUS       = 9;
  BLPAPI_EVENTTYPE_TIMEOUT              = 10;
  BLPAPI_EVENTTYPE_AUTHORIZATION_STATUS = 11;
  BLPAPI_EVENTTYPE_RESOLUTION_STATUS    = 12;
  BLPAPI_EVENTTYPE_TOPIC_STATUS         = 13;
  BLPAPI_EVENTTYPE_TOKEN_STATUS         = 14;
  BLPAPI_EVENTTYPE_REQUEST              = 15;

type
  size_t = type Cardinal;

  blpapi_DataType_t = (
    BLPAPI_DATATYPE_NONE,          // = 0
    BLPAPI_DATATYPE_BOOL,          // = 1     // Bool
    BLPAPI_DATATYPE_CHAR,          // = 2     // Char
    BLPAPI_DATATYPE_BYTE,          // = 3     // Unsigned 8 bit value
    BLPAPI_DATATYPE_INT32,         // = 4     // 32 bit Integer
    BLPAPI_DATATYPE_INT64,         // = 5     // 64 bit Integer
    BLPAPI_DATATYPE_FLOAT32,       // = 6     // 32 bit Floating point - IEEE
    BLPAPI_DATATYPE_FLOAT64,       // = 7     // 64 bit Floating point - IEEE
    BLPAPI_DATATYPE_STRING,        // = 8     // ASCIIZ string
    BLPAPI_DATATYPE_BYTEARRAY,     // = 9     // Opaque binary data
    BLPAPI_DATATYPE_DATE,          // = 10    // Date
    BLPAPI_DATATYPE_TIME,          // = 11    // Timestamp
    BLPAPI_DATATYPE_DECIMAL,       // = 12    // Currently Unsupported
    BLPAPI_DATATYPE_DATETIME,      // = 13    // Date and time
    BLPAPI_DATATYPE_ENUMERATION,   // = 14    // An opaque enumeration
    BLPAPI_DATATYPE_SEQUENCE,      // = 15    // Sequence type
    BLPAPI_DATATYPE_CHOICE,        // = 16    // Choice type
    BLPAPI_DATATYPE_CORRELATION_ID // = 17    // Used for some internal messages
  );

  blpapi_Bool_t    = type WordBool;
  blpapi_Char_t    = type Char;
  blpapi_UChar_t   = type Byte;
  blpapi_Int16_t   = type Smallint;
  blpapi_UInt16_t  = type Word;
  blpapi_Int32_t   = type integer;
  blpapi_UInt32_t  = type Cardinal;
  blpapi_Int64_t   = type Int64;
  blpapi_UInt64_t  = type Int64; // Тип UInt64 в Delphi отсутствует
  blpapi_Float32_t = type Single;
  blpapi_Float64_t = type Double;

  P_blpapi_Bool_t    = ^blpapi_Bool_t;
  P_blpapi_Char_t    = ^blpapi_Char_t;
  P_blpapi_UChar_t   = ^blpapi_UChar_t;
  P_blpapi_Int16_t   = ^blpapi_Int16_t;
  P_blpapi_UInt16_t  = ^blpapi_UInt16_t;
  P_blpapi_Int32_t   = ^blpapi_Int32_t;
  P_blpapi_UInt32_t  = ^blpapi_UInt32_t;
  P_blpapi_Int64_t   = ^blpapi_Int64_t;
  P_blpapi_UInt64_t  = ^blpapi_UInt64_t;
  P_blpapi_Float32_t = ^blpapi_Float32_t;
  P_blpapi_Float64_t = ^blpapi_Float64_t;

  blpapi_Datetime_t = record
    parts:        blpapi_UChar_t;        // bitmask of date/time parts that are set
    hours:        blpapi_UChar_t;
    minutes:      blpapi_UChar_t;
    seconds:      blpapi_UChar_t;
    milliSeconds: blpapi_UInt16_t;
    month:        blpapi_UChar_t;
    day:          blpapi_UChar_t;
    year:         blpapi_UInt16_t;
    offset:       blpapi_Int16_t;       // (signed) minutes ahead of UTC
    end;

  P_blpapi_Datetime_t = ^blpapi_Datetime_t;

  PPChar = ^PChar;

  P_blpapi_SessionOptions_t  = type Pointer;
  P_blpapi_Session_t         = type Pointer;
  P_blpapi_EventHandler_t    = type Pointer;
  P_blpapi_EventDispatcher_t = type Pointer;
  P_blpapi_Service_t         = type Pointer;
  PP_blpapi_Service_t        = ^P_blpapi_Service_t;
  P_blpapi_Request_t         = type Pointer;
  PP_blpapi_Request_t        = ^P_blpapi_Request_t;
  P_blpapi_Element_t         = type Pointer;
  PP_blpapi_Element_t        = ^P_blpapi_Element_t;
  P_blpapi_ManagedPtr_t      = type Pointer;
  P_blpapi_Name_t            = type Pointer;
  P_blpapi_Identity_t        = type Pointer;
  P_blpapi_EventQueue_t      = type Pointer;
  P_blpapi_Event_t           = type Pointer;
  PP_blpapi_Event_t          = ^P_blpapi_Event_t;
  P_blpapi_MessageIterator_t = type Pointer;
  P_blpapi_Message_t         = type Pointer;
  PP_blpapi_Message_t        = ^P_blpapi_Message_t;

  blpapi_ManagedPtr_ManagerFunction_t = function (
    managedPtr: P_blpapi_ManagedPtr_t;
    const srcPtr: P_blpapi_ManagedPtr_t;
    operation: integer
    ): integer; cdecl;

  blpapi_ManagedPtr_t_data_ = record
    case Integer of
      0: (intValue: integer);
      1: (ptr: Pointer);
    end;

  blpapi_ManagedPtr_t = record
    apointer: Pointer;
    userData: array [0..3] of blpapi_ManagedPtr_t_data_;
    manager: blpapi_ManagedPtr_ManagerFunction_t;
    end;

  blpapi_CorrelationId_t = record
    size: Cardinal;             // fill in the size of this struct
    valueType: Cardinal;        // type of value held by this correlation id
    classId: Cardinal;          // user defined classification id
    reserved: Cardinal;         // for internal use must be 0
    case Integer of
      0: (intValue: blpapi_UInt64_t);
      1: (ptrValue: blpapi_ManagedPtr_t);
    end;

  P_blpapi_CorrelationId_t = ^blpapi_CorrelationId_t;

{ blpapi_error.h }

function blpapi_getLastErrorDescription(
  resultCode: integer
): PChar;
  cdecl; external 'blpapi3_32.dll';

{ blpapi_sessionoptions.h }

function blpapi_SessionOptions_create: P_blpapi_SessionOptions_t;
  cdecl; external 'blpapi3_32.dll';

function blpapi_SessionOptions_setServerHost(
  parameters:        P_blpapi_SessionOptions_t;
  const serverHost:  PChar
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_SessionOptions_setServerPort(
  parameters:        P_blpapi_SessionOptions_t;
  serverPort:        Word
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_SessionOptions_serverHost(
  parameters:        P_blpapi_SessionOptions_t
): PChar;
  cdecl; external 'blpapi3_32.dll';

function blpapi_SessionOptions_serverPort(
  parameters:        P_blpapi_SessionOptions_t
): Longword;
  cdecl; external 'blpapi3_32.dll';

procedure blpapi_SessionOptions_destroy(
   parameters: P_blpapi_SessionOptions_t
);
  cdecl; external 'blpapi3_32.dll';

{ blpapi_session.h }

function blpapi_Session_create(
  parameters:        P_blpapi_SessionOptions_t;
  handler:           P_blpapi_EventHandler_t;
  dispatcher:        P_blpapi_EventDispatcher_t;
  userData:          Pointer
): P_blpapi_Session_t;
  cdecl; external 'blpapi3_32.dll';

procedure blpapi_Session_destroy(
  session: P_blpapi_Session_t
);
  cdecl; external 'blpapi3_32.dll';

function blpapi_Session_start(
  session:           P_blpapi_Session_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Session_stop(
  session: P_blpapi_Session_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Session_openService(
  session:           P_blpapi_Session_t;
  const serviceName: PChar
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Session_getService(
  session:           P_blpapi_Session_t;
  service:           PP_blpapi_Service_t;
  const serviceName: PChar
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Session_sendRequest(
  session: P_blpapi_Session_t;
  const request: P_blpapi_Request_t;
  correlationId: P_blpapi_CorrelationId_t;
  identity: P_blpapi_Identity_t;
  eventQueue: P_blpapi_EventQueue_t;
  const requestLabeL: PChar;
  requestLabelLen: integer
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Session_nextEvent(
  session: P_blpapi_Session_t;
  eventPointer: PP_blpapi_Event_t;
  timeoutInMilliseconds: Cardinal
): integer;
  cdecl; external 'blpapi3_32.dll';

{ blpapi_service.h }

function blpapi_Service_createRequest(
  service:           P_blpapi_Service_t;
  request:           PP_blpapi_Request_t;
  const operation:   PChar
): integer;
  cdecl; external 'blpapi3_32.dll';

{ blpapi_request.h }

procedure blpapi_Request_destroy(
  request: P_blpapi_Request_t
);
  cdecl; external 'blpapi3_32.dll';

function blpapi_Request_elements(
  request:           P_blpapi_Request_t
): P_blpapi_Element_t;
  cdecl; external 'blpapi3_32.dll';

{ blpapi_element.h }

function blpapi_Element_nameString(
  const element: P_blpapi_Element_t
): PChar;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getElement(
  const element:     P_blpapi_Element_t;
  result:            PP_blpapi_Element_t;
  const nameString:  PChar;
  const name:        P_blpapi_Name_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_setElementString(
  element: P_blpapi_Element_t;
  const nameString: PChar;
  const name: P_blpapi_Name_t;
  const value: PChar
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_setValueString(
  element: P_blpapi_Element_t;
  const value: PChar;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_hasElement(
  const element: P_blpapi_Element_t;
  const nameString: PChar;
  const name: P_blpapi_Name_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_numValues(
  const element: P_blpapi_Element_t
): size_t;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_numElements(
  const element: P_blpapi_Element_t
): size_t;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getElementAt(
  const element: P_blpapi_Element_t;
  result: PP_blpapi_Element_t;
  position: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_datatype (
  const element: P_blpapi_Element_t
): blpapi_DataType_t;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_isArray(
  const element: P_blpapi_Element_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_isComplexType(
  const element: P_blpapi_Element_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsElement(
  const element: P_blpapi_Element_t;
  buffer: PP_blpapi_Element_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsBool(
  const element: P_blpapi_Element_t;
  buffer: P_blpapi_Bool_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsChar(
  const element: P_blpapi_Element_t;
  buffer: P_blpapi_Char_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsInt32(
  const element: P_blpapi_Element_t;
  buffer: P_blpapi_Int32_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsInt64(
  const element: P_blpapi_Element_t;
  buffer: P_blpapi_Int64_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsFloat32(
  const element: P_blpapi_Element_t;
  buffer: P_blpapi_Float32_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsFloat64(
  const element: P_blpapi_Element_t;
  buffer: P_blpapi_Float64_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsString(
  const element: P_blpapi_Element_t;
  const buffer: PPChar;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Element_getValueAsDatetime(
  const element: P_blpapi_Element_t;
  buffer: P_blpapi_Datetime_t;
  index: size_t
): integer;
  cdecl; external 'blpapi3_32.dll';

{ blpapi_event.h }

function blpapi_Event_eventType(
  const event: P_blpapi_Event_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Event_release(
  const event: P_blpapi_Event_t
): integer;
  cdecl; external 'blpapi3_32.dll';

{ blpapi_message.h }

function blpapi_MessageIterator_create(
  const event: P_blpapi_Event_t
): P_blpapi_MessageIterator_t;
  cdecl; external 'blpapi3_32.dll';

function blpapi_MessageIterator_next(
  iterator: P_blpapi_MessageIterator_t;
  result: PP_blpapi_Message_t
): integer;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Message_correlationId(
  const imessage: P_blpapi_Message_t;
  index: size_t
): blpapi_CorrelationId_t;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Message_elements(
  const imessage: P_blpapi_Message_t
): P_blpapi_Element_t;
  cdecl; external 'blpapi3_32.dll';

function blpapi_Message_typeString(
  const imessage: P_blpapi_Message_t
): PChar;
  cdecl; external 'blpapi3_32.dll';

procedure blpapi_MessageIterator_destroy(
  iterator: P_blpapi_MessageIterator_t
);
  cdecl; external 'blpapi3_32.dll';





implementation

end.
