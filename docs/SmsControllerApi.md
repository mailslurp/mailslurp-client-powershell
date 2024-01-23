# maislurp-client-powershell.maislurp-client-powershell/Api.SmsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteSmsMessage**](SmsControllerApi#Invoke-DeleteSmsMessage) | **DELETE** /sms/{smsId} | Delete SMS message.
[**Invoke-DeleteSmsMessages**](SmsControllerApi#Invoke-DeleteSmsMessages) | **DELETE** /sms | Delete all SMS messages
[**Get-ReplyForSmsMessage**](SmsControllerApi#Get-ReplyForSmsMessage) | **GET** /sms/{smsId}/reply | Get reply for an SMS message
[**Get-SmsMessage**](SmsControllerApi#Get-SmsMessage) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**Get-SmsMessagesPaginated**](SmsControllerApi#Get-SmsMessagesPaginated) | **GET** /sms | Get all SMS messages in all phone numbers in paginated form. .
[**Get-UnreadSmsCount**](SmsControllerApi#Get-UnreadSmsCount) | **GET** /sms/unreadCount | Get unread SMS count
[**Invoke-ReplyToSmsMessage**](SmsControllerApi#Invoke-ReplyToSmsMessage) | **POST** /sms/{smsId}/reply | Send a reply to a received SMS message. Replies are sent from the receiving number.


<a name="Invoke-DeleteSmsMessage"></a>
# **Invoke-DeleteSmsMessage**
> void Invoke-DeleteSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>

Delete SMS message.

Delete an SMS message

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SmsId = "SmsId_example" # String | 

# Delete SMS message.
try {
     $Result = Invoke-DeleteSmsMessage -SmsId $SmsId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteSmsMessages"></a>
# **Invoke-DeleteSmsMessages**
> void Invoke-DeleteSmsMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>

Delete all SMS messages

Delete all SMS messages or all messages for a given phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String |  (optional)

# Delete all SMS messages
try {
     $Result = Invoke-DeleteSmsMessages -PhoneNumberId $PhoneNumberId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteSmsMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumberId** | [**String**](String)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ReplyForSmsMessage"></a>
# **Get-ReplyForSmsMessage**
> ReplyForSms Get-ReplyForSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>

Get reply for an SMS message

Get reply for an SMS message.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SmsId = "SmsId_example" # String | 

# Get reply for an SMS message
try {
     $Result = Get-ReplyForSmsMessage -SmsId $SmsId
} catch {
    Write-Host ("Exception occured when calling Get-ReplyForSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsId** | [**String**](String)|  | 

### Return type

[**ReplyForSms**](ReplyForSms) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SmsMessage"></a>
# **Get-SmsMessage**
> SmsDto Get-SmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>

Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.

Returns a SMS summary object with content.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SmsId = "SmsId_example" # String | 

# Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
try {
     $Result = Get-SmsMessage -SmsId $SmsId
} catch {
    Write-Host ("Exception occured when calling Get-SmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsId** | [**String**](String)|  | 

### Return type

[**SmsDto**](SmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SmsMessagesPaginated"></a>
# **Get-SmsMessagesPaginated**
> PageSmsProjection Get-SmsMessagesPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumber] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get all SMS messages in all phone numbers in paginated form. .

By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumber = "PhoneNumber_example" # String | Optional receiving phone number to filter SMS messages for (optional)
$Page = 987 # Int32 | Optional page index in SMS list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$UnreadOnly = true # Boolean | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional) (default to $false)
$Since = Get-Date # System.DateTime | Optional filter SMSs received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter SMSs received before given date time (optional)

# Get all SMS messages in all phone numbers in paginated form. .
try {
     $Result = Get-SmsMessagesPaginated -PhoneNumber $PhoneNumber -Page $Page -Size $Size -Sort $Sort -UnreadOnly $UnreadOnly -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-SmsMessagesPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumber** | [**String**](String)| Optional receiving phone number to filter SMS messages for | [optional] 
 **Page** | **Int32**| Optional page index in SMS list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **UnreadOnly** | **Boolean**| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to $false]
 **Since** | **System.DateTime**| Optional filter SMSs received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter SMSs received before given date time | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-UnreadSmsCount"></a>
# **Get-UnreadSmsCount**
> UnreadCount Get-UnreadSmsCount<br>

Get unread SMS count

Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get unread SMS count
try {
     $Result = Get-UnreadSmsCount
} catch {
    Write-Host ("Exception occured when calling Get-UnreadSmsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnreadCount**](UnreadCount) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ReplyToSmsMessage"></a>
# **Invoke-ReplyToSmsMessage**
> SentSmsDto Invoke-ReplyToSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsReplyOptions] <PSCustomObject><br>

Send a reply to a received SMS message. Replies are sent from the receiving number.

Reply to an SMS message.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SmsId = "SmsId_example" # String | 
$SmsReplyOptions = (Initialize-SmsReplyOptions -Body "Body_example") # SmsReplyOptions | 

# Send a reply to a received SMS message. Replies are sent from the receiving number.
try {
     $Result = Invoke-ReplyToSmsMessage -SmsId $SmsId -SmsReplyOptions $SmsReplyOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-ReplyToSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsId** | [**String**](String)|  | 
 **SmsReplyOptions** | [**SmsReplyOptions**](SmsReplyOptions)|  | 

### Return type

[**SentSmsDto**](SentSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

