# maislurp-client-powershell.maislurp-client-powershell/Api.AgentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AgentAcquireConversationClaim**](AgentControllerApi#Invoke-AgentAcquireConversationClaim) | **POST** /agent/conversations/{conversationId}/claims | Acquire a renewable conversation claim
[**Invoke-AgentAddConversationNote**](AgentControllerApi#Invoke-AgentAddConversationNote) | **POST** /agent/conversations/{conversationId}/notes | Add an internal conversation note
[**Invoke-AgentAddSmsNote**](AgentControllerApi#Invoke-AgentAddSmsNote) | **POST** /agent/sms-conversations/{conversationId}/notes | Add an internal SMS conversation note
[**Invoke-AgentCheckInboxSendPolicy**](AgentControllerApi#Invoke-AgentCheckInboxSendPolicy) | **POST** /agent/inboxes/{inboxId}/send-policy/check | Check whether sending rules allow recipients
[**Invoke-AgentClaimSmsConversation**](AgentControllerApi#Invoke-AgentClaimSmsConversation) | **POST** /agent/sms-conversations/{conversationId}/claims | Acquire an SMS conversation claim
[**Invoke-AgentCompleteWorkItem**](AgentControllerApi#Invoke-AgentCompleteWorkItem) | **POST** /agent/work-items/{conversationId}/complete | Complete a work item with an idempotent reply
[**Invoke-AgentCreateEmailDraft**](AgentControllerApi#Invoke-AgentCreateEmailDraft) | **POST** /agent/inboxes/{inboxId}/drafts | Create a scoped email draft for an agent
[**Invoke-AgentCreateInbox**](AgentControllerApi#Invoke-AgentCreateInbox) | **POST** /agent/inboxes | Create an inbox with an account-wide inbox-manager connection
[**Invoke-AgentCreateReplyDraft**](AgentControllerApi#Invoke-AgentCreateReplyDraft) | **POST** /agent/emails/{emailId}/reply-draft | Create a correctly threaded reply draft
[**Invoke-AgentCreateTotpDeviceForBase32SecretKey**](AgentControllerApi#Invoke-AgentCreateTotpDeviceForBase32SecretKey) | **POST** /agent/totp/devices/base32-secret-key | Create an agent-managed TOTP device from a base32 secret key
[**Invoke-AgentCreateTotpDeviceForCustom**](AgentControllerApi#Invoke-AgentCreateTotpDeviceForCustom) | **POST** /agent/totp/devices/custom | Create an agent-managed TOTP device from custom options
[**Invoke-AgentCreateTotpDeviceForOtpAuthUrl**](AgentControllerApi#Invoke-AgentCreateTotpDeviceForOtpAuthUrl) | **POST** /agent/totp/devices/otp-auth-url | Create an agent-managed TOTP device from an OTP Auth URL
[**Invoke-AgentDeferWorkItem**](AgentControllerApi#Invoke-AgentDeferWorkItem) | **POST** /agent/work-items/{conversationId}/defer | Defer a work item to human review
[**Invoke-AgentDeleteEmailDraft**](AgentControllerApi#Invoke-AgentDeleteEmailDraft) | **DELETE** /agent/inboxes/{inboxId}/drafts/{draftId} | Delete a scoped email draft for an agent
[**Invoke-AgentDeleteTotpDevice**](AgentControllerApi#Invoke-AgentDeleteTotpDevice) | **DELETE** /agent/totp/devices/{id} | Delete an agent-managed TOTP device
[**Invoke-AgentExtractEmailAttachmentText**](AgentControllerApi#Invoke-AgentExtractEmailAttachmentText) | **POST** /agent/emails/{emailId}/attachments/{attachmentId}/text | Extract text from a scoped email attachment for an agent
[**Invoke-AgentGenerateTotpDeviceCode**](AgentControllerApi#Invoke-AgentGenerateTotpDeviceCode) | **GET** /agent/totp/devices/{id}/code | Generate a code for an agent-managed TOTP device
[**Invoke-AgentGetCapabilities**](AgentControllerApi#Invoke-AgentGetCapabilities) | **GET** /agent/capabilities | Discover this agent connection&#39;s capabilities
[**Invoke-AgentGetConversationV2**](AgentControllerApi#Invoke-AgentGetConversationV2) | **GET** /agent/conversations/{conversationId} | Get one scoped conversation
[**Invoke-AgentGetEmail**](AgentControllerApi#Invoke-AgentGetEmail) | **GET** /agent/emails/{emailId} | Get scoped hydrated email for an agent
[**Invoke-AgentGetEmailDraft**](AgentControllerApi#Invoke-AgentGetEmailDraft) | **GET** /agent/inboxes/{inboxId}/drafts/{draftId} | Get a scoped email draft for an agent
[**Invoke-AgentGetEmailSummary**](AgentControllerApi#Invoke-AgentGetEmailSummary) | **GET** /agent/emails/{emailId}/summary | Get scoped email summary for an agent
[**Invoke-AgentGetEmailThread**](AgentControllerApi#Invoke-AgentGetEmailThread) | **GET** /agent/emails/{emailId}/thread | Get a scoped email thread for an agent
[**Invoke-AgentGetLatestInboxEmail**](AgentControllerApi#Invoke-AgentGetLatestInboxEmail) | **GET** /agent/inboxes/{inboxId}/emails/latest | Get latest scoped inbox email for an agent
[**Invoke-AgentGetNextWorkItem**](AgentControllerApi#Invoke-AgentGetNextWorkItem) | **POST** /agent/work-items/next | Claim the next conversation work item
[**Invoke-AgentGetPhoneMessageThreadItems**](AgentControllerApi#Invoke-AgentGetPhoneMessageThreadItems) | **GET** /agent/phone-numbers/{phoneNumberId}/message-threads/{otherPhoneNumber} | List SMS thread messages
[**Invoke-AgentGetPhoneMessageThreads**](AgentControllerApi#Invoke-AgentGetPhoneMessageThreads) | **GET** /agent/phone-numbers/{phoneNumberId}/message-threads | List SMS threads
[**Invoke-AgentGetPhoneNumber**](AgentControllerApi#Invoke-AgentGetPhoneNumber) | **GET** /agent/phone-numbers/{phoneNumberId} | Get an assigned phone number
[**Invoke-AgentGetPhoneNumbers**](AgentControllerApi#Invoke-AgentGetPhoneNumbers) | **GET** /agent/phone-numbers | List assigned phone numbers
[**Invoke-AgentGetReceivedSmsMessage**](AgentControllerApi#Invoke-AgentGetReceivedSmsMessage) | **GET** /agent/phone-numbers/{phoneNumberId}/sms/{smsId} | Get received SMS
[**Invoke-AgentGetReceivedSmsMessages**](AgentControllerApi#Invoke-AgentGetReceivedSmsMessages) | **GET** /agent/phone-numbers/{phoneNumberId}/sms | List received SMS for an assigned phone number
[**Invoke-AgentGetSentSmsMessage**](AgentControllerApi#Invoke-AgentGetSentSmsMessage) | **GET** /agent/phone-numbers/{phoneNumberId}/sms/sent/{sentSmsId} | Get sent SMS
[**Invoke-AgentGetSentSmsMessages**](AgentControllerApi#Invoke-AgentGetSentSmsMessages) | **GET** /agent/phone-numbers/{phoneNumberId}/sms/sent | List sent SMS for an assigned phone number
[**Invoke-AgentGetSmsConversation**](AgentControllerApi#Invoke-AgentGetSmsConversation) | **GET** /agent/sms-conversations/{conversationId} | Get one SMS conversation
[**Invoke-AgentGetTotpDevice**](AgentControllerApi#Invoke-AgentGetTotpDevice) | **GET** /agent/totp/devices/{id} | Get an agent-accessible TOTP device
[**Invoke-AgentGetTotpDeviceBy**](AgentControllerApi#Invoke-AgentGetTotpDeviceBy) | **GET** /agent/totp/devices/by | Find an agent-accessible TOTP device by name, issuer, or username
[**Invoke-AgentGetTotpDevices**](AgentControllerApi#Invoke-AgentGetTotpDevices) | **GET** /agent/totp/devices | List agent-accessible TOTP devices
[**Invoke-AgentListAccessibleInboxes**](AgentControllerApi#Invoke-AgentListAccessibleInboxes) | **GET** /agent/inboxes | List inboxes accessible to an agent
[**Invoke-AgentListAutomationEvents**](AgentControllerApi#Invoke-AgentListAutomationEvents) | **GET** /agent/events | Read durable scoped automation events
[**Invoke-AgentListConversationsV2**](AgentControllerApi#Invoke-AgentListConversationsV2) | **GET** /agent/conversations | List active conversations with an opaque keyset cursor
[**Invoke-AgentListEmailAttachments**](AgentControllerApi#Invoke-AgentListEmailAttachments) | **GET** /agent/emails/{emailId}/attachments | List attachments on a scoped email for an agent
[**Invoke-AgentListEmailDrafts**](AgentControllerApi#Invoke-AgentListEmailDrafts) | **GET** /agent/inboxes/{inboxId}/drafts | List scoped email drafts for an agent
[**Invoke-AgentListInboxEmails**](AgentControllerApi#Invoke-AgentListInboxEmails) | **GET** /agent/inboxes/{inboxId}/emails | List scoped inbox emails for an agent
[**Invoke-AgentListInboxThreads**](AgentControllerApi#Invoke-AgentListInboxThreads) | **GET** /agent/inboxes/{inboxId}/threads | List scoped inbox threads for an agent
[**Invoke-AgentListSmsConversations**](AgentControllerApi#Invoke-AgentListSmsConversations) | **GET** /agent/sms-conversations | List active SMS conversations
[**Invoke-AgentPrepareWorkItemReply**](AgentControllerApi#Invoke-AgentPrepareWorkItemReply) | **POST** /agent/work-items/{conversationId}/prepare-reply | Prepare a guarded reply draft
[**Invoke-AgentReleaseConversationClaim**](AgentControllerApi#Invoke-AgentReleaseConversationClaim) | **DELETE** /agent/conversations/{conversationId}/claims/{claimId} | Release a conversation claim
[**Invoke-AgentReleaseSmsClaim**](AgentControllerApi#Invoke-AgentReleaseSmsClaim) | **DELETE** /agent/sms-conversations/{conversationId}/claims/{claimId} | Release an SMS conversation claim
[**Invoke-AgentRenewConversationClaim**](AgentControllerApi#Invoke-AgentRenewConversationClaim) | **PUT** /agent/conversations/{conversationId}/claims/{claimId} | Renew a conversation claim
[**Invoke-AgentRenewSmsClaim**](AgentControllerApi#Invoke-AgentRenewSmsClaim) | **PUT** /agent/sms-conversations/{conversationId}/claims/{claimId} | Renew an SMS conversation claim
[**Invoke-AgentReplyToEmail**](AgentControllerApi#Invoke-AgentReplyToEmail) | **POST** /agent/emails/{emailId}/reply | Reply to a scoped email as an agent
[**Invoke-AgentReplyToSms**](AgentControllerApi#Invoke-AgentReplyToSms) | **POST** /agent/phone-numbers/{phoneNumberId}/sms/{smsId}/reply | Reply to received SMS
[**Invoke-AgentReportWorkerHeartbeat**](AgentControllerApi#Invoke-AgentReportWorkerHeartbeat) | **POST** /agent/runtime/heartbeat | Report a worker heartbeat
[**Invoke-AgentRequestConversationHandoff**](AgentControllerApi#Invoke-AgentRequestConversationHandoff) | **POST** /agent/conversations/{conversationId}/handoffs | Request human review for a conversation
[**Invoke-AgentRequestSmsHandoff**](AgentControllerApi#Invoke-AgentRequestSmsHandoff) | **POST** /agent/sms-conversations/{conversationId}/handoffs | Request human review for an SMS conversation
[**Invoke-AgentSearchInboxEmails**](AgentControllerApi#Invoke-AgentSearchInboxEmails) | **POST** /agent/inboxes/{inboxId}/emails/search | Search scoped inbox emails for an agent
[**Invoke-AgentSendEmailDraft**](AgentControllerApi#Invoke-AgentSendEmailDraft) | **POST** /agent/inboxes/{inboxId}/drafts/{draftId}/send | Send a scoped email draft for an agent
[**Invoke-AgentSendSms**](AgentControllerApi#Invoke-AgentSendSms) | **POST** /agent/phone-numbers/{phoneNumberId}/sms | Send SMS from an assigned phone number
[**Invoke-AgentUpdateEmailDraft**](AgentControllerApi#Invoke-AgentUpdateEmailDraft) | **PATCH** /agent/inboxes/{inboxId}/drafts/{draftId} | Update a scoped email draft for an agent
[**Invoke-AgentUpdateInbox**](AgentControllerApi#Invoke-AgentUpdateInbox) | **PATCH** /agent/inboxes/{inboxId} | Update an inbox visible to an inbox-manager connection
[**Invoke-AgentUpdateTotpDevice**](AgentControllerApi#Invoke-AgentUpdateTotpDevice) | **PUT** /agent/totp/devices/{id} | Update an agent-managed TOTP device


<a name="Invoke-AgentAcquireConversationClaim"></a>
# **Invoke-AgentAcquireConversationClaim**
> AgentConversationClaimDto Invoke-AgentAcquireConversationClaim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcquireAgentConversationClaimOptions] <PSCustomObject><br>

Acquire a renewable conversation claim

Atomically leases a conversation to one worker. A conflict means another unexpired worker owns it. Use expectedVersion to reject work selected from stale context.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$AcquireAgentConversationClaimOptions = (Initialize-AcquireAgentConversationClaimOptions -WorkerId "WorkerId_example" -LeaseSeconds 123 -ExpectedVersion 123) # AcquireAgentConversationClaimOptions | 

# Acquire a renewable conversation claim
try {
     $Result = Invoke-AgentAcquireConversationClaim -ConversationId $ConversationId -AcquireAgentConversationClaimOptions $AcquireAgentConversationClaimOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentAcquireConversationClaim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **AcquireAgentConversationClaimOptions** | [**AcquireAgentConversationClaimOptions**](AcquireAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentAddConversationNote"></a>
# **Invoke-AgentAddConversationNote**
> AgentConversationNoteDto Invoke-AgentAddConversationNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAgentConversationNoteOptions] <PSCustomObject><br>

Add an internal conversation note

Adds agent/operator collaboration context without sending any email to the customer.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$CreateAgentConversationNoteOptions = (Initialize-CreateAgentConversationNoteOptions -Body "Body_example" -SourceEmailId "SourceEmailId_example" -DraftId "DraftId_example") # CreateAgentConversationNoteOptions | 

# Add an internal conversation note
try {
     $Result = Invoke-AgentAddConversationNote -ConversationId $ConversationId -CreateAgentConversationNoteOptions $CreateAgentConversationNoteOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentAddConversationNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **CreateAgentConversationNoteOptions** | [**CreateAgentConversationNoteOptions**](CreateAgentConversationNoteOptions)|  | 

### Return type

[**AgentConversationNoteDto**](AgentConversationNoteDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentAddSmsNote"></a>
# **Invoke-AgentAddSmsNote**
> AgentConversationNoteDto Invoke-AgentAddSmsNote<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAgentSmsConversationNoteOptions] <PSCustomObject><br>

Add an internal SMS conversation note

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$CreateAgentSmsConversationNoteOptions = (Initialize-CreateAgentSmsConversationNoteOptions -Body "Body_example" -SourceSmsId "SourceSmsId_example") # CreateAgentSmsConversationNoteOptions | 

# Add an internal SMS conversation note
try {
     $Result = Invoke-AgentAddSmsNote -ConversationId $ConversationId -CreateAgentSmsConversationNoteOptions $CreateAgentSmsConversationNoteOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentAddSmsNote: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **CreateAgentSmsConversationNoteOptions** | [**CreateAgentSmsConversationNoteOptions**](CreateAgentSmsConversationNoteOptions)|  | 

### Return type

[**AgentConversationNoteDto**](AgentConversationNoteDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCheckInboxSendPolicy"></a>
# **Invoke-AgentCheckInboxSendPolicy**
> AgentInboxSendPolicyDto Invoke-AgentCheckInboxSendPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentInboxSendPolicyCheckOptions] <PSCustomObject><br>

Check whether sending rules allow recipients

Evaluates effective inbox and account sending rules before an agent creates a send action. A blocked result includes the operator recovery route.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$AgentInboxSendPolicyCheckOptions = (Initialize-AgentInboxSendPolicyCheckOptions -Recipients @("Recipients_example")) # AgentInboxSendPolicyCheckOptions | 

# Check whether sending rules allow recipients
try {
     $Result = Invoke-AgentCheckInboxSendPolicy -InboxId $InboxId -AgentInboxSendPolicyCheckOptions $AgentInboxSendPolicyCheckOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCheckInboxSendPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **AgentInboxSendPolicyCheckOptions** | [**AgentInboxSendPolicyCheckOptions**](AgentInboxSendPolicyCheckOptions)|  | 

### Return type

[**AgentInboxSendPolicyDto**](AgentInboxSendPolicyDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentClaimSmsConversation"></a>
# **Invoke-AgentClaimSmsConversation**
> AgentConversationClaimDto Invoke-AgentClaimSmsConversation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcquireAgentConversationClaimOptions] <PSCustomObject><br>

Acquire an SMS conversation claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$AcquireAgentConversationClaimOptions = (Initialize-AcquireAgentConversationClaimOptions -WorkerId "WorkerId_example" -LeaseSeconds 123 -ExpectedVersion 123) # AcquireAgentConversationClaimOptions | 

# Acquire an SMS conversation claim
try {
     $Result = Invoke-AgentClaimSmsConversation -ConversationId $ConversationId -AcquireAgentConversationClaimOptions $AcquireAgentConversationClaimOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentClaimSmsConversation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **AcquireAgentConversationClaimOptions** | [**AcquireAgentConversationClaimOptions**](AcquireAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCompleteWorkItem"></a>
# **Invoke-AgentCompleteWorkItem**
> AgentCompletedWorkItemDto Invoke-AgentCompleteWorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CompleteAgentWorkItemOptions] <PSCustomObject><br>

Complete a work item with an idempotent reply

Revalidates conversation freshness, sends one threaded reply with an idempotency key, and releases the supplied claim only after the send succeeds.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$CompleteAgentWorkItemOptions = (Initialize-CompleteAgentWorkItemOptions -SourceEmailId "SourceEmailId_example" -Reply (Initialize-ReplyToEmailOptions -Body "Body_example" -IsHTML $false -VarFrom "VarFrom_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -Html $false) -IdempotencyKey "IdempotencyKey_example" -ExpectedConversationVersion 123 -ExpectedLatestEmailId "ExpectedLatestEmailId_example" -ClaimId "ClaimId_example") # CompleteAgentWorkItemOptions | 

# Complete a work item with an idempotent reply
try {
     $Result = Invoke-AgentCompleteWorkItem -ConversationId $ConversationId -CompleteAgentWorkItemOptions $CompleteAgentWorkItemOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCompleteWorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **CompleteAgentWorkItemOptions** | [**CompleteAgentWorkItemOptions**](CompleteAgentWorkItemOptions)|  | 

### Return type

[**AgentCompletedWorkItemDto**](AgentCompletedWorkItemDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCreateEmailDraft"></a>
# **Invoke-AgentCreateEmailDraft**
> EmailDraftDto Invoke-AgentCreateEmailDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceEmailId] <PSCustomObject><br>

Create a scoped email draft for an agent

Creates a saved draft in the path inbox using the same SendEmailOptions shape as sending, without sending the email.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox to save the draft against
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example")) -InboxId "InboxId_example") # SendEmailOptions | 
$SourceEmailId = "SourceEmailId_example" # String | Optional source email this draft responds to. When supplied, MailSlurp links the draft and later draft actions to that conversation. (optional)

# Create a scoped email draft for an agent
try {
     $Result = Invoke-AgentCreateEmailDraft -InboxId $InboxId -SendEmailOptions $SendEmailOptions -SourceEmailId $SourceEmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCreateEmailDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox to save the draft against | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **SourceEmailId** | [**String**](String)| Optional source email this draft responds to. When supplied, MailSlurp links the draft and later draft actions to that conversation. | [optional] 

### Return type

[**EmailDraftDto**](EmailDraftDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCreateInbox"></a>
# **Invoke-AgentCreateInbox**
> InboxDto Invoke-AgentCreateInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateInboxDto] <PSCustomObject><br>

Create an inbox with an account-wide inbox-manager connection

Creates an inbox without changing this agent connection's scopes. Account-wide scope is required so the new inbox is already covered.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateInboxDto = (Initialize-CreateInboxDto -EmailAddress "EmailAddress_example" -DomainName "DomainName_example" -DomainId "DomainId_example" -Name "Name_example" -Description "Description_example" -UseDomainPool $false -Tags @("Tags_example") -ExpiresAt Get-Date -Favourite $false -ExpiresIn 123 -AllowTeamAccess $false -InboxType "HTTP_INBOX" -VirtualInbox $false -UseShortAddress $false -Prefix "Prefix_example") # CreateInboxDto | 

# Create an inbox with an account-wide inbox-manager connection
try {
     $Result = Invoke-AgentCreateInbox -CreateInboxDto $CreateInboxDto
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCreateInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateInboxDto** | [**CreateInboxDto**](CreateInboxDto)|  | 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCreateReplyDraft"></a>
# **Invoke-AgentCreateReplyDraft**
> EmailDraftDto Invoke-AgentCreateReplyDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplyToEmailOptions] <PSCustomObject><br>

Create a correctly threaded reply draft

Builds the same recipients and RFC In-Reply-To/References headers as immediate reply, saves them as a draft, and preserves the required threading headers across later agent draft updates.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$ReplyToEmailOptions = (Initialize-ReplyToEmailOptions -Body "Body_example" -IsHTML $false -VarFrom "VarFrom_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -Html $false) # ReplyToEmailOptions | 

# Create a correctly threaded reply draft
try {
     $Result = Invoke-AgentCreateReplyDraft -EmailId $EmailId -ReplyToEmailOptions $ReplyToEmailOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCreateReplyDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **ReplyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions)|  | 

### Return type

[**EmailDraftDto**](EmailDraftDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCreateTotpDeviceForBase32SecretKey"></a>
# **Invoke-AgentCreateTotpDeviceForBase32SecretKey**
> TotpDeviceDto Invoke-AgentCreateTotpDeviceForBase32SecretKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTotpDeviceBase32SecretKeyOptions] <PSCustomObject><br>

Create an agent-managed TOTP device from a base32 secret key

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateTotpDeviceBase32SecretKeyOptions = (Initialize-CreateTotpDeviceBase32SecretKeyOptions -Base32SecretKey "Base32SecretKey_example" -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # CreateTotpDeviceBase32SecretKeyOptions | 

# Create an agent-managed TOTP device from a base32 secret key
try {
     $Result = Invoke-AgentCreateTotpDeviceForBase32SecretKey -CreateTotpDeviceBase32SecretKeyOptions $CreateTotpDeviceBase32SecretKeyOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCreateTotpDeviceForBase32SecretKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTotpDeviceBase32SecretKeyOptions** | [**CreateTotpDeviceBase32SecretKeyOptions**](CreateTotpDeviceBase32SecretKeyOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCreateTotpDeviceForCustom"></a>
# **Invoke-AgentCreateTotpDeviceForCustom**
> TotpDeviceDto Invoke-AgentCreateTotpDeviceForCustom<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTotpDeviceCustomOptions] <PSCustomObject><br>

Create an agent-managed TOTP device from custom options

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateTotpDeviceCustomOptions = (Initialize-CreateTotpDeviceCustomOptions -Secret "Secret_example" -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # CreateTotpDeviceCustomOptions | 

# Create an agent-managed TOTP device from custom options
try {
     $Result = Invoke-AgentCreateTotpDeviceForCustom -CreateTotpDeviceCustomOptions $CreateTotpDeviceCustomOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCreateTotpDeviceForCustom: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTotpDeviceCustomOptions** | [**CreateTotpDeviceCustomOptions**](CreateTotpDeviceCustomOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentCreateTotpDeviceForOtpAuthUrl"></a>
# **Invoke-AgentCreateTotpDeviceForOtpAuthUrl**
> TotpDeviceDto Invoke-AgentCreateTotpDeviceForOtpAuthUrl<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateTotpDeviceOtpAuthUrlOptions] <PSCustomObject><br>

Create an agent-managed TOTP device from an OTP Auth URL

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateTotpDeviceOtpAuthUrlOptions = (Initialize-CreateTotpDeviceOtpAuthUrlOptions -OtpAuthUrl "OtpAuthUrl_example" -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # CreateTotpDeviceOtpAuthUrlOptions | 

# Create an agent-managed TOTP device from an OTP Auth URL
try {
     $Result = Invoke-AgentCreateTotpDeviceForOtpAuthUrl -CreateTotpDeviceOtpAuthUrlOptions $CreateTotpDeviceOtpAuthUrlOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentCreateTotpDeviceForOtpAuthUrl: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentDeferWorkItem"></a>
# **Invoke-AgentDeferWorkItem**
> AgentDeferredWorkItemDto Invoke-AgentDeferWorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeferAgentWorkItemOptions] <PSCustomObject><br>

Defer a work item to human review

Creates or returns the active review handoff and releases the supplied claim after the handoff is durable. Deferral is a normal workflow result rather than an operational failure.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$DeferAgentWorkItemOptions = (Initialize-DeferAgentWorkItemOptions -ReasonCode "ReasonCode_example" -Reason "Reason_example" -Priority "LOW" -SourceEmailId "SourceEmailId_example" -DraftId "DraftId_example" -ExpectedConversationVersion 123 -ClaimId "ClaimId_example") # DeferAgentWorkItemOptions | 

# Defer a work item to human review
try {
     $Result = Invoke-AgentDeferWorkItem -ConversationId $ConversationId -DeferAgentWorkItemOptions $DeferAgentWorkItemOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentDeferWorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **DeferAgentWorkItemOptions** | [**DeferAgentWorkItemOptions**](DeferAgentWorkItemOptions)|  | 

### Return type

[**AgentDeferredWorkItemDto**](AgentDeferredWorkItemDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentDeleteEmailDraft"></a>
# **Invoke-AgentDeleteEmailDraft**
> void Invoke-AgentDeleteEmailDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DraftId] <PSCustomObject><br>

Delete a scoped email draft for an agent

Deletes a saved draft without sending it.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox the draft belongs to
$DraftId = "DraftId_example" # String | ID of draft

# Delete a scoped email draft for an agent
try {
     $Result = Invoke-AgentDeleteEmailDraft -InboxId $InboxId -DraftId $DraftId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentDeleteEmailDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox the draft belongs to | 
 **DraftId** | [**String**](String)| ID of draft | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentDeleteTotpDevice"></a>
# **Invoke-AgentDeleteTotpDevice**
> void Invoke-AgentDeleteTotpDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete an agent-managed TOTP device

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete an agent-managed TOTP device
try {
     $Result = Invoke-AgentDeleteTotpDevice -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentDeleteTotpDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentExtractEmailAttachmentText"></a>
# **Invoke-AgentExtractEmailAttachmentText**
> ExtractAttachmentTextResult Invoke-AgentExtractEmailAttachmentText<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExtractAttachmentTextOptions] <PSCustomObject><br>

Extract text from a scoped email attachment for an agent

Extracts bounded text only after verifying both the email scope and that the attachment belongs to that email. List attachments first instead of guessing IDs.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$AttachmentId = "AttachmentId_example" # String | 
$ExtractAttachmentTextOptions = (Initialize-ExtractAttachmentTextOptions -Method "AUTO" -AllowFallback $false -MaxBytes 123) # ExtractAttachmentTextOptions |  (optional)

# Extract text from a scoped email attachment for an agent
try {
     $Result = Invoke-AgentExtractEmailAttachmentText -EmailId $EmailId -AttachmentId $AttachmentId -ExtractAttachmentTextOptions $ExtractAttachmentTextOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentExtractEmailAttachmentText: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **AttachmentId** | **String**|  | 
 **ExtractAttachmentTextOptions** | [**ExtractAttachmentTextOptions**](ExtractAttachmentTextOptions)|  | [optional] 

### Return type

[**ExtractAttachmentTextResult**](ExtractAttachmentTextResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGenerateTotpDeviceCode"></a>
# **Invoke-AgentGenerateTotpDeviceCode**
> TotpDeviceCodeDto Invoke-AgentGenerateTotpDeviceCode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-At] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MinSecondsUntilExpire] <System.Nullable[Int32]><br>

Generate a code for an agent-managed TOTP device

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$At = Get-Date # System.DateTime |  (optional)
$MinSecondsUntilExpire = 987 # Int32 | Minimum remaining code lifetime. The request may wait for the next period when needed. (optional) (default to 5)

# Generate a code for an agent-managed TOTP device
try {
     $Result = Invoke-AgentGenerateTotpDeviceCode -Id $Id -At $At -MinSecondsUntilExpire $MinSecondsUntilExpire
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGenerateTotpDeviceCode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **At** | **System.DateTime**|  | [optional] 
 **MinSecondsUntilExpire** | **Int32**| Minimum remaining code lifetime. The request may wait for the next period when needed. | [optional] [default to 5]

### Return type

[**TotpDeviceCodeDto**](TotpDeviceCodeDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetCapabilities"></a>
# **Invoke-AgentGetCapabilities**
> AgentCapabilitiesDto Invoke-AgentGetCapabilities<br>

Discover this agent connection's capabilities

Returns the connection identity, role, effective permission names, declared resource scope, feature availability, and server-enforced limits. Call this once during worker startup instead of hard-coding role behavior.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Discover this agent connection's capabilities
try {
     $Result = Invoke-AgentGetCapabilities
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetCapabilities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentCapabilitiesDto**](AgentCapabilitiesDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetConversationV2"></a>
# **Invoke-AgentGetConversationV2**
> AgentConversationDetailV2Dto Invoke-AgentGetConversationV2<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>

Get one scoped conversation

Returns the projected conversation plus this connection's bounded activity timeline, internal notes, and active human-review handoff.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 

# Get one scoped conversation
try {
     $Result = Invoke-AgentGetConversationV2 -ConversationId $ConversationId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetConversationV2: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 

### Return type

[**AgentConversationDetailV2Dto**](AgentConversationDetailV2Dto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetEmail"></a>
# **Invoke-AgentGetEmail**
> Email Invoke-AgentGetEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get scoped hydrated email for an agent

Returns parsed email content after resolving the message inbox and checking agent scope.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to inspect

# Get scoped hydrated email for an agent
try {
     $Result = Invoke-AgentGetEmail -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to inspect | 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetEmailDraft"></a>
# **Invoke-AgentGetEmailDraft**
> EmailDraftDto Invoke-AgentGetEmailDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DraftId] <PSCustomObject><br>

Get a scoped email draft for an agent

Returns a saved draft including the full SendEmailOptions payload.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox the draft belongs to
$DraftId = "DraftId_example" # String | ID of draft

# Get a scoped email draft for an agent
try {
     $Result = Invoke-AgentGetEmailDraft -InboxId $InboxId -DraftId $DraftId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetEmailDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox the draft belongs to | 
 **DraftId** | [**String**](String)| ID of draft | 

### Return type

[**EmailDraftDto**](EmailDraftDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetEmailSummary"></a>
# **Invoke-AgentGetEmailSummary**
> EmailPreview Invoke-AgentGetEmailSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

Get scoped email summary for an agent

Returns lightweight metadata and headers for an email after resolving its inbox and checking the agent key scope.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to inspect

# Get scoped email summary for an agent
try {
     $Result = Invoke-AgentGetEmailSummary -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetEmailSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to inspect | 

### Return type

[**EmailPreview**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetEmailThread"></a>
# **Invoke-AgentGetEmailThread**
> ScopedEmailThread Invoke-AgentGetEmailThread<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get a scoped email thread for an agent

Returns thread metadata and ordered messages using an email ID as the authorization anchor. Arbitrary thread-ID probing is not allowed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 
$Sort = "ASC" # String |  (optional) (default to "ASC")

# Get a scoped email thread for an agent
try {
     $Result = Invoke-AgentGetEmailThread -EmailId $EmailId -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetEmailThread: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 
 **Sort** | **String**|  | [optional] [default to &quot;ASC&quot;]

### Return type

[**ScopedEmailThread**](ScopedEmailThread) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetLatestInboxEmail"></a>
# **Invoke-AgentGetLatestInboxEmail**
> Email Invoke-AgentGetLatestInboxEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeoutMillis] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get latest scoped inbox email for an agent

Waits for and returns the latest email in one scoped inbox. This is the agent-shaped equivalent of latest-message polling.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox the agent may read
$TimeoutMillis = 987 # Int64 | Timeout milliseconds to wait for latest email (optional) (default to 30000)
$UnreadOnly = true # Boolean | Only return unread emails (optional) (default to $false)
$Since = Get-Date # System.DateTime | Only return email received at or after this time (optional)
$Before = Get-Date # System.DateTime | Only return email received before this time (optional)

# Get latest scoped inbox email for an agent
try {
     $Result = Invoke-AgentGetLatestInboxEmail -InboxId $InboxId -TimeoutMillis $TimeoutMillis -UnreadOnly $UnreadOnly -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetLatestInboxEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox the agent may read | 
 **TimeoutMillis** | **Int64**| Timeout milliseconds to wait for latest email | [optional] [default to 30000]
 **UnreadOnly** | **Boolean**| Only return unread emails | [optional] [default to $false]
 **Since** | **System.DateTime**| Only return email received at or after this time | [optional] 
 **Before** | **System.DateTime**| Only return email received before this time | [optional] 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetNextWorkItem"></a>
# **Invoke-AgentGetNextWorkItem**
> AgentWorkItemDto Invoke-AgentGetNextWorkItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GetNextAgentWorkItemOptions] <PSCustomObject><br>

Claim the next conversation work item

Selects the oldest available scoped conversation and atomically claims it for one worker. This combines queue selection and claim acquisition so concurrent workers do not need to coordinate those steps themselves.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GetNextAgentWorkItemOptions = (Initialize-GetNextAgentWorkItemOptions -WorkerId "WorkerId_example" -LeaseSeconds 123 -Cursor "Cursor_example" -InboxId "InboxId_example" -HasAttachments $false) # GetNextAgentWorkItemOptions | 

# Claim the next conversation work item
try {
     $Result = Invoke-AgentGetNextWorkItem -GetNextAgentWorkItemOptions $GetNextAgentWorkItemOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetNextWorkItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GetNextAgentWorkItemOptions** | [**GetNextAgentWorkItemOptions**](GetNextAgentWorkItemOptions)|  | 

### Return type

[**AgentWorkItemDto**](AgentWorkItemDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetPhoneMessageThreadItems"></a>
# **Invoke-AgentGetPhoneMessageThreadItems**
> PagePhoneMessageThreadItemProjection Invoke-AgentGetPhoneMessageThreadItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OtherPhoneNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

List SMS thread messages

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$OtherPhoneNumber = "OtherPhoneNumber_example" # String | Other participant phone number in E.164 format
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)

# List SMS thread messages
try {
     $Result = Invoke-AgentGetPhoneMessageThreadItems -PhoneNumberId $PhoneNumberId -OtherPhoneNumber $OtherPhoneNumber -Page $Page -Size $Size
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetPhoneMessageThreadItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **OtherPhoneNumber** | **String**| Other participant phone number in E.164 format | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadItemProjection**](PagePhoneMessageThreadItemProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetPhoneMessageThreads"></a>
# **Invoke-AgentGetPhoneMessageThreads**
> PagePhoneMessageThreadProjection Invoke-AgentGetPhoneMessageThreads<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

List SMS threads

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)

# List SMS threads
try {
     $Result = Invoke-AgentGetPhoneMessageThreads -PhoneNumberId $PhoneNumberId -Page $Page -Size $Size
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetPhoneMessageThreads: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetPhoneNumber"></a>
# **Invoke-AgentGetPhoneNumber**
> PhoneNumberDto Invoke-AgentGetPhoneNumber<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>

Get an assigned phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 

# Get an assigned phone number
try {
     $Result = Invoke-AgentGetPhoneNumber -PhoneNumberId $PhoneNumberId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetPhoneNumber: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetPhoneNumbers"></a>
# **Invoke-AgentGetPhoneNumbers**
> PageAgentPhoneNumber Invoke-AgentGetPhoneNumbers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List assigned phone numbers

Returns only active phone numbers explicitly assigned to this agent connection.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "DESC")
$Search = "Search_example" # String |  (optional)

# List assigned phone numbers
try {
     $Result = Invoke-AgentGetPhoneNumbers -Page $Page -Size $Size -Sort $Sort -Search $Search
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetPhoneNumbers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;DESC&quot;]
 **Search** | **String**|  | [optional] 

### Return type

[**PageAgentPhoneNumber**](PageAgentPhoneNumber) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetReceivedSmsMessage"></a>
# **Invoke-AgentGetReceivedSmsMessage**
> SmsDto Invoke-AgentGetReceivedSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>

Get received SMS

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$SmsId = "SmsId_example" # String | 

# Get received SMS
try {
     $Result = Invoke-AgentGetReceivedSmsMessage -PhoneNumberId $PhoneNumberId -SmsId $SmsId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetReceivedSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **SmsId** | [**String**](String)|  | 

### Return type

[**SmsDto**](SmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetReceivedSmsMessages"></a>
# **Invoke-AgentGetReceivedSmsMessages**
> PageSmsProjection Invoke-AgentGetReceivedSmsMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>

List received SMS for an assigned phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "DESC")
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Search = "Search_example" # String |  (optional)
$Favourite = true # Boolean |  (optional)

# List received SMS for an assigned phone number
try {
     $Result = Invoke-AgentGetReceivedSmsMessages -PhoneNumberId $PhoneNumberId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Search $Search -Favourite $Favourite
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetReceivedSmsMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;DESC&quot;]
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Search** | **String**|  | [optional] 
 **Favourite** | **Boolean**|  | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetSentSmsMessage"></a>
# **Invoke-AgentGetSentSmsMessage**
> SentSmsDto Invoke-AgentGetSentSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SentSmsId] <PSCustomObject><br>

Get sent SMS

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$SentSmsId = "SentSmsId_example" # String | 

# Get sent SMS
try {
     $Result = Invoke-AgentGetSentSmsMessage -PhoneNumberId $PhoneNumberId -SentSmsId $SentSmsId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetSentSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **SentSmsId** | [**String**](String)|  | 

### Return type

[**SentSmsDto**](SentSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetSentSmsMessages"></a>
# **Invoke-AgentGetSentSmsMessages**
> PageSentSmsProjection Invoke-AgentGetSentSmsMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List sent SMS for an assigned phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "DESC")
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Search = "Search_example" # String |  (optional)

# List sent SMS for an assigned phone number
try {
     $Result = Invoke-AgentGetSentSmsMessages -PhoneNumberId $PhoneNumberId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Search $Search
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetSentSmsMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;DESC&quot;]
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Search** | **String**|  | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetSmsConversation"></a>
# **Invoke-AgentGetSmsConversation**
> AgentSmsConversationDetailDto Invoke-AgentGetSmsConversation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>

Get one SMS conversation

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 

# Get one SMS conversation
try {
     $Result = Invoke-AgentGetSmsConversation -ConversationId $ConversationId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetSmsConversation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 

### Return type

[**AgentSmsConversationDetailDto**](AgentSmsConversationDetailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetTotpDevice"></a>
# **Invoke-AgentGetTotpDevice**
> TotpDeviceDto Invoke-AgentGetTotpDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get an agent-accessible TOTP device

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get an agent-accessible TOTP device
try {
     $Result = Invoke-AgentGetTotpDevice -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetTotpDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetTotpDeviceBy"></a>
# **Invoke-AgentGetTotpDeviceBy**
> TotpDeviceOptionalDto Invoke-AgentGetTotpDeviceBy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Issuer] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Find an agent-accessible TOTP device by name, issuer, or username

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Name = "Name_example" # String |  (optional)
$Issuer = "Issuer_example" # String |  (optional)
$Username = "Username_example" # String |  (optional)

# Find an agent-accessible TOTP device by name, issuer, or username
try {
     $Result = Invoke-AgentGetTotpDeviceBy -Name $Name -Issuer $Issuer -Username $Username
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetTotpDeviceBy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | [optional] 
 **Issuer** | **String**|  | [optional] 
 **Username** | **String**|  | [optional] 

### Return type

[**TotpDeviceOptionalDto**](TotpDeviceOptionalDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentGetTotpDevices"></a>
# **Invoke-AgentGetTotpDevices**
> PageTotpDeviceProjection Invoke-AgentGetTotpDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Issuer] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

List agent-accessible TOTP devices

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "DESC")
$Issuer = "Issuer_example" # String |  (optional)
$Username = "Username_example" # String |  (optional)

# List agent-accessible TOTP devices
try {
     $Result = Invoke-AgentGetTotpDevices -Page $Page -Size $Size -Sort $Sort -Issuer $Issuer -Username $Username
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentGetTotpDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;DESC&quot;]
 **Issuer** | **String**|  | [optional] 
 **Username** | **String**|  | [optional] 

### Return type

[**PageTotpDeviceProjection**](PageTotpDeviceProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListAccessibleInboxes"></a>
# **Invoke-AgentListAccessibleInboxes**
> AccessibleInboxList Invoke-AgentListAccessibleInboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

List inboxes accessible to an agent

Returns the inbox IDs, addresses, names, and tags visible to this resource-scoped agent key. Agents should use this endpoint instead of guessing inbox IDs.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "ASC")

# List inboxes accessible to an agent
try {
     $Result = Invoke-AgentListAccessibleInboxes -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListAccessibleInboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;ASC&quot;]

### Return type

[**AccessibleInboxList**](AccessibleInboxList) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListAutomationEvents"></a>
# **Invoke-AgentListAutomationEvents**
> AgentAutomationEventPageDto Invoke-AgentListAutomationEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventType] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WaitSeconds] <System.Nullable[Int32]><br>

Read durable scoped automation events

Returns an ordered at-least-once event batch. Persist nextCursor after processing and deduplicate by eventId. waitSeconds enables bounded long polling; production workers should not continuously call latest-email polling.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Cursor = "Cursor_example" # String |  (optional)
$EventType = @("EMAIL_RECEIVED") # String[] |  (optional)
$Size = 987 # Int32 |  (optional) (default to 20)
$WaitSeconds = 987 # Int32 |  (optional) (default to 0)

# Read durable scoped automation events
try {
     $Result = Invoke-AgentListAutomationEvents -Cursor $Cursor -EventType $EventType -Size $Size -WaitSeconds $WaitSeconds
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListAutomationEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Cursor** | **String**|  | [optional] 
 **EventType** | [**String[]**](String)|  | [optional] 
 **Size** | **Int32**|  | [optional] [default to 20]
 **WaitSeconds** | **Int32**|  | [optional] [default to 0]

### Return type

[**AgentAutomationEventPageDto**](AgentAutomationEventPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListConversationsV2"></a>
# **Invoke-AgentListConversationsV2**
> AgentConversationCursorPageDto Invoke-AgentListConversationsV2<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowState] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Outcome] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReviewStatus] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Unread] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HasAttachments] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

List active conversations with an opaque keyset cursor

Reads the bounded mail-thread projection and applies current connection scope on every request. Persist nextCursor only after processing the returned page. Exact totals are intentionally omitted.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WorkflowState = "AVAILABLE" # String |  (optional)
$Outcome = "READ" # String |  (optional)
$ReviewStatus = "NONE" # String |  (optional)
$InboxId = "InboxId_example" # String |  (optional)
$Unread = true # Boolean |  (optional)
$HasAttachments = true # Boolean |  (optional)
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Search = "Search_example" # String |  (optional)
$Sort = "LAST_MESSAGE_DESC" # String |  (optional) (default to "LAST_MESSAGE_DESC")
$Cursor = "Cursor_example" # String |  (optional)
$Size = 987 # Int32 |  (optional) (default to 20)

# List active conversations with an opaque keyset cursor
try {
     $Result = Invoke-AgentListConversationsV2 -WorkflowState $WorkflowState -Outcome $Outcome -ReviewStatus $ReviewStatus -InboxId $InboxId -Unread $Unread -HasAttachments $HasAttachments -Since $Since -Before $Before -Search $Search -Sort $Sort -Cursor $Cursor -Size $Size
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListConversationsV2: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowState** | **String**|  | [optional] 
 **Outcome** | **String**|  | [optional] 
 **ReviewStatus** | **String**|  | [optional] 
 **InboxId** | [**String**](String)|  | [optional] 
 **Unread** | **Boolean**|  | [optional] 
 **HasAttachments** | **Boolean**|  | [optional] 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Search** | **String**|  | [optional] 
 **Sort** | **String**|  | [optional] [default to &quot;LAST_MESSAGE_DESC&quot;]
 **Cursor** | **String**|  | [optional] 
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**AgentConversationCursorPageDto**](AgentConversationCursorPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListEmailAttachments"></a>
# **Invoke-AgentListEmailAttachments**
> AttachmentMetaData[] Invoke-AgentListEmailAttachments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>

List attachments on a scoped email for an agent

Returns bounded attachment metadata only after verifying the email belongs to an inbox visible to the agent key.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | 

# List attachments on a scoped email for an agent
try {
     $Result = Invoke-AgentListEmailAttachments -EmailId $EmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListEmailAttachments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | 

### Return type

[**AttachmentMetaData[]**](AttachmentMetaData) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListEmailDrafts"></a>
# **Invoke-AgentListEmailDrafts**
> PageEmailDraftProjection Invoke-AgentListEmailDrafts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

List scoped email drafts for an agent

Lists draft previews for one scoped inbox.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox to list drafts for
$Page = 987 # Int32 | Optional page index in draft pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in draft pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# List scoped email drafts for an agent
try {
     $Result = Invoke-AgentListEmailDrafts -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListEmailDrafts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox to list drafts for | 
 **Page** | **Int32**| Optional page index in draft pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in draft pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageEmailDraftProjection**](PageEmailDraftProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListInboxEmails"></a>
# **Invoke-AgentListInboxEmails**
> PageEmailPreview Invoke-AgentListInboxEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyncConnectors] <System.Nullable[Boolean]><br>

List scoped inbox emails for an agent

Returns paginated email previews for one inbox after checking the agent key has AGENT_READ_EMAIL and is scoped to the inbox.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox the agent may read
$Page = 987 # Int32 | Optional page index in inbox emails list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in inbox emails list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter by received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter by received before given date time (optional)
$SyncConnectors = true # Boolean | Sync connectors before fetching emails (optional)

# List scoped inbox emails for an agent
try {
     $Result = Invoke-AgentListInboxEmails -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -SyncConnectors $SyncConnectors
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListInboxEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox the agent may read | 
 **Page** | **Int32**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter by received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter by received before given date time | [optional] 
 **SyncConnectors** | **Boolean**| Sync connectors before fetching emails | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListInboxThreads"></a>
# **Invoke-AgentListInboxThreads**
> PageEmailThreadProjection Invoke-AgentListInboxThreads<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

List scoped inbox threads for an agent

Lists conversation threads for one scoped inbox, including unread state, attachment presence, message count, and latest-message excerpts.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "DESC")
$Search = "Search_example" # String |  (optional)
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)

# List scoped inbox threads for an agent
try {
     $Result = Invoke-AgentListInboxThreads -InboxId $InboxId -Page $Page -Size $Size -Sort $Sort -Search $Search -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListInboxThreads: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;DESC&quot;]
 **Search** | **String**|  | [optional] 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 

### Return type

[**PageEmailThreadProjection**](PageEmailThreadProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentListSmsConversations"></a>
# **Invoke-AgentListSmsConversations**
> AgentSmsConversationCursorPageDto Invoke-AgentListSmsConversations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowState] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Outcome] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReviewStatus] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Unread] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HasMedia] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>

List active SMS conversations

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WorkflowState = "AVAILABLE" # String |  (optional)
$Outcome = "READ" # String |  (optional)
$ReviewStatus = "NONE" # String |  (optional)
$PhoneNumberId = "PhoneNumberId_example" # String |  (optional)
$Unread = true # Boolean |  (optional)
$HasMedia = true # Boolean |  (optional)
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Search = "Search_example" # String |  (optional)
$Sort = "LAST_MESSAGE_DESC" # String |  (optional) (default to "LAST_MESSAGE_DESC")
$Cursor = "Cursor_example" # String |  (optional)
$Size = 987 # Int32 |  (optional) (default to 20)

# List active SMS conversations
try {
     $Result = Invoke-AgentListSmsConversations -WorkflowState $WorkflowState -Outcome $Outcome -ReviewStatus $ReviewStatus -PhoneNumberId $PhoneNumberId -Unread $Unread -HasMedia $HasMedia -Since $Since -Before $Before -Search $Search -Sort $Sort -Cursor $Cursor -Size $Size
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentListSmsConversations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowState** | **String**|  | [optional] 
 **Outcome** | **String**|  | [optional] 
 **ReviewStatus** | **String**|  | [optional] 
 **PhoneNumberId** | [**String**](String)|  | [optional] 
 **Unread** | **Boolean**|  | [optional] 
 **HasMedia** | **Boolean**|  | [optional] 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Search** | **String**|  | [optional] 
 **Sort** | **String**|  | [optional] [default to &quot;LAST_MESSAGE_DESC&quot;]
 **Cursor** | **String**|  | [optional] 
 **Size** | **Int32**|  | [optional] [default to 20]

### Return type

[**AgentSmsConversationCursorPageDto**](AgentSmsConversationCursorPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentPrepareWorkItemReply"></a>
# **Invoke-AgentPrepareWorkItemReply**
> AgentPreparedReplyDto Invoke-AgentPrepareWorkItemReply<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrepareAgentReplyOptions] <PSCustomObject><br>

Prepare a guarded reply draft

Checks that the selected conversation and latest inbound email are still current, then creates a correctly threaded reply draft. An optional internal note records context for human review without sending email.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$PrepareAgentReplyOptions = (Initialize-PrepareAgentReplyOptions -SourceEmailId "SourceEmailId_example" -Reply  -ExpectedConversationVersion 123 -ExpectedLatestEmailId "ExpectedLatestEmailId_example" -InternalNote "InternalNote_example" -ClaimId "ClaimId_example") # PrepareAgentReplyOptions | 

# Prepare a guarded reply draft
try {
     $Result = Invoke-AgentPrepareWorkItemReply -ConversationId $ConversationId -PrepareAgentReplyOptions $PrepareAgentReplyOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentPrepareWorkItemReply: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **PrepareAgentReplyOptions** | [**PrepareAgentReplyOptions**](PrepareAgentReplyOptions)|  | 

### Return type

[**AgentPreparedReplyDto**](AgentPreparedReplyDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentReleaseConversationClaim"></a>
# **Invoke-AgentReleaseConversationClaim**
> void Invoke-AgentReleaseConversationClaim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <PSCustomObject><br>

Release a conversation claim

Release is idempotent; repeating it does not fail.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$ClaimId = "ClaimId_example" # String | 

# Release a conversation claim
try {
     $Result = Invoke-AgentReleaseConversationClaim -ConversationId $ConversationId -ClaimId $ClaimId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentReleaseConversationClaim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **ClaimId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentReleaseSmsClaim"></a>
# **Invoke-AgentReleaseSmsClaim**
> void Invoke-AgentReleaseSmsClaim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <PSCustomObject><br>

Release an SMS conversation claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$ClaimId = "ClaimId_example" # String | 

# Release an SMS conversation claim
try {
     $Result = Invoke-AgentReleaseSmsClaim -ConversationId $ConversationId -ClaimId $ClaimId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentReleaseSmsClaim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **ClaimId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentRenewConversationClaim"></a>
# **Invoke-AgentRenewConversationClaim**
> AgentConversationClaimDto Invoke-AgentRenewConversationClaim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RenewAgentConversationClaimOptions] <PSCustomObject><br>

Renew a conversation claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$ClaimId = "ClaimId_example" # String | 
$RenewAgentConversationClaimOptions = (Initialize-RenewAgentConversationClaimOptions -LeaseSeconds 123) # RenewAgentConversationClaimOptions | 

# Renew a conversation claim
try {
     $Result = Invoke-AgentRenewConversationClaim -ConversationId $ConversationId -ClaimId $ClaimId -RenewAgentConversationClaimOptions $RenewAgentConversationClaimOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentRenewConversationClaim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **ClaimId** | [**String**](String)|  | 
 **RenewAgentConversationClaimOptions** | [**RenewAgentConversationClaimOptions**](RenewAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentRenewSmsClaim"></a>
# **Invoke-AgentRenewSmsClaim**
> AgentConversationClaimDto Invoke-AgentRenewSmsClaim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RenewAgentConversationClaimOptions] <PSCustomObject><br>

Renew an SMS conversation claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$ClaimId = "ClaimId_example" # String | 
$RenewAgentConversationClaimOptions = (Initialize-RenewAgentConversationClaimOptions -LeaseSeconds 123) # RenewAgentConversationClaimOptions | 

# Renew an SMS conversation claim
try {
     $Result = Invoke-AgentRenewSmsClaim -ConversationId $ConversationId -ClaimId $ClaimId -RenewAgentConversationClaimOptions $RenewAgentConversationClaimOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentRenewSmsClaim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **ClaimId** | [**String**](String)|  | 
 **RenewAgentConversationClaimOptions** | [**RenewAgentConversationClaimOptions**](RenewAgentConversationClaimOptions)|  | 

### Return type

[**AgentConversationClaimDto**](AgentConversationClaimDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentReplyToEmail"></a>
# **Invoke-AgentReplyToEmail**
> SentEmailDto Invoke-AgentReplyToEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplyToEmailOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpectedConversationVersion] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpectedLatestEmailId] <PSCustomObject><br>

Reply to a scoped email as an agent

Sends a reply using the original conversation context after checking AGENT_REPLY_EMAIL and inbox scope.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String | ID of email to reply to
$ReplyToEmailOptions =  # ReplyToEmailOptions | 
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)
$ExpectedConversationVersion = 987 # Int64 |  (optional)
$ExpectedLatestEmailId = "ExpectedLatestEmailId_example" # String |  (optional)

# Reply to a scoped email as an agent
try {
     $Result = Invoke-AgentReplyToEmail -EmailId $EmailId -ReplyToEmailOptions $ReplyToEmailOptions -IdempotencyKey $IdempotencyKey -ExpectedConversationVersion $ExpectedConversationVersion -ExpectedLatestEmailId $ExpectedLatestEmailId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentReplyToEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)| ID of email to reply to | 
 **ReplyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions)|  | 
 **IdempotencyKey** | **String**|  | [optional] 
 **ExpectedConversationVersion** | **Int64**|  | [optional] 
 **ExpectedLatestEmailId** | [**String**](String)|  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentReplyToSms"></a>
# **Invoke-AgentReplyToSms**
> SentSmsDto Invoke-AgentReplyToSms<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsReplyOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpectedConversationVersion] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpectedLatestMessageId] <PSCustomObject><br>

Reply to received SMS

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$SmsId = "SmsId_example" # String | 
$SmsReplyOptions = (Initialize-SmsReplyOptions -Body "Body_example") # SmsReplyOptions | 
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)
$ExpectedConversationVersion = 987 # Int64 |  (optional)
$ExpectedLatestMessageId = "ExpectedLatestMessageId_example" # String |  (optional)

# Reply to received SMS
try {
     $Result = Invoke-AgentReplyToSms -PhoneNumberId $PhoneNumberId -SmsId $SmsId -SmsReplyOptions $SmsReplyOptions -IdempotencyKey $IdempotencyKey -ExpectedConversationVersion $ExpectedConversationVersion -ExpectedLatestMessageId $ExpectedLatestMessageId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentReplyToSms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **SmsId** | [**String**](String)|  | 
 **SmsReplyOptions** | [**SmsReplyOptions**](SmsReplyOptions)|  | 
 **IdempotencyKey** | **String**|  | [optional] 
 **ExpectedConversationVersion** | **Int64**|  | [optional] 
 **ExpectedLatestMessageId** | [**String**](String)|  | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentReportWorkerHeartbeat"></a>
# **Invoke-AgentReportWorkerHeartbeat**
> AgentWorkerHeartbeatDto Invoke-AgentReportWorkerHeartbeat<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentWorkerHeartbeatOptions] <PSCustomObject><br>

Report a worker heartbeat

Records one running worker instance and its deployed release for owner-side health monitoring. Send this during startup and periodically while the process can accept work; it does not claim or mutate a conversation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AgentWorkerHeartbeatOptions = (Initialize-AgentWorkerHeartbeatOptions -WorkerId "WorkerId_example" -InstanceId "InstanceId_example" -Release "Release_example") # AgentWorkerHeartbeatOptions | 

# Report a worker heartbeat
try {
     $Result = Invoke-AgentReportWorkerHeartbeat -AgentWorkerHeartbeatOptions $AgentWorkerHeartbeatOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentReportWorkerHeartbeat: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AgentWorkerHeartbeatOptions** | [**AgentWorkerHeartbeatOptions**](AgentWorkerHeartbeatOptions)|  | 

### Return type

[**AgentWorkerHeartbeatDto**](AgentWorkerHeartbeatDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentRequestConversationHandoff"></a>
# **Invoke-AgentRequestConversationHandoff**
> AgentConversationHandoffDto Invoke-AgentRequestConversationHandoff<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAgentConversationHandoffOptions] <PSCustomObject><br>

Request human review for a conversation

Creates or returns the active handoff and moves the shared workflow state into REVIEW without classifying the request as an operational failure.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$CreateAgentConversationHandoffOptions = (Initialize-CreateAgentConversationHandoffOptions -ReasonCode "ReasonCode_example" -Reason "Reason_example" -Priority "LOW" -SourceEmailId "SourceEmailId_example" -DraftId "DraftId_example" -ExpectedVersion 123) # CreateAgentConversationHandoffOptions | 

# Request human review for a conversation
try {
     $Result = Invoke-AgentRequestConversationHandoff -ConversationId $ConversationId -CreateAgentConversationHandoffOptions $CreateAgentConversationHandoffOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentRequestConversationHandoff: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **CreateAgentConversationHandoffOptions** | [**CreateAgentConversationHandoffOptions**](CreateAgentConversationHandoffOptions)|  | 

### Return type

[**AgentConversationHandoffDto**](AgentConversationHandoffDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentRequestSmsHandoff"></a>
# **Invoke-AgentRequestSmsHandoff**
> AgentConversationHandoffDto Invoke-AgentRequestSmsHandoff<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConversationId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAgentSmsConversationHandoffOptions] <PSCustomObject><br>

Request human review for an SMS conversation

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ConversationId = "ConversationId_example" # String | 
$CreateAgentSmsConversationHandoffOptions = (Initialize-CreateAgentSmsConversationHandoffOptions -ReasonCode "ReasonCode_example" -Reason "Reason_example" -Priority "LOW" -SourceSmsId "SourceSmsId_example" -ExpectedVersion 123) # CreateAgentSmsConversationHandoffOptions | 

# Request human review for an SMS conversation
try {
     $Result = Invoke-AgentRequestSmsHandoff -ConversationId $ConversationId -CreateAgentSmsConversationHandoffOptions $CreateAgentSmsConversationHandoffOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentRequestSmsHandoff: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConversationId** | [**String**](String)|  | 
 **CreateAgentSmsConversationHandoffOptions** | [**CreateAgentSmsConversationHandoffOptions**](CreateAgentSmsConversationHandoffOptions)|  | 

### Return type

[**AgentConversationHandoffDto**](AgentConversationHandoffDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentSearchInboxEmails"></a>
# **Invoke-AgentSearchInboxEmails**
> EmailPreview[] Invoke-AgentSearchInboxEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>

Search scoped inbox emails for an agent

Searches one scoped inbox using explicit field matches and attachment conditions. Use this for deterministic automation recovery instead of repeatedly fetching the latest message.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$MatchOptions = (Initialize-MatchOptions -VarMatches @((Initialize-MatchOption -Field "SUBJECT" -Should "MATCH" -Value "Value_example")) -Conditions @((Initialize-ConditionOption -Condition "HAS_ATTACHMENTS" -Value "TRUE")) -Ai (Initialize-AIMessageMatchOptions -Prompt "Prompt_example" -AiOptions (Initialize-AIMessageAIOptions -Model "BALANCED_V1" -MaxTokens 123 -MaxCandidates 123 -MaxOutputTokens 123 -MinimumConfidence 123))) # MatchOptions | 
$Size = 987 # Int32 |  (optional) (default to 20)
$Sort = "ASC" # String |  (optional) (default to "DESC")
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$UnreadOnly = true # Boolean |  (optional)

# Search scoped inbox emails for an agent
try {
     $Result = Invoke-AgentSearchInboxEmails -InboxId $InboxId -MatchOptions $MatchOptions -Size $Size -Sort $Sort -Since $Since -Before $Before -UnreadOnly $UnreadOnly
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentSearchInboxEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **MatchOptions** | [**MatchOptions**](MatchOptions)|  | 
 **Size** | **Int32**|  | [optional] [default to 20]
 **Sort** | **String**|  | [optional] [default to &quot;DESC&quot;]
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **UnreadOnly** | **Boolean**|  | [optional] 

### Return type

[**EmailPreview[]**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentSendEmailDraft"></a>
# **Invoke-AgentSendEmailDraft**
> SentEmailDto Invoke-AgentSendEmailDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DraftId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>

Send a scoped email draft for an agent

Sends a saved draft through the existing inbox send pipeline and deletes it only after send success.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox the draft belongs to
$DraftId = "DraftId_example" # String | ID of draft
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)

# Send a scoped email draft for an agent
try {
     $Result = Invoke-AgentSendEmailDraft -InboxId $InboxId -DraftId $DraftId -IdempotencyKey $IdempotencyKey
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentSendEmailDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox the draft belongs to | 
 **DraftId** | [**String**](String)| ID of draft | 
 **IdempotencyKey** | **String**|  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentSendSms"></a>
# **Invoke-AgentSendSms**
> SentSmsDto Invoke-AgentSendSms<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsSendOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpectedConversationVersion] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpectedLatestMessageId] <PSCustomObject><br>

Send SMS from an assigned phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String | 
$SmsSendOptions = (Initialize-SmsSendOptions -To "To_example" -Body "Body_example") # SmsSendOptions | 
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)
$ExpectedConversationVersion = 987 # Int64 |  (optional)
$ExpectedLatestMessageId = "ExpectedLatestMessageId_example" # String |  (optional)

# Send SMS from an assigned phone number
try {
     $Result = Invoke-AgentSendSms -PhoneNumberId $PhoneNumberId -SmsSendOptions $SmsSendOptions -IdempotencyKey $IdempotencyKey -ExpectedConversationVersion $ExpectedConversationVersion -ExpectedLatestMessageId $ExpectedLatestMessageId
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentSendSms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | 
 **SmsSendOptions** | [**SmsSendOptions**](SmsSendOptions)|  | 
 **IdempotencyKey** | **String**|  | [optional] 
 **ExpectedConversationVersion** | **Int64**|  | [optional] 
 **ExpectedLatestMessageId** | [**String**](String)|  | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentUpdateEmailDraft"></a>
# **Invoke-AgentUpdateEmailDraft**
> EmailDraftDto Invoke-AgentUpdateEmailDraft<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DraftId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmailOptions] <PSCustomObject><br>

Update a scoped email draft for an agent

Replaces the SendEmailOptions stored for a draft. The draft remains attached to its original inbox.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | ID of inbox the draft belongs to
$DraftId = "DraftId_example" # String | ID of draft
$SendEmailOptions = (Initialize-SendEmailOptions -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -To @("To_example") -VarFrom "VarFrom_example" -FromName "FromName_example" -Cc @("Cc_example") -Bcc @("Bcc_example") -Subject "Subject_example" -ReplyTo "ReplyTo_example" -CustomHeaders "TODO" -Body "Body_example" -Html $false -IsHTML $false -Charset "Charset_example" -Attachments @("Attachments_example") -TemplateVariables "TODO" -Template "Template_example" -SendStrategy "SINGLE_MESSAGE" -UseInboxName $false -AddTrackingPixel $false -FilterBouncedRecipients $false -ValidateEmailAddresses "VALIDATE_FILTER_REMOVE_INVALID" -IgnoreEmptyRecipients $false -IsXAmpHtml $false -BodyParts @((Initialize-SendEmailBodyPart -ContentType "ContentType_example" -ContentBody "ContentBody_example")) -InboxId "InboxId_example") # SendEmailOptions | 

# Update a scoped email draft for an agent
try {
     $Result = Invoke-AgentUpdateEmailDraft -InboxId $InboxId -DraftId $DraftId -SendEmailOptions $SendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentUpdateEmailDraft: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| ID of inbox the draft belongs to | 
 **DraftId** | [**String**](String)| ID of draft | 
 **SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**EmailDraftDto**](EmailDraftDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentUpdateInbox"></a>
# **Invoke-AgentUpdateInbox**
> InboxDto Invoke-AgentUpdateInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateInboxOptions] <PSCustomObject><br>

Update an inbox visible to an inbox-manager connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 
$UpdateInboxOptions = (Initialize-UpdateInboxOptions -Name "Name_example" -Description "Description_example" -Tags @("Tags_example") -ExpiresAt Get-Date -Favourite $false) # UpdateInboxOptions | 

# Update an inbox visible to an inbox-manager connection
try {
     $Result = Invoke-AgentUpdateInbox -InboxId $InboxId -UpdateInboxOptions $UpdateInboxOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentUpdateInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 
 **UpdateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions)|  | 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-AgentUpdateTotpDevice"></a>
# **Invoke-AgentUpdateTotpDevice**
> TotpDeviceDto Invoke-AgentUpdateTotpDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateTotpDeviceOptions] <PSCustomObject><br>

Update an agent-managed TOTP device

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 
$UpdateTotpDeviceOptions = (Initialize-UpdateTotpDeviceOptions -Name "Name_example" -Username "Username_example" -Issuer "Issuer_example" -Digits 123 -Period 123 -Algorithm "Algorithm_example") # UpdateTotpDeviceOptions | 

# Update an agent-managed TOTP device
try {
     $Result = Invoke-AgentUpdateTotpDevice -Id $Id -UpdateTotpDeviceOptions $UpdateTotpDeviceOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-AgentUpdateTotpDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 
 **UpdateTotpDeviceOptions** | [**UpdateTotpDeviceOptions**](UpdateTotpDeviceOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

