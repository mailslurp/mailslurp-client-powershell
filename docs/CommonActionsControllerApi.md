# maislurp-client-powershell.maislurp-client-powershell/Api.CommonActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NewEmailAddress**](CommonActionsControllerApi#New-NewEmailAddress) | **POST** /createInbox | Create new random inbox
[**New-NewEmailAddress1**](CommonActionsControllerApi#New-NewEmailAddress1) | **POST** /newEmailAddress | Create new random inbox
[**Invoke-EmptyInbox**](CommonActionsControllerApi#Invoke-EmptyInbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**Send-EmailSimple**](CommonActionsControllerApi#Send-EmailSimple) | **POST** /sendEmail | Send an email


<a name="New-NewEmailAddress"></a>
# **New-NewEmailAddress**
> Inbox New-NewEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllowTeamAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresAt] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresIn] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseDomainPool] <System.Nullable[Boolean]><br>

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AllowTeamAccess = true # Boolean | allowTeamAccess (optional)
$ExpiresAt = Get-Date # System.DateTime | expiresAt (optional)
$ExpiresIn = 987 # Int64 | expiresIn (optional)
$UseDomainPool = true # Boolean | useDomainPool (optional)

# Create new random inbox
try {
     $Result = New-NewEmailAddress -AllowTeamAccess $AllowTeamAccess -ExpiresAt $ExpiresAt -ExpiresIn $ExpiresIn -UseDomainPool $UseDomainPool
} catch {
    Write-Host ("Exception occured when calling New-NewEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AllowTeamAccess** | **Boolean**| allowTeamAccess | [optional] 
 **ExpiresAt** | **System.DateTime**| expiresAt | [optional] 
 **ExpiresIn** | **Int64**| expiresIn | [optional] 
 **UseDomainPool** | **Boolean**| useDomainPool | [optional] 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-NewEmailAddress1"></a>
# **New-NewEmailAddress1**
> Inbox New-NewEmailAddress1<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllowTeamAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresAt] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresIn] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseDomainPool] <System.Nullable[Boolean]><br>

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AllowTeamAccess = true # Boolean | allowTeamAccess (optional)
$ExpiresAt = Get-Date # System.DateTime | expiresAt (optional)
$ExpiresIn = 987 # Int64 | expiresIn (optional)
$UseDomainPool = true # Boolean | useDomainPool (optional)

# Create new random inbox
try {
     $Result = New-NewEmailAddress1 -AllowTeamAccess $AllowTeamAccess -ExpiresAt $ExpiresAt -ExpiresIn $ExpiresIn -UseDomainPool $UseDomainPool
} catch {
    Write-Host ("Exception occured when calling New-NewEmailAddress1: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AllowTeamAccess** | **Boolean**| allowTeamAccess | [optional] 
 **ExpiresAt** | **System.DateTime**| expiresAt | [optional] 
 **ExpiresIn** | **Int64**| expiresIn | [optional] 
 **UseDomainPool** | **Boolean**| useDomainPool | [optional] 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-EmptyInbox"></a>
# **Invoke-EmptyInbox**
> void Invoke-EmptyInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Delete all emails in an inbox

Deletes all emails

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | inboxId

# Delete all emails in an inbox
try {
     $Result = Invoke-EmptyInbox -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-EmptyInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)| inboxId | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Send-EmailSimple"></a>
# **Send-EmailSimple**
> void Send-EmailSimple<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailOptions] <PSCustomObject><br>

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailOptions = (Initialize-SimpleSendEmailOptions -Body "Body_example" -SenderId "SenderId_example" -Subject "Subject_example" -To "To_example") # SimpleSendEmailOptions | emailOptions

# Send an email
try {
     $Result = Send-EmailSimple -EmailOptions $EmailOptions
} catch {
    Write-Host ("Exception occured when calling Send-EmailSimple: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailOptions** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions)| emailOptions | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

