unit blpapi_inc;

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

  PPChar = ^PAnsiChar;

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

  blpapi_StreamWriter_t = function (
    const data: PAnsiChar;
    length: integer;
    stream: Pointer
  ): integer; cdecl;

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

  Tblpapi_getLastErrorDescription = function (
    resultCode: integer
  ): PAnsiChar;
  cdecl;

{ blpapi_sessionoptions.h }

  Tblpapi_SessionOptions_create = function: P_blpapi_SessionOptions_t;
  cdecl;

  Tblpapi_SessionOptions_setServerHost = function (
    parameters:        P_blpapi_SessionOptions_t;
    const serverHost:  PAnsiChar
  ): integer;
  cdecl;

  Tblpapi_SessionOptions_setServerPort = function (
    parameters:        P_blpapi_SessionOptions_t;
    serverPort:        Word
  ): integer;
  cdecl;

  Tblpapi_SessionOptions_serverHost = function (
    parameters:        P_blpapi_SessionOptions_t
  ): PAnsiChar;
  cdecl;

  Tblpapi_SessionOptions_serverPort = function (
    parameters:        P_blpapi_SessionOptions_t
  ): Longword;
  cdecl;

  Tblpapi_SessionOptions_destroy = procedure (
    parameters: P_blpapi_SessionOptions_t
  );
  cdecl;

{ blpapi_session.h }

  Tblpapi_Session_create = function (
    parameters:        P_blpapi_SessionOptions_t;
    handler:           P_blpapi_EventHandler_t;
    dispatcher:        P_blpapi_EventDispatcher_t;
    userData:          Pointer
  ): P_blpapi_Session_t;
  cdecl;

  Tblpapi_Session_destroy = procedure (
    session: P_blpapi_Session_t
  );
  cdecl;

  Tblpapi_Session_start = function (
    session:           P_blpapi_Session_t
  ): integer;
  cdecl;

  Tblpapi_Session_stop = function (
    session: P_blpapi_Session_t
  ): integer;
  cdecl;

  Tblpapi_Session_openService = function (
    session:           P_blpapi_Session_t;
    const serviceName: PAnsiChar
  ): integer;
  cdecl;

  Tblpapi_Session_getService = function (
    session:           P_blpapi_Session_t;
    service:           PP_blpapi_Service_t;
    const serviceName: PAnsiChar
  ): integer;
  cdecl;

  Tblpapi_Session_sendRequest = function (
    session: P_blpapi_Session_t;
    const request: P_blpapi_Request_t;
    correlationId: P_blpapi_CorrelationId_t;
    identity: P_blpapi_Identity_t;
    eventQueue: P_blpapi_EventQueue_t;
    const requestLabeL: PAnsiChar;
    requestLabelLen: integer
  ): integer;
  cdecl;

  Tblpapi_Session_nextEvent = function (
    session: P_blpapi_Session_t;
    eventPointer: PP_blpapi_Event_t;
    timeoutInMilliseconds: Cardinal
  ): integer;
  cdecl;

{ blpapi_service.h }

  Tblpapi_Service_createRequest = function (
    service:           P_blpapi_Service_t;
    request:           PP_blpapi_Request_t;
    const operation:   PAnsiChar
  ): integer;
  cdecl;

{ blpapi_request.h }

  Tblpapi_Request_destroy = procedure (
    request: P_blpapi_Request_t
  );
  cdecl;

  Tblpapi_Request_elements = function (
    request:           P_blpapi_Request_t
  ): P_blpapi_Element_t;
  cdecl;

{ blpapi_element.h }

  Tblpapi_Element_print = function (
    const element: P_blpapi_Element_t;
    streamWriter: blpapi_StreamWriter_t;
    stream: Pointer;
    level: integer;
    spacesPerLevel: integer
  ):  integer;
  cdecl;

  Tblpapi_Element_nameString = function (
    const element: P_blpapi_Element_t
  ): PAnsiChar;
  cdecl;

  Tblpapi_Element_getElement = function (
    const element:     P_blpapi_Element_t;
    result:            PP_blpapi_Element_t;
    const nameString:  PAnsiChar;
    const name:        P_blpapi_Name_t
  ): integer;
  cdecl;

  Tblpapi_Element_appendElement = function (
    element: P_blpapi_Element_t;
    appendedElement: PP_blpapi_Element_t
  ): integer;
  cdecl;

  Tblpapi_Element_setElementString = function (
    element: P_blpapi_Element_t;
    const nameString: PAnsiChar;
    const name: P_blpapi_Name_t;
    const value: PAnsiChar
  ): integer;
  cdecl;

  Tblpapi_Element_setValueString = function (
    element: P_blpapi_Element_t;
    const value: PAnsiChar;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_hasElement = function (
    const element: P_blpapi_Element_t;
    const nameString: PAnsiChar;
    const name: P_blpapi_Name_t
  ): integer;
  cdecl;

  Tblpapi_Element_numValues = function (
    const element: P_blpapi_Element_t
  ): size_t;
  cdecl;

  Tblpapi_Element_numElements = function (
    const element: P_blpapi_Element_t
  ): size_t;
  cdecl;

  Tblpapi_Element_getElementAt = function (
    const element: P_blpapi_Element_t;
    result: PP_blpapi_Element_t;
    position: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_datatype = function (
    const element: P_blpapi_Element_t
  ): blpapi_DataType_t;
  cdecl;

  Tblpapi_Element_isArray = function (
    const element: P_blpapi_Element_t
  ): integer;
  cdecl;

  Tblpapi_Element_isComplexType = function (
    const element: P_blpapi_Element_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsElement = function (
    const element: P_blpapi_Element_t;
    buffer: PP_blpapi_Element_t;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsBool = function (
    const element: P_blpapi_Element_t;
    buffer: P_blpapi_Bool_t;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsChar = function (
    const element: P_blpapi_Element_t;
    buffer: P_blpapi_Char_t;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsInt32 = function (
    const element: P_blpapi_Element_t;
    buffer: P_blpapi_Int32_t;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsInt64 = function (
    const element: P_blpapi_Element_t;
    buffer: P_blpapi_Int64_t;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsFloat32 = function (
    const element: P_blpapi_Element_t;
    buffer: P_blpapi_Float32_t;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsFloat64 = function (
    const element: P_blpapi_Element_t;
    buffer: P_blpapi_Float64_t;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsString = function (
    const element: P_blpapi_Element_t;
    const buffer: PPChar;
    index: size_t
  ): integer;
  cdecl;

  Tblpapi_Element_getValueAsDatetime = function (
    const element: P_blpapi_Element_t;
    buffer: P_blpapi_Datetime_t;
    index: size_t
  ): integer;
  cdecl;

{ blpapi_event.h }

  Tblpapi_Event_eventType = function (
    const event: P_blpapi_Event_t
  ): integer;
  cdecl;

  Tblpapi_Event_release = function (
    const event: P_blpapi_Event_t
  ): integer;
  cdecl;

{ blpapi_message.h }

  Tblpapi_MessageIterator_create = function (
    const event: P_blpapi_Event_t
  ): P_blpapi_MessageIterator_t;
  cdecl;

  Tblpapi_MessageIterator_next = function (
    iterator: P_blpapi_MessageIterator_t;
    result: PP_blpapi_Message_t
  ): integer;
  cdecl;

  Tblpapi_Message_correlationId = function (
    const imessage: P_blpapi_Message_t;
    index: size_t
  ): blpapi_CorrelationId_t;
  cdecl;

  Tblpapi_Message_elements = function (
    const imessage: P_blpapi_Message_t
  ): P_blpapi_Element_t;
  cdecl;

  Tblpapi_Message_typeString = function (
    const imessage: P_blpapi_Message_t
  ): PAnsiChar;
  cdecl;

  Tblpapi_MessageIterator_destroy = procedure (
    iterator: P_blpapi_MessageIterator_t
  );
  cdecl;

implementation


end.
