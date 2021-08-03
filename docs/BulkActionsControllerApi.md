# maislurp-client-powershell.maislurp-client-powershell/Api.BulkActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BulkCreateInboxes**](BulkActionsControllerApi#Invoke-BulkCreateInboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**Invoke-BulkDeleteInboxes**](BulkActionsControllerApi#Invoke-BulkDeleteInboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**Invoke-BulkSendEmails**](BulkActionsControllerApi#Invoke-BulkSendEmails) | **POST** /bulk/send | Bulk Send Emails


<a name="Invoke-BulkCreateInboxes"></a>
# **Invoke-BulkCreateInboxes**
> Inbox[] Invoke-BulkCreateInboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>

Bulk create Inboxes (email addresses)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Count = 987 # Int32 | Number of inboxes to be created in bulk

# Bulk create Inboxes (email addresses)
try {
     $Result = Invoke-BulkCreateInboxes -Count $Count
} catch {
    Write-Host ("Exception occured when calling Invoke-BulkCreateInboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Count** | **Int32**| Number of inboxes to be created in bulk | 

### Return type

[**Inbox[]**](Inbox) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-BulkDeleteInboxes"></a>
# **Invoke-BulkDeleteInboxes**
> void Invoke-BulkDeleteInboxes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ids] <String[]><br>

Bulk Delete Inboxes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Ids = @("Property_example") # String[] | ids

# Bulk Delete Inboxes
try {
     $Result = Invoke-BulkDeleteInboxes -Ids $Ids
} catch {
    Write-Host ("Exception occured when calling Invoke-BulkDeleteInboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ids** | [**String[]**](String)| ids | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-BulkSendEmails"></a>
# **Invoke-BulkSendEmails**
> void Invoke-BulkSendEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkSendEmailOptions] <PSCustomObject><br>

Bulk Send Emails

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$BulkSendEmailOptions = (Initialize-BulkSendEmailOptions -InboxIds @("InboxIds_example") -SendEmailOptions (Initialize-SendEmailOptions -AddTrackingPixel $false -Attachments @("Attachments_example") -Bcc @("Bcc_example") -Body "Body_example" -Cc @("Cc_example") -Charset "Charset_example" -VarFrom "VarFrom_example" -Html $false -IsHTML $false -ReplyTo "ReplyTo_example" -SendStrategy "SINGLE_MESSAGE" -Subject "Subject_example" -Template "Template_example" -TemplateVariables "TODO" -To @("To_example") -ToContacts @("ToContacts_example") -ToGroup "ToGroup_example" -UseInboxName $false)) # BulkSendEmailOptions | bulkSendEmailOptions

# Bulk Send Emails
try {
     $Result = Invoke-BulkSendEmails -BulkSendEmailOptions $BulkSendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-BulkSendEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BulkSendEmailOptions** | [**BulkSendEmailOptions**](BulkSendEmailOptions)| bulkSendEmailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

