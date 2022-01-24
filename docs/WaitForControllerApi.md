# maislurp-client-powershell.maislurp-client-powershell/Api.WaitForControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Wait-For**](WaitForControllerApi#Wait-For) | **POST** /waitFor | Wait for an email to match the provided filter conditions such as subject contains keyword.
[**Wait-ForEmailCount**](WaitForControllerApi#Wait-ForEmailCount) | **GET** /waitForEmailCount | Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
[**Wait-ForLatestEmail**](WaitForControllerApi#Wait-ForLatestEmail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**Wait-ForMatchingEmails**](WaitForControllerApi#Wait-ForMatchingEmails) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**Wait-ForMatchingFirstEmail**](WaitForControllerApi#Wait-ForMatchingFirstEmail) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches provided MatchOptions array
[**Wait-ForNthEmail**](WaitForControllerApi#Wait-ForNthEmail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.


<a name="Wait-For"></a>
# **Wait-For**
> EmailPreview[] Wait-For<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WaitForConditions] <PSCustomObject><br>

Wait for an email to match the provided filter conditions such as subject contains keyword.

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WaitForConditions = (Initialize-WaitForConditions -InboxId "InboxId_example" -Count 123 -DelayTimeout 123 -Timeout 123 -UnreadOnly $false -CountType "EXACTLY" -VarMatches @((Initialize-MatchOption -Field "SUBJECT" -Should "CONTAIN" -Value "Value_example")) -SortDirection "ASC" -Since Get-Date -Before Get-Date) # WaitForConditions | 

# Wait for an email to match the provided filter conditions such as subject contains keyword.
try {
     $Result = Wait-For -WaitForConditions $WaitForConditions
} catch {
    Write-Host ("Exception occured when calling Wait-For: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WaitForConditions** | [**WaitForConditions**](WaitForConditions)|  | 

### Return type

[**EmailPreview[]**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForEmailCount"></a>
# **Wait-ForEmailCount**
> EmailPreview[] Wait-ForEmailCount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Delay] <System.Nullable[Int64]><br>

Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of the inbox we are fetching emails from
$Count = 987 # Int32 | Number of emails to wait for. Must be greater that 1
$Timeout = 987 # Int64 | Max milliseconds to wait (optional)
$UnreadOnly = true # Boolean | Optional filter for unread only (optional) (default to $false)
$Before = Get-Date # System.DateTime | Filter for emails that were received before the given timestamp (optional)
$Since = Get-Date # System.DateTime | Filter for emails that were received after the given timestamp (optional)
$Sort = "ASC" # String | Sort direction (optional)
$Delay = 987 # Int64 | Max milliseconds delay between calls (optional)

# Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
try {
     $Result = Wait-ForEmailCount -InboxId $InboxId -Count $Count -Timeout $Timeout -UnreadOnly $UnreadOnly -Before $Before -Since $Since -Sort $Sort -Delay $Delay
} catch {
    Write-Host ("Exception occured when calling Wait-ForEmailCount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of the inbox we are fetching emails from | 
 **Count** | **Int32**| Number of emails to wait for. Must be greater that 1 | 
 **Timeout** | **Int64**| Max milliseconds to wait | [optional] 
 **UnreadOnly** | **Boolean**| Optional filter for unread only | [optional] [default to $false]
 **Before** | **System.DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **Since** | **System.DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **Sort** | **String**| Sort direction | [optional] 
 **Delay** | **Int64**| Max milliseconds delay between calls | [optional] 

### Return type

[**EmailPreview[]**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForLatestEmail"></a>
# **Wait-ForLatestEmail**
> Email Wait-ForLatestEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Delay] <System.Nullable[Int64]><br>

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of the inbox we are fetching emails from (optional)
$Timeout = 987 # Int64 | Max milliseconds to wait (optional)
$UnreadOnly = true # Boolean | Optional filter for unread only. (optional) (default to $false)
$Before = Get-Date # System.DateTime | Filter for emails that were before after the given timestamp (optional)
$Since = Get-Date # System.DateTime | Filter for emails that were received after the given timestamp (optional)
$Sort = "ASC" # String | Sort direction (optional)
$Delay = 987 # Int64 | Max milliseconds delay between calls (optional)

# Fetch inbox's latest email or if empty wait for an email to arrive
try {
     $Result = Wait-ForLatestEmail -InboxId $InboxId -Timeout $Timeout -UnreadOnly $UnreadOnly -Before $Before -Since $Since -Sort $Sort -Delay $Delay
} catch {
    Write-Host ("Exception occured when calling Wait-ForLatestEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of the inbox we are fetching emails from | [optional] 
 **Timeout** | **Int64**| Max milliseconds to wait | [optional] 
 **UnreadOnly** | **Boolean**| Optional filter for unread only. | [optional] [default to $false]
 **Before** | **System.DateTime**| Filter for emails that were before after the given timestamp | [optional] 
 **Since** | **System.DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **Sort** | **String**| Sort direction | [optional] 
 **Delay** | **Int64**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForMatchingEmails"></a>
# **Wait-ForMatchingEmails**
> EmailPreview[] Wait-ForMatchingEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Delay] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of the inbox we are fetching emails from
$Count = 987 # Int32 | Number of emails to wait for. Must be greater or equal to 1
$MatchOptions = (Initialize-MatchOptions -VarMatches @((Initialize-MatchOption -Field "SUBJECT" -Should "CONTAIN" -Value "Value_example")) -Conditions @((Initialize-ConditionOption -Condition "HAS_ATTACHMENTS" -Value "TRUE"))) # MatchOptions | 
$Before = Get-Date # System.DateTime | Filter for emails that were received before the given timestamp (optional)
$Since = Get-Date # System.DateTime | Filter for emails that were received after the given timestamp (optional)
$Sort = "ASC" # String | Sort direction (optional)
$Delay = 987 # Int64 | Max milliseconds delay between calls (optional)
$Timeout = 987 # Int64 | Max milliseconds to wait (optional)
$UnreadOnly = true # Boolean | Optional filter for unread only (optional) (default to $false)

# Wait or return list of emails that match simple matching patterns
try {
     $Result = Wait-ForMatchingEmails -InboxId $InboxId -Count $Count -MatchOptions $MatchOptions -Before $Before -Since $Since -Sort $Sort -Delay $Delay -Timeout $Timeout -UnreadOnly $UnreadOnly
} catch {
    Write-Host ("Exception occured when calling Wait-ForMatchingEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of the inbox we are fetching emails from | 
 **Count** | **Int32**| Number of emails to wait for. Must be greater or equal to 1 | 
 **MatchOptions** | [**MatchOptions**](MatchOptions)|  | 
 **Before** | **System.DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **Since** | **System.DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **Sort** | **String**| Sort direction | [optional] 
 **Delay** | **Int64**| Max milliseconds delay between calls | [optional] 
 **Timeout** | **Int64**| Max milliseconds to wait | [optional] 
 **UnreadOnly** | **Boolean**| Optional filter for unread only | [optional] [default to $false]

### Return type

[**EmailPreview[]**](EmailPreview) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForMatchingFirstEmail"></a>
# **Wait-ForMatchingFirstEmail**
> Email Wait-ForMatchingFirstEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Delay] <System.Nullable[Int64]><br>

Wait for or return the first email that matches provided MatchOptions array

Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of the inbox we are matching an email for
$MatchOptions = (Initialize-MatchOptions -VarMatches @() -Conditions @((Initialize-ConditionOption -Condition "HAS_ATTACHMENTS" -Value "TRUE"))) # MatchOptions | 
$Timeout = 987 # Int64 | Max milliseconds to wait (optional)
$UnreadOnly = true # Boolean | Optional filter for unread only (optional) (default to $false)
$Since = Get-Date # System.DateTime | Filter for emails that were received after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter for emails that were received before the given timestamp (optional)
$Sort = "ASC" # String | Sort direction (optional)
$Delay = 987 # Int64 | Max milliseconds delay between calls (optional)

# Wait for or return the first email that matches provided MatchOptions array
try {
     $Result = Wait-ForMatchingFirstEmail -InboxId $InboxId -MatchOptions $MatchOptions -Timeout $Timeout -UnreadOnly $UnreadOnly -Since $Since -Before $Before -Sort $Sort -Delay $Delay
} catch {
    Write-Host ("Exception occured when calling Wait-ForMatchingFirstEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of the inbox we are matching an email for | 
 **MatchOptions** | [**MatchOptions**](MatchOptions)|  | 
 **Timeout** | **Int64**| Max milliseconds to wait | [optional] 
 **UnreadOnly** | **Boolean**| Optional filter for unread only | [optional] [default to $false]
 **Since** | **System.DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **Sort** | **String**| Sort direction | [optional] 
 **Delay** | **Int64**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForNthEmail"></a>
# **Wait-ForNthEmail**
> Email Wait-ForNthEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Index] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UnreadOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Delay] <System.Nullable[Int64]><br>

Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | Id of the inbox you are fetching emails from (optional)
$Index = 987 # Int32 | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 (optional) (default to 0)
$Timeout = 987 # Int64 | Max milliseconds to wait for the nth email if not already present (optional)
$UnreadOnly = true # Boolean | Optional filter for unread only (optional) (default to $false)
$Since = Get-Date # System.DateTime | Filter for emails that were received after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter for emails that were received before the given timestamp (optional)
$Sort = "ASC" # String | Sort direction (optional)
$Delay = 987 # Int64 | Max milliseconds delay between calls (optional)

# Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
try {
     $Result = Wait-ForNthEmail -InboxId $InboxId -Index $Index -Timeout $Timeout -UnreadOnly $UnreadOnly -Since $Since -Before $Before -Sort $Sort -Delay $Delay
} catch {
    Write-Host ("Exception occured when calling Wait-ForNthEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| Id of the inbox you are fetching emails from | [optional] 
 **Index** | **Int32**| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to 0]
 **Timeout** | **Int64**| Max milliseconds to wait for the nth email if not already present | [optional] 
 **UnreadOnly** | **Boolean**| Optional filter for unread only | [optional] [default to $false]
 **Since** | **System.DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **Sort** | **String**| Sort direction | [optional] 
 **Delay** | **Int64**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

