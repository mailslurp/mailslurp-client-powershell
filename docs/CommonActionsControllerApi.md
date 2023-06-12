# maislurp-client-powershell.maislurp-client-powershell/Api.CommonActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NewEmailAddress**](CommonActionsControllerApi#New-NewEmailAddress) | **POST** /newEmailAddress | Create new random inbox
[**New-RandomInbox**](CommonActionsControllerApi#New-RandomInbox) | **POST** /createInbox | Create new random inbox
[**Invoke-DeleteEmailAddress**](CommonActionsControllerApi#Invoke-DeleteEmailAddress) | **DELETE** /deleteEmailAddress | Delete inbox email address by inbox id
[**Invoke-EmptyInbox**](CommonActionsControllerApi#Invoke-EmptyInbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**Send-EmailSimple**](CommonActionsControllerApi#Send-EmailSimple) | **POST** /sendEmail | Send an email


<a name="New-NewEmailAddress"></a>
# **New-NewEmailAddress**
> InboxDto New-NewEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllowTeamAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseDomainPool] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresAt] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresIn] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VirtualInbox] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseShortAddress] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <PSCustomObject><br>

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

$AllowTeamAccess = true # Boolean |  (optional)
$UseDomainPool = true # Boolean |  (optional)
$ExpiresAt = Get-Date # System.DateTime |  (optional)
$ExpiresIn = 987 # Int64 |  (optional)
$EmailAddress = "EmailAddress_example" # String |  (optional)
$InboxType = "HTTP_INBOX" # String |  (optional)
$Description = "Description_example" # String |  (optional)
$Name = "Name_example" # String |  (optional)
$Tags = @("Inner_example") # String[] |  (optional)
$Favourite = true # Boolean |  (optional)
$VirtualInbox = true # Boolean |  (optional)
$UseShortAddress = true # Boolean |  (optional)
$DomainName = "DomainName_example" # String |  (optional)
$DomainId = "DomainId_example" # String |  (optional)

# Create new random inbox
try {
     $Result = New-NewEmailAddress -AllowTeamAccess $AllowTeamAccess -UseDomainPool $UseDomainPool -ExpiresAt $ExpiresAt -ExpiresIn $ExpiresIn -EmailAddress $EmailAddress -InboxType $InboxType -Description $Description -Name $Name -Tags $Tags -Favourite $Favourite -VirtualInbox $VirtualInbox -UseShortAddress $UseShortAddress -DomainName $DomainName -DomainId $DomainId
} catch {
    Write-Host ("Exception occured when calling New-NewEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AllowTeamAccess** | **Boolean**|  | [optional] 
 **UseDomainPool** | **Boolean**|  | [optional] 
 **ExpiresAt** | **System.DateTime**|  | [optional] 
 **ExpiresIn** | **Int64**|  | [optional] 
 **EmailAddress** | **String**|  | [optional] 
 **InboxType** | **String**|  | [optional] 
 **Description** | **String**|  | [optional] 
 **Name** | **String**|  | [optional] 
 **Tags** | [**String[]**](String)|  | [optional] 
 **Favourite** | **Boolean**|  | [optional] 
 **VirtualInbox** | **Boolean**|  | [optional] 
 **UseShortAddress** | **Boolean**|  | [optional] 
 **DomainName** | **String**|  | [optional] 
 **DomainId** | [**String**](String)|  | [optional] 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-RandomInbox"></a>
# **New-RandomInbox**
> InboxDto New-RandomInbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AllowTeamAccess] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseDomainPool] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresAt] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiresIn] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Favourite] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VirtualInbox] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseShortAddress] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <PSCustomObject><br>

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

$AllowTeamAccess = true # Boolean |  (optional)
$UseDomainPool = true # Boolean |  (optional)
$ExpiresAt = Get-Date # System.DateTime |  (optional)
$ExpiresIn = 987 # Int64 |  (optional)
$EmailAddress = "EmailAddress_example" # String |  (optional)
$InboxType = "HTTP_INBOX" # String |  (optional)
$Description = "Description_example" # String |  (optional)
$Name = "Name_example" # String |  (optional)
$Tags = @("Inner_example") # String[] |  (optional)
$Favourite = true # Boolean |  (optional)
$VirtualInbox = true # Boolean |  (optional)
$UseShortAddress = true # Boolean |  (optional)
$DomainName = "DomainName_example" # String |  (optional)
$DomainId = "DomainId_example" # String |  (optional)

# Create new random inbox
try {
     $Result = New-RandomInbox -AllowTeamAccess $AllowTeamAccess -UseDomainPool $UseDomainPool -ExpiresAt $ExpiresAt -ExpiresIn $ExpiresIn -EmailAddress $EmailAddress -InboxType $InboxType -Description $Description -Name $Name -Tags $Tags -Favourite $Favourite -VirtualInbox $VirtualInbox -UseShortAddress $UseShortAddress -DomainName $DomainName -DomainId $DomainId
} catch {
    Write-Host ("Exception occured when calling New-RandomInbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AllowTeamAccess** | **Boolean**|  | [optional] 
 **UseDomainPool** | **Boolean**|  | [optional] 
 **ExpiresAt** | **System.DateTime**|  | [optional] 
 **ExpiresIn** | **Int64**|  | [optional] 
 **EmailAddress** | **String**|  | [optional] 
 **InboxType** | **String**|  | [optional] 
 **Description** | **String**|  | [optional] 
 **Name** | **String**|  | [optional] 
 **Tags** | [**String[]**](String)|  | [optional] 
 **Favourite** | **Boolean**|  | [optional] 
 **VirtualInbox** | **Boolean**|  | [optional] 
 **UseShortAddress** | **Boolean**|  | [optional] 
 **DomainName** | **String**|  | [optional] 
 **DomainId** | [**String**](String)|  | [optional] 

### Return type

[**InboxDto**](InboxDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteEmailAddress"></a>
# **Invoke-DeleteEmailAddress**
> void Invoke-DeleteEmailAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InboxId] <PSCustomObject><br>

Delete inbox email address by inbox id

Deletes inbox email address

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InboxId = "InboxId_example" # String | 

# Delete inbox email address by inbox id
try {
     $Result = Invoke-DeleteEmailAddress -InboxId $InboxId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteEmailAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InboxId** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

$InboxId = "InboxId_example" # String | 

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
 **InboxId** | [**String**](String)|  | 

### Return type

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SimpleSendEmailOptions] <PSCustomObject><br>

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

$SimpleSendEmailOptions = (Initialize-SimpleSendEmailOptions -SenderId "SenderId_example" -To "To_example" -Body "Body_example" -Subject "Subject_example") # SimpleSendEmailOptions | 

# Send an email
try {
     $Result = Send-EmailSimple -SimpleSendEmailOptions $SimpleSendEmailOptions
} catch {
    Write-Host ("Exception occured when calling Send-EmailSimple: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SimpleSendEmailOptions** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

