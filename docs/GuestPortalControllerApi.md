# maislurp-client-powershell.maislurp-client-powershell/Api.GuestPortalControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-GuestPortal**](GuestPortalControllerApi#New-GuestPortal) | **POST** /guest-portal | Create a portal page for your customers or clients to log into email accounts and view emails.
[**New-GuestPortalUser**](GuestPortalControllerApi#New-GuestPortalUser) | **POST** /guest-portal/{portalId}/user | Create a portal guest user
[**Get-AllGuestPortalUsers**](GuestPortalControllerApi#Get-AllGuestPortalUsers) | **GET** /guest-portal/user | Get all guest users for portal
[**Get-GuestPortal**](GuestPortalControllerApi#Get-GuestPortal) | **GET** /guest-portal/{portalId} | Get a client email portal
[**Get-GuestPortalUser**](GuestPortalControllerApi#Get-GuestPortalUser) | **GET** /guest-portal/{portalId}/user/{guestId} | Get guest user for portal
[**Get-GuestPortalUserById**](GuestPortalControllerApi#Get-GuestPortalUserById) | **GET** /guest-portal/user/{guestId} | Get guest user
[**Get-GuestPortalUsers**](GuestPortalControllerApi#Get-GuestPortalUsers) | **GET** /guest-portal/{portalId}/user | Get all guest users for portal
[**Get-GuestPortals**](GuestPortalControllerApi#Get-GuestPortals) | **GET** /guest-portal | Get guest portals


<a name="New-GuestPortal"></a>
# **New-GuestPortal**
> GuestPortalDto New-GuestPortal<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePortalOptions] <PSCustomObject><br>

Create a portal page for your customers or clients to log into email accounts and view emails.

Create a guest login page for customers or clients to access assigned email addresses

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreatePortalOptions = (Initialize-CreatePortalOptions -Name "Name_example" -DomainId "DomainId_example" -Description "Description_example" -LinkHelp "LinkHelp_example") # CreatePortalOptions | 

# Create a portal page for your customers or clients to log into email accounts and view emails.
try {
     $Result = New-GuestPortal -CreatePortalOptions $CreatePortalOptions
} catch {
    Write-Host ("Exception occured when calling New-GuestPortal: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePortalOptions** | [**CreatePortalOptions**](CreatePortalOptions)|  | 

### Return type

[**GuestPortalDto**](GuestPortalDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-GuestPortalUser"></a>
# **New-GuestPortalUser**
> GuestPortalUserCreateDto New-GuestPortalUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortalId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePortalUserOptions] <PSCustomObject><br>

Create a portal guest user

Add customer to portal

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PortalId = "PortalId_example" # String | 
$CreatePortalUserOptions = (Initialize-CreatePortalUserOptions -Password "Password_example" -Name "Name_example" -Username "Username_example" -SkipInboxCreation $false -InboxId "InboxId_example" -CreateInboxOptions (Initialize-CreateInboxDto -EmailAddress "EmailAddress_example" -DomainName "DomainName_example" -DomainId "DomainId_example" -Name "Name_example" -Description "Description_example" -UseDomainPool $false -Tags @("Tags_example") -ExpiresAt Get-Date -Favourite $false -ExpiresIn 123 -AllowTeamAccess $false -InboxType "HTTP_INBOX" -VirtualInbox $false -UseShortAddress $false -Prefix "Prefix_example")) # CreatePortalUserOptions | 

# Create a portal guest user
try {
     $Result = New-GuestPortalUser -PortalId $PortalId -CreatePortalUserOptions $CreatePortalUserOptions
} catch {
    Write-Host ("Exception occured when calling New-GuestPortalUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PortalId** | [**String**](String)|  | 
 **CreatePortalUserOptions** | [**CreatePortalUserOptions**](CreatePortalUserOptions)|  | 

### Return type

[**GuestPortalUserCreateDto**](GuestPortalUserCreateDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllGuestPortalUsers"></a>
# **Get-AllGuestPortalUsers**
> PageGuestPortalUsers Get-AllGuestPortalUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortalId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get all guest users for portal

Get all customers for a portal

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PortalId = "PortalId_example" # String | Optional portal ID (optional)
$Search = "Search_example" # String | Optional search term (optional)
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# Get all guest users for portal
try {
     $Result = Get-AllGuestPortalUsers -PortalId $PortalId -Search $Search -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-AllGuestPortalUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PortalId** | [**String**](String)| Optional portal ID | [optional] 
 **Search** | **String**| Optional search term | [optional] 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GuestPortal"></a>
# **Get-GuestPortal**
> GuestPortalDto Get-GuestPortal<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortalId] <PSCustomObject><br>

Get a client email portal

Fetch a customer guest portal

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PortalId = "PortalId_example" # String | 

# Get a client email portal
try {
     $Result = Get-GuestPortal -PortalId $PortalId
} catch {
    Write-Host ("Exception occured when calling Get-GuestPortal: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PortalId** | [**String**](String)|  | 

### Return type

[**GuestPortalDto**](GuestPortalDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GuestPortalUser"></a>
# **Get-GuestPortalUser**
> GuestPortalUserDto Get-GuestPortalUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortalId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GuestId] <PSCustomObject><br>

Get guest user for portal

Get customer for portal

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PortalId = "PortalId_example" # String | 
$GuestId = "GuestId_example" # String | 

# Get guest user for portal
try {
     $Result = Get-GuestPortalUser -PortalId $PortalId -GuestId $GuestId
} catch {
    Write-Host ("Exception occured when calling Get-GuestPortalUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PortalId** | [**String**](String)|  | 
 **GuestId** | [**String**](String)|  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GuestPortalUserById"></a>
# **Get-GuestPortalUserById**
> GuestPortalUserDto Get-GuestPortalUserById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GuestId] <PSCustomObject><br>

Get guest user

Get customer by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GuestId = "GuestId_example" # String | 

# Get guest user
try {
     $Result = Get-GuestPortalUserById -GuestId $GuestId
} catch {
    Write-Host ("Exception occured when calling Get-GuestPortalUserById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GuestId** | [**String**](String)|  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GuestPortalUsers"></a>
# **Get-GuestPortalUsers**
> PageGuestPortalUsers Get-GuestPortalUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PortalId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>

Get all guest users for portal

Get customers for a portal

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$PortalId = "PortalId_example" # String | 
$Search = "Search_example" # String | Optional search term (optional)
$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Since = Get-Date # System.DateTime | Filter by created at after the given timestamp (optional)
$Before = Get-Date # System.DateTime | Filter by created at before the given timestamp (optional)

# Get all guest users for portal
try {
     $Result = Get-GuestPortalUsers -PortalId $PortalId -Search $Search -Page $Page -Size $Size -Sort $Sort -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-GuestPortalUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PortalId** | [**String**](String)|  | 
 **Search** | **String**| Optional search term | [optional] 
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Since** | **System.DateTime**| Filter by created at after the given timestamp | [optional] 
 **Before** | **System.DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GuestPortals"></a>
# **Get-GuestPortals**
> GuestPortalDto[] Get-GuestPortals<br>

Get guest portals

Get portals

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get guest portals
try {
     $Result = Get-GuestPortals
} catch {
    Write-Host ("Exception occured when calling Get-GuestPortals: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GuestPortalDto[]**](GuestPortalDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

