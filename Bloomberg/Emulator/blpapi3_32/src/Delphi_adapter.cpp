// Delphi_adapter.cpp : Определяет экспортированные функции для приложения DLL.
//

#include "stdafx.h"
//#include "delphi_adapter.h"
#define BLPAPI_BUILD true
#include "api_selector.h"
#include "blpapi_session.h"
#include "blpapi_sessionoptions.h"
#include "blpapi_service.h"

class SimpleException : public std::exception
{
	virtual const char* what() const throw()
	{
		return "Ugly exception happened";
	}
} sessionEx;

extern "C" {
	BLPAPI_EXPORT	
	Request* blpapi_Request_elements(
		Request *request);

	BLPAPI_EXPORT
		int blpapi_Element_getElement(
			const void *element,
			Element **result,
			const char* nameString,
			const Name *name);
	BLPAPI_EXPORT
		int blpapi_Element_setValueString(
			Element *element,
			const char *value,
			size_t index);

	BLPAPI_EXPORT int blpapi_Element_print(
		const void* element,
		blpapi_StreamWriter_t streamWriter,
		void *stream,
		int level,
		int spacesPerLevel);

	BLPAPI_EXPORT
		void blpapi_Request_destroy(
			Request *request);

	BLPAPI_EXPORT
		int blpapi_Event_eventType(
			const Event *event);

	BLPAPI_EXPORT
		int blpapi_Event_release(
			const Event *event);

	BLPAPI_EXPORT
		MessageIterator* blpapi_MessageIterator_create(
			const Event *event);

	BLPAPI_EXPORT
		void blpapi_MessageIterator_destroy(
			MessageIterator* iterator);

	BLPAPI_EXPORT
		int blpapi_MessageIterator_next(
			MessageIterator* iterator,
			Message** result);

	BLPAPI_EXPORT
		Element* blpapi_Message_elements(
			const Message *message);

	BLPAPI_EXPORT
		int blpapi_Element_hasElement(
			const Element *element,
			const char* nameString,
			const Name *name);
}

SessionOptions* blpapi_SessionOptions_create() {
	
	return new SessionOptions();
}


SessionOptions* blpapi_SessionOptions_duplicate(
	const SessionOptions *parameters){
	SessionOptions X(*parameters);
	return &X;
}


void blpapi_SessionOptions_copy(SessionOptions       *lhs,
	const SessionOptions *rhs);


void blpapi_SessionOptions_destroy(SessionOptions *parameters){}


int blpapi_SessionOptions_setServerHost(SessionOptions *parameters,
	const char              *serverHost){
	return 0;
}


int blpapi_SessionOptions_setServerPort(SessionOptions *parameters,
	unsigned short           serverPort){
	return 0;
}


int blpapi_SessionOptions_setServerAddress(SessionOptions *parameters,
	const char              *serverHost,
	unsigned short           serverPort,
	size_t                   index){
	return 0;
}


int blpapi_SessionOptions_removeServerAddress(
	SessionOptions *parameters,
	size_t                   index){
	return 0;
}


int blpapi_SessionOptions_setConnectTimeout(
	SessionOptions *parameters,
	unsigned int             timeoutInMilliseconds){
	return 0;
}


int blpapi_SessionOptions_setDefaultServices(
	SessionOptions *parameters,
	const char              *defaultServices){
	return 0;
}


int blpapi_SessionOptions_setDefaultSubscriptionService(
	SessionOptions *parameters,
	const char              *serviceIdentifier){
	return 0;
}


void blpapi_SessionOptions_setDefaultTopicPrefix(
	SessionOptions *parameters,
	const char              *prefix){}


void blpapi_SessionOptions_setAllowMultipleCorrelatorsPerMsg(
	SessionOptions *parameters,
	int                      allowMultipleCorrelatorsPerMsg){}


void blpapi_SessionOptions_setClientMode(SessionOptions *parameters,
	int                      clientMode){}


void blpapi_SessionOptions_setMaxPendingRequests(
	SessionOptions *parameters,
	int                      maxPendingRequests){}


void blpapi_SessionOptions_setAutoRestartOnDisconnection(
	SessionOptions *parameters,
	int                      autoRestart){}


void blpapi_SessionOptions_setAutoRestart(
	SessionOptions *parameters,
	int                      autoRestart){}

int blpapi_SessionOptions_setSessionIdentityOptions(
	SessionOptions    *parameters,
	const blpapi_AuthOptions_t *authOptions,
	blpapi_CorrelationId_t     *cid){
	return 0;
}


void blpapi_SessionOptions_setAuthenticationOptions(
	SessionOptions *parameters,
	const char              *authOptions){}


void blpapi_SessionOptions_setNumStartAttempts(
	SessionOptions *parameters,
	int                      numStartAttempts){}


void blpapi_SessionOptions_setMaxEventQueueSize(
	SessionOptions *parameters,
	size_t                   maxEventQueueSize){}


int blpapi_SessionOptions_setSlowConsumerWarningHiWaterMark(
	SessionOptions *parameters,
	float                    hiWaterMark){
	return 0;
}


int blpapi_SessionOptions_setSlowConsumerWarningLoWaterMark(
	SessionOptions *parameters,
	float                    loWaterMark){
	return 0;
}


int blpapi_SessionOptions_setDefaultKeepAliveInactivityTime(
	SessionOptions *parameters,
	int                      inactivityMsecs){
	return 0;
}


int blpapi_SessionOptions_setDefaultKeepAliveResponseTimeout(
	SessionOptions *parameters,
	int                      timeoutMsecs){
	return 0;
}


int blpapi_SessionOptions_setKeepAliveEnabled(
	SessionOptions *parameters,
	int                      isEnabled){
	return 0;
}


void blpapi_SessionOptions_setRecordSubscriptionDataReceiveTimes(
	SessionOptions *parameters,
	int                      shouldRecord){}


int blpapi_SessionOptions_setServiceCheckTimeout(
	SessionOptions *paramaters,
	int                      timeoutMsecs){
	return 0;
}


int blpapi_SessionOptions_setServiceDownloadTimeout(
	SessionOptions *paramaters,
	int                      timeoutMsecs){
	return 0;
}


void blpapi_SessionOptions_setTlsOptions(
	SessionOptions   *paramaters,
	const blpapi_TlsOptions_t *tlsOptions){}


int blpapi_SessionOptions_setFlushPublishedEventsTimeout(
	SessionOptions *paramaters,
	int                      timeoutMsecs){
	return 0;
}


int blpapi_SessionOptions_setBandwidthSaveModeDisabled(
	SessionOptions *parameters,
	int                      disableBandwidthSaveMode){
	return 0;
}


const char *blpapi_SessionOptions_serverHost(
	SessionOptions *parameters){
	return "some server";
}


unsigned int blpapi_SessionOptions_serverPort(
	SessionOptions *parameters){
	return 0;
}


int blpapi_SessionOptions_numServerAddresses(
	SessionOptions *parameters){
	return 0;
}


int blpapi_SessionOptions_getServerAddress(
	SessionOptions  *parameters,
	const char              **serverHost,
	unsigned short           *serverPort,
	size_t                    index){
	return 0;
}


unsigned int blpapi_SessionOptions_connectTimeout(
	SessionOptions *parameters){
	return 0;
}


const char* blpapi_getLastErrorDescription(int resultCode) {
	return "test library";
}

blpapi_Session* blpapi_Session_create(
	SessionOptions *parameters,
	blpapi_EventHandler_t handler,
	blpapi_EventDispatcher_t* dispatcher,
	void *userData) {
	parameters->setServerHost("localhost");
	parameters->setServerPort(8194);
	return new Session(*parameters);
}

void blpapi_Session_destroy(
	Session *session){}


int blpapi_Session_start(
	Session *session){
	if (session->start())
		return 0;
	else
		return 1;
}


int blpapi_Session_startAsync(
	Session *session){
	return 0;
}


int blpapi_Session_stop(
	Session* session){
	return 0;
}


int blpapi_Session_stopAsync(
	Session* session){
	return 0;
}


int blpapi_Session_nextEvent(
	Session* session,
	Event **eventPointer,
	unsigned int timeoutInMilliseconds){
	*eventPointer = new Event(session->nextEvent(10));
	return 0;
}


int SessionryNextEvent(
	Session* session,
	Event **eventPointer){
	return 0;
}


int blpapi_Session_subscribe(
	Session *session,
	const blpapi_SubscriptionList_t *subscriptionList,
	const blpapi_Identity_t* handle,
	const char *requestLabel,
	int requestLabelLen){
	return 0;
}


int blpapi_Session_resubscribe(
	Session *session,
	const blpapi_SubscriptionList_t *resubscriptionList,
	const char *requestLabel,
	int requestLabelLen){
	return 0;
}


int blpapi_Session_resubscribeWithId(
	Session *session,
	const blpapi_SubscriptionList_t *resubscriptionList,
	int resubscriptionId,
	const char *requestLabel,
	int requestLabelLen){
	return 0;
}


int blpapi_Session_unsubscribe(
	Session *session,
	const blpapi_SubscriptionList_t *unsubscriptionList,
	const char *requestLabel,
	int requestLabelLen){
	return 0;
}


int blpapi_Session_cancel(
	Session *session,
	const blpapi_CorrelationId_t *correlationIds,
	size_t numCorrelationIds,
	const char *requestLabel,
	int requestLabelLen){
	return 0;
}


int blpapi_Session_setStatusCorrelationId(
	Session *session,
	const Service *service,
	const blpapi_Identity_t *identity,
	const blpapi_CorrelationId_t *correlationId){
	return 0;
}


int blpapi_Session_sendRequest(
	Session *session,
	const Request *request,
	blpapi_CorrelationId_t *correlationId,
	blpapi_Identity_t *identity,
	blpapi_EventQueue_t *eventQueue,
	const char *requestLabel,
	int requestLabelLen){
	//Service S;
	//Request R = S.createRequest("ReferenceDataRequest");
	//session->sendRequest(R);
	session->sendRequest(*request);
	return 0;
}


int blpapi_Session_sendRequestTemplate(
	Session *session,
	const blpapi_RequestTemplate_t *requestTemplate,
	blpapi_CorrelationId_t *correlationId){
	return 0;
}


int blpapi_Session_createSnapshotRequestTemplate(
	blpapi_RequestTemplate_t **requestTemplate,
	Session *session,
	const char *subscriptionString,
	const blpapi_Identity_t* identity,
	blpapi_CorrelationId_t *correlationId){
	return 0;
}


int blpapi_Session_sendAuthorizationRequest(
	Session *session,
	const Request *request,
	blpapi_Identity_t *identity,
	blpapi_CorrelationId_t *correlationId,
	blpapi_EventQueue_t *eventQueue,
	const char *requestLabel,
	int requestLabelLen){
	return 0;
}


int blpapi_Session_openService(
	Session *session,
	const char* serviceName){
	return 0;
}


int blpapi_Session_openServiceAsync(
	Session *session,
	const char* serviceName,
	blpapi_CorrelationId_t *correlationId){
	return 0;
}


int blpapi_Session_generateToken(
	Session *session,
	blpapi_CorrelationId_t *correlationId,
	blpapi_EventQueue_t *eventQueue){
	return 0;
}


int blpapi_Session_getService(
	Session *session,
	Service **service,
	const char* serviceName){
	*service = new Service(session->getService(serviceName));
	return 0;
}

// Deprecated: Use blpapi_Session_createIdentity instead

blpapi_UserHandle_t* blpapi_Session_createUserHandle(
	Session *session){
	return NULL;
}


blpapi_Identity_t* blpapi_Session_createIdentity(
	Session *session){
	return NULL;
}


blpapi_AbstractSession_t* blpapi_Session_getAbstractSession(
	Session* session){
	return NULL;
}


blpapi_SubscriptionIterator_t* blpapi_SubscriptionItr_create(
	Session *session){
	return NULL;
}


void blpapi_SubscriptionItr_destroy(
	blpapi_SubscriptionIterator_t *iterator){}


int blpapi_SubscriptionItr_next(
	blpapi_SubscriptionIterator_t *iterator,
	const char** subscriptionString,
	blpapi_CorrelationId_t *correlationId,
	int *status){
	return 0;
}


int blpapi_SubscriptionItr_isValid(
	const blpapi_SubscriptionIterator_t *iterator){
	return 0;
}




const char* blpapi_Operation_name(blpapi_Operation_t *operation){
	return "called blpapi_Operation_name";
}


const char* blpapi_Operation_description(blpapi_Operation_t *operation){
	return "called blpapi_Operation_description";
}


int blpapi_Operation_requestDefinition(
	blpapi_Operation_t                *operation,
	blpapi_SchemaElementDefinition_t **requestDefinition){
	return 0;
}


int blpapi_Operation_numResponseDefinitions(blpapi_Operation_t *operation){
	return 0;
}


int blpapi_Operation_responseDefinition(
	blpapi_Operation_t                *operation,
	blpapi_SchemaElementDefinition_t **responseDefinition,
	size_t                             index){
	return 0;
}


int blpapi_Operation_responseDefinitionFromName(
	blpapi_Operation_t                *operation,
	blpapi_SchemaElementDefinition_t **responseDefinition,
	const blpapi_Name_t               *name){
	return 0;
}


const char* blpapi_Service_name(Service *service){
	return "called blpapi_Service_name";
}


const char* blpapi_Service_description(Service *service){
	return "called blpapi_Service_description";
}


int blpapi_Service_numOperations(Service *service){
	return 0;
}


int blpapi_Service_numEventDefinitions(Service *service){
	return 0;
}


int blpapi_Service_addRef(Service *service){
	return 0;
}


void blpapi_Service_release(Service *service){}


const char* blpapi_Service_authorizationServiceName(Service *service){
	return "called blpapi_Service_authorizationServiceName";
}


int blpapi_Service_getOperation(Service     *service,
	blpapi_Operation_t  **operation,
	const char           *nameString,
	const blpapi_Name_t  *name){
	return 0;
}


int blpapi_Service_getOperationAt(Service     *service,
	blpapi_Operation_t  **operation,
	size_t                index){
	return 0;
}


int blpapi_Service_getEventDefinition(
	Service                  *service,
	blpapi_SchemaElementDefinition_t **result,
	const char                        *nameString,
	const blpapi_Name_t               *name){
	return 0;
}


int blpapi_Service_getEventDefinitionAt(
	Service                  *service,
	blpapi_SchemaElementDefinition_t **result,
	size_t                             index){
	return 0;
}


int blpapi_Service_createRequest(Service   *service,
	Request  **request,
	const char         *operation){
	Request* R = new Request(service->createRequest(operation));
	R->append("securities", "SPY US EQUITY");
	R->append("fields", "PX_LAST");
	R->append("fields", "BID");
	R->append("fields", "ASK");
	R->append("fields", "TICKER");
	R->append("fields", "OPT_EXPIRE_DT"); //only stock options have this field
	Element overrides = R->getElement("overrides");

	//request only puts
	Element ovrdPutCall = overrides.appendElement();
	ovrdPutCall.setElement("fieldId", "CHAIN_PUT_CALL_TYPE_OVRD");
	ovrdPutCall.setElement("value", "P"); //accepts either "C" for calls or "P" for puts

	//request 5 options in the result
	Element ovrdNumStrikes = overrides.appendElement();
	ovrdNumStrikes.setElement("fieldId", "CHAIN_POINTS_OVRD");
	ovrdNumStrikes.setElement("value", 5); //accepts a positive integer

	//request options that expire on Dec. 20, 2014
	Element ovrdDtExps = overrides.appendElement();
	ovrdDtExps.setElement("fieldId", "CHAIN_EXP_DT_OVRD");
	ovrdDtExps.setElement("value", "20141220"); //accepts dates in the format yyyyMMdd (this is Dec. 20, 2014)

	*request = R;
	
	return 0;
}


int blpapi_Service_createAuthorizationRequest(Service   *service,
	Request  **request,
	const char         *operation){
	return 0;
}


int blpapi_Service_createPublishEvent(Service  *service,
	Event   **event){
	return 0;
}


int blpapi_Service_createAdminEvent(Service  *service,
	Event   **event){
	return 0;
}


int blpapi_Service_createResponseEvent(
	Service              *service,
	const blpapi_CorrelationId_t  *correlationId,
	Event               **event){
	return 0;
}

 int blpapi_Service_print(const Service *service,
	blpapi_StreamWriter_t   streamWriter,
	void                   *stream,
	int                     level,
	int                     spacesPerLevel){
	 return 0;
 }

 Request* blpapi_Request_elements(
	 Request *request) {
	 return request;
 }

 int blpapi_Element_getElement(
	 const void *element,
	 Element **result,
	 const char* nameString,
	 const Name *name) {
	 try {
		 Request* R = (Request*)element;
		 *result = new Element(R->getElement(nameString));
		 return 0;
	 }
	 catch(...){
		 return 1;
	 }
 }

 int blpapi_Element_setValueString(
	 Element *element,
	 const char *value,
	 size_t index) {
	 //element->setElement(value, index);
	 return 0;
 }

 int blpapi_Element_print(
	 const void* element,
	 blpapi_StreamWriter_t streamWriter,
	 void *stream,
	 int level,
	 int spacesPerLevel) {
	 //try {
		// streamWriter("Y*", 2, stream);
	 //}
	 //catch (...) {}
	 try {
		 std::stringstream oss;
		 Element* realElement;
		 try
		 {
			 Request* req = (Request*)element;
			 //element->print((std::ostream&)stream, level, spacesPerLevel);
			 realElement = &req->getElement("securities");
		 }
		 catch (...)
		 {
			 realElement = (Element*)element;
		 }
		 realElement->print(oss, level, spacesPerLevel);
		 char s[1000];
		 oss >> s;
		 streamWriter(s, 2, stream);
		 //oss << "element info";
		 //(std::ostream&)stream << "element info";
	 }
	 catch (...) {}
	 return 0;
 }

 void blpapi_Request_destroy(
	 Request *request) {
	 int result = 0;
 }

 int blpapi_Event_eventType(
	 const Event *event) {
	 return 5;
 }

 int blpapi_Event_release(
	 const Event *event) {
	 return 0;
 }

 MessageIterator* blpapi_MessageIterator_create(
	 const Event *event) {
	 return new MessageIterator(*event);
 }

 void blpapi_MessageIterator_destroy(
	 MessageIterator* iterator) {
	 int result = 0;
 }

 int blpapi_MessageIterator_next(
	 MessageIterator* iterator,
	 Message** result) {
	 if (iterator->next())
	 {
		 *result = new Message(iterator->message());
		 return 0;
	 }
	 return -1;
}

 Element* blpapi_Message_elements(
	 const Message *message) {
	 return new Element(message->getElement("securityData"));
 }

 int blpapi_Element_hasElement(
	 const Element *element,
	 const char* nameString,
	 const Name *name) {
	 return (int)element->hasElement(nameString);
 }
