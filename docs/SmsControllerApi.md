# maislurp-client-powershell.maislurp-client-powershell/Api.SmsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteSentSmsMessage**](SmsControllerApi#Invoke-DeleteSentSmsMessage) | **DELETE** /sms/sent/{sentSmsId} | Delete sent SMS message.
[**Invoke-DeleteSentSmsMessages**](SmsControllerApi#Invoke-DeleteSentSmsMessages) | **DELETE** /sms/sent | Delete all sent SMS messages
[**Invoke-DeleteSmsMessage**](SmsControllerApi#Invoke-DeleteSmsMessage) | **DELETE** /sms/{smsId} | Delete SMS message.
[**Invoke-DeleteSmsMessages**](SmsControllerApi#Invoke-DeleteSmsMessages) | **DELETE** /sms | Delete all SMS messages
[**Get-AllSmsMessages**](SmsControllerApi#Get-AllSmsMessages) | **GET** /sms | 
[**Get-ReplyForSmsMessage**](SmsControllerApi#Get-ReplyForSmsMessage) | **GET** /sms/{smsId}/reply | Get reply for an SMS message
[**Get-SentSmsCount**](SmsControllerApi#Get-SentSmsCount) | **GET** /sms/sent/count | Get sent SMS count
[**Get-SentSmsMessage**](SmsControllerApi#Get-SentSmsMessage) | **GET** /sms/sent/{sentSmsId} | Get sent SMS content including body. Expects sent SMS to exist by ID.
[**Get-SentSmsMessagesPaginated**](SmsControllerApi#Get-SentSmsMessagesPaginated) | **GET** /sms/sent | Get all SMS messages in all phone numbers in paginated form. .
[**Get-SmsCount**](SmsControllerApi#Get-SmsCount) | **GET** /sms/count | Get SMS count
[**Get-SmsMessage**](SmsControllerApi#Get-SmsMessage) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**Get-UnreadSmsCount**](SmsControllerApi#Get-UnreadSmsCount) | **GET** /sms/unreadCount | Get unread SMS count
[**Invoke-ReplyToSmsMessage**](SmsControllerApi#Invoke-ReplyToSmsMessage) | **POST** /sms/{smsId}/reply | Send a reply to a received SMS message. Replies are sent from the receiving number.
[**Send-Sms**](SmsControllerApi#Send-Sms) | **POST** /sms/send | 
[**Set-SmsFavourited**](SmsControllerApi#Set-SmsFavourited) | **PUT** /sms/{smsId}/favourite | 


<a name="Invoke-DeleteSentSmsMessage"></a>
# **Invoke-DeleteSentSmsMessage**
> void Invoke-DeleteSentSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SentSmsId] <PSCustomObject><br>

Delete sent SMS message.

Delete a sent SMS message

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SentSmsId = "SentSmsId_example" # String | 

# Delete sent SMS message.
try {
     $Result = Invoke-DeleteSentSmsMessage -SentSmsId $SentSmsId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteSentSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SentSmsId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteSentSmsMessages"></a>
# **Invoke-DeleteSentSmsMessages**
> void Invoke-DeleteSentSmsMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumberId] <PSCustomObject><br>

Delete all sent SMS messages

Delete all sent SMS messages or all messages for a given phone number

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PhoneNumberId = "PhoneNumberId_example" # String |  (optional)

# Delete all sent SMS messages
try {
     $Result = Invoke-DeleteSentSmsMessages -PhoneNumberId $PhoneNumberId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteSentSmsMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-AllSmsMessages"></a>
# **Get-AllSmsMessages**
> PageSmsProjection Get-AllSmsMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumber] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String[]><br>



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
$Since = Get-Date # System.DateTime | Optional filter SMSs received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter SMSs received before given date time (optional)
$Search = "Search_example" # String | Optional search filter (optional)
$Favourite = true # Boolean | Optionally filter results for favourites only (optional) (default to $false)
$Include = @("Inner_example") # String[] | Optional list of IDs to include in result (optional)

try {
     $Result = Get-AllSmsMessages -PhoneNumber $PhoneNumber -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Search $Search -Favourite $Favourite -Include $Include
} catch {
    Write-Host ("Exception occured when calling Get-AllSmsMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Since** | **System.DateTime**| Optional filter SMSs received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter SMSs received before given date time | [optional] 
 **Search** | **String**| Optional search filter | [optional] 
 **Favourite** | **Boolean**| Optionally filter results for favourites only | [optional] [default to $false]
 **Include** | [**String[]**](String)| Optional list of IDs to include in result | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

<a name="Get-SentSmsCount"></a>
# **Get-SentSmsCount**
> CountDto Get-SentSmsCount<br>

Get sent SMS count

Get number of sent SMS

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get sent SMS count
try {
     $Result = Get-SentSmsCount
} catch {
    Write-Host ("Exception occured when calling Get-SentSmsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SentSmsMessage"></a>
# **Get-SentSmsMessage**
> SentSmsDto Get-SentSmsMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SentSmsId] <PSCustomObject><br>

Get sent SMS content including body. Expects sent SMS to exist by ID.

Returns an SMS summary object with content.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SentSmsId = "SentSmsId_example" # String | 

# Get sent SMS content including body. Expects sent SMS to exist by ID.
try {
     $Result = Get-SentSmsMessage -SentSmsId $SentSmsId
} catch {
    Write-Host ("Exception occured when calling Get-SentSmsMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SentSmsId** | [**String**](String)|  | 

### Return type

[**SentSmsDto**](SentSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SentSmsMessagesPaginated"></a>
# **Get-SentSmsMessagesPaginated**
> PageSentSmsProjection Get-SentSmsMessagesPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PhoneNumber] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

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

$PhoneNumber = "PhoneNumber_example" # String | Optional phone number to filter sent SMS messages for (optional)
$Page = 987 # Int32 | Optional page index in SMS list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Optional filter SMSs received after given date time (optional)
$Before = Get-Date # System.DateTime | Optional filter SMSs received before given date time (optional)
$Search = "Search_example" # String | Optional search filter (optional)

# Get all SMS messages in all phone numbers in paginated form. .
try {
     $Result = Get-SentSmsMessagesPaginated -PhoneNumber $PhoneNumber -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before -Search $Search
} catch {
    Write-Host ("Exception occured when calling Get-SentSmsMessagesPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PhoneNumber** | [**String**](String)| Optional phone number to filter sent SMS messages for | [optional] 
 **Page** | **Int32**| Optional page index in SMS list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Optional filter SMSs received after given date time | [optional] 
 **Before** | **System.DateTime**| Optional filter SMSs received before given date time | [optional] 
 **Search** | **String**| Optional search filter | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-SmsCount"></a>
# **Get-SmsCount**
> CountDto Get-SmsCount<br>

Get SMS count

Get number of SMS

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get SMS count
try {
     $Result = Get-SmsCount
} catch {
    Write-Host ("Exception occured when calling Get-SmsCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto) (PSCustomObject)

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

<a name="Send-Sms"></a>
# **Send-Sms**
> SentSmsDto Send-Sms<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsSendOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FromPhoneNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FromPhoneId] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SmsSendOptions = (Initialize-SmsSendOptions -To "To_example" -Body "Body_example") # SmsSendOptions | 
$FromPhoneNumber = "FromPhoneNumber_example" # String | Phone number to send from in E.164 format (optional)
$FromPhoneId = "FromPhoneId_example" # String | Phone number ID to send from in UUID form (optional)

try {
     $Result = Send-Sms -SmsSendOptions $SmsSendOptions -FromPhoneNumber $FromPhoneNumber -FromPhoneId $FromPhoneId
} catch {
    Write-Host ("Exception occured when calling Send-Sms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsSendOptions** | [**SmsSendOptions**](SmsSendOptions)|  | 
 **FromPhoneNumber** | **String**| Phone number to send from in E.164 format | [optional] 
 **FromPhoneId** | [**String**](String)| Phone number ID to send from in UUID form | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Set-SmsFavourited"></a>
# **Set-SmsFavourited**
> SmsDto Set-SmsFavourited<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourited] <Boolean><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$SmsId = "SmsId_example" # String | ID of SMS to set favourite state
$Favourited = true # Boolean | 

try {
     $Result = Set-SmsFavourited -SmsId $SmsId -Favourited $Favourited
} catch {
    Write-Host ("Exception occured when calling Set-SmsFavourited: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsId** | [**String**](String)| ID of SMS to set favourite state | 
 **Favourited** | **Boolean**|  | 

### Return type

[**SmsDto**](SmsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

