# maislurp-client-powershell.maislurp-client-powershell/Api.GroupControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-ContactsToGroup**](GroupControllerApi#Add-ContactsToGroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**New-Group**](GroupControllerApi#New-Group) | **POST** /groups | Create a group
[**Invoke-DeleteGroup**](GroupControllerApi#Invoke-DeleteGroup) | **DELETE** /groups/{groupId} | Delete group
[**Get-AllGroups**](GroupControllerApi#Get-AllGroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**Get-Group**](GroupControllerApi#Get-Group) | **GET** /groups/{groupId} | Get group
[**Get-GroupWithContacts**](GroupControllerApi#Get-GroupWithContacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**Get-GroupWithContactsPaginated**](GroupControllerApi#Get-GroupWithContactsPaginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
[**Get-Groups**](GroupControllerApi#Get-Groups) | **GET** /groups | Get all groups
[**Remove-ContactsFromGroup**](GroupControllerApi#Remove-ContactsFromGroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


<a name="Add-ContactsToGroup"></a>
# **Add-ContactsToGroup**
> GroupContactsDto Add-ContactsToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateGroupContactsOption] <PSCustomObject><br>

Add contacts to a group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GroupId = "GroupId_example" # String | groupId
$UpdateGroupContactsOption = (Initialize-UpdateGroupContacts -ContactIds @("ContactIds_example")) # UpdateGroupContacts | updateGroupContactsOption

# Add contacts to a group
try {
     $Result = Add-ContactsToGroup -GroupId $GroupId -UpdateGroupContactsOption $UpdateGroupContactsOption
} catch {
    Write-Host ("Exception occured when calling Add-ContactsToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | [**String**](String)| groupId | 
 **UpdateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-Group"></a>
# **New-Group**
> GroupDto New-Group<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateGroupOptions] <PSCustomObject><br>

Create a group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateGroupOptions = (Initialize-CreateGroupOptions -Name "Name_example" -Description "Description_example") # CreateGroupOptions | createGroupOptions

# Create a group
try {
     $Result = New-Group -CreateGroupOptions $CreateGroupOptions
} catch {
    Write-Host ("Exception occured when calling New-Group: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateGroupOptions** | [**CreateGroupOptions**](CreateGroupOptions)| createGroupOptions | 

### Return type

[**GroupDto**](GroupDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteGroup"></a>
# **Invoke-DeleteGroup**
> void Invoke-DeleteGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <PSCustomObject><br>

Delete group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GroupId = "GroupId_example" # String | groupId

# Delete group
try {
     $Result = Invoke-DeleteGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | [**String**](String)| groupId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AllGroups"></a>
# **Get-AllGroups**
> PageGroupProjection Get-AllGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get all Contact Groups in paginated format

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in list pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get all Contact Groups in paginated format
try {
     $Result = Get-AllGroups -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AllGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in list pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageGroupProjection**](PageGroupProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Group"></a>
# **Get-Group**
> GroupDto Get-Group<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <PSCustomObject><br>

Get group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GroupId = "GroupId_example" # String | groupId

# Get group
try {
     $Result = Get-Group -GroupId $GroupId
} catch {
    Write-Host ("Exception occured when calling Get-Group: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | [**String**](String)| groupId | 

### Return type

[**GroupDto**](GroupDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GroupWithContacts"></a>
# **Get-GroupWithContacts**
> GroupContactsDto Get-GroupWithContacts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <PSCustomObject><br>

Get group and contacts belonging to it

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GroupId = "GroupId_example" # String | groupId

# Get group and contacts belonging to it
try {
     $Result = Get-GroupWithContacts -GroupId $GroupId
} catch {
    Write-Host ("Exception occured when calling Get-GroupWithContacts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | [**String**](String)| groupId | 

### Return type

[**GroupContactsDto**](GroupContactsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-GroupWithContactsPaginated"></a>
# **Get-GroupWithContactsPaginated**
> PageContactProjection Get-GroupWithContactsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get group and paginated contacts belonging to it

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GroupId = "GroupId_example" # String | groupId
$Page = 987 # Int32 | Optional page index in group contact pagination (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in group contact pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get group and paginated contacts belonging to it
try {
     $Result = Get-GroupWithContactsPaginated -GroupId $GroupId -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-GroupWithContactsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | [**String**](String)| groupId | 
 **Page** | **Int32**| Optional page index in group contact pagination | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in group contact pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageContactProjection**](PageContactProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Groups"></a>
# **Get-Groups**
> GroupProjection[] Get-Groups<br>

Get all groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Get all groups
try {
     $Result = Get-Groups
} catch {
    Write-Host ("Exception occured when calling Get-Groups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupProjection[]**](GroupProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Remove-ContactsFromGroup"></a>
# **Remove-ContactsFromGroup**
> GroupContactsDto Remove-ContactsFromGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateGroupContactsOption] <PSCustomObject><br>

Remove contacts from a group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GroupId = "GroupId_example" # String | groupId
$UpdateGroupContactsOption = (Initialize-UpdateGroupContacts -ContactIds @("ContactIds_example")) # UpdateGroupContacts | updateGroupContactsOption

# Remove contacts from a group
try {
     $Result = Remove-ContactsFromGroup -GroupId $GroupId -UpdateGroupContactsOption $UpdateGroupContactsOption
} catch {
    Write-Host ("Exception occured when calling Remove-ContactsFromGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | [**String**](String)| groupId | 
 **UpdateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

