# maislurp-client-powershell.maislurp-client-powershell/Api.SCIMApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Group**](SCIMApi#New-Group) | **POST** /scim/v2/{slug}/Groups | 
[**New-User**](SCIMApi#New-User) | **POST** /scim/v2/{slug}/Users | 
[**Invoke-DeleteGroup**](SCIMApi#Invoke-DeleteGroup) | **DELETE** /scim/v2/{slug}/Groups/{groupId} | 
[**Invoke-DeleteUser**](SCIMApi#Invoke-DeleteUser) | **DELETE** /scim/v2/{slug}/Users/{userId} | 
[**Get-Group**](SCIMApi#Get-Group) | **GET** /scim/v2/{slug}/Groups/{groupId} | 
[**Get-ResourceType**](SCIMApi#Get-ResourceType) | **GET** /scim/v2/{slug}/ResourceTypes/{resourceType} | 
[**Get-ResourceTypes**](SCIMApi#Get-ResourceTypes) | **GET** /scim/v2/{slug}/ResourceTypes | 
[**Get-Schema**](SCIMApi#Get-Schema) | **GET** /scim/v2/{slug}/Schemas/{schemaId} | 
[**Get-Schemas**](SCIMApi#Get-Schemas) | **GET** /scim/v2/{slug}/Schemas | 
[**Get-ServiceProviderConfig**](SCIMApi#Get-ServiceProviderConfig) | **GET** /scim/v2/{slug}/ServiceProviderConfig | 
[**Get-User**](SCIMApi#Get-User) | **GET** /scim/v2/{slug}/Users/{userId} | 
[**Invoke-ListGroups**](SCIMApi#Invoke-ListGroups) | **GET** /scim/v2/{slug}/Groups | 
[**Invoke-ListUsers**](SCIMApi#Invoke-ListUsers) | **GET** /scim/v2/{slug}/Users | 
[**Invoke-PatchGroup**](SCIMApi#Invoke-PatchGroup) | **PATCH** /scim/v2/{slug}/Groups/{groupId} | 
[**Invoke-PatchUser**](SCIMApi#Invoke-PatchUser) | **PATCH** /scim/v2/{slug}/Users/{userId} | 
[**Invoke-ReplaceGroup**](SCIMApi#Invoke-ReplaceGroup) | **PUT** /scim/v2/{slug}/Groups/{groupId} | 
[**Invoke-ReplaceUser**](SCIMApi#Invoke-ReplaceUser) | **PUT** /scim/v2/{slug}/Users/{userId} | 


<a name="New-Group"></a>
# **New-Group**
> SystemCollectionsHashtable New-Group<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScimGroupResource] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$ScimGroupResource = (Initialize-ScimGroupResource -Schemas @("Schemas_example") -Id "Id_example" -ExternalId "ExternalId_example" -DisplayName "DisplayName_example" -Members @((Initialize-ScimMember -Value "Value_example" -Ref "Ref_example" -Display "Display_example")) -Meta (Initialize-ScimMeta -ResourceType "ResourceType_example" -Created Get-Date -LastModified Get-Date -Location "Location_example")) # ScimGroupResource | 

try {
     $Result = New-Group -Slug $Slug -ScimGroupResource $ScimGroupResource
} catch {
    Write-Host ("Exception occured when calling New-Group: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **ScimGroupResource** | [**ScimGroupResource**](ScimGroupResource)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-User"></a>
# **New-User**
> SystemCollectionsHashtable New-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScimUserResource] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$ScimUserResource = (Initialize-ScimUserResource -Schemas @("Schemas_example") -Id "Id_example" -ExternalId "ExternalId_example" -UserName "UserName_example" -Name (Initialize-ScimName -Formatted "Formatted_example" -GivenName "GivenName_example" -FamilyName "FamilyName_example") -DisplayName "DisplayName_example" -Emails @((Initialize-ScimEmail -Value "Value_example" -Primary $false -Type "Type_example")) -Active $false -Meta (Initialize-ScimMeta -ResourceType "ResourceType_example" -Created Get-Date -LastModified Get-Date -Location "Location_example")) # ScimUserResource | 

try {
     $Result = New-User -Slug $Slug -ScimUserResource $ScimUserResource
} catch {
    Write-Host ("Exception occured when calling New-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **ScimUserResource** | [**ScimUserResource**](ScimUserResource)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteGroup"></a>
# **Invoke-DeleteGroup**
> SystemCollectionsHashtable Invoke-DeleteGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$GroupId = "GroupId_example" # String | 

try {
     $Result = Invoke-DeleteGroup -Slug $Slug -GroupId $GroupId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **GroupId** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteUser"></a>
# **Invoke-DeleteUser**
> SystemCollectionsHashtable Invoke-DeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$UserId = "UserId_example" # String | 

try {
     $Result = Invoke-DeleteUser -Slug $Slug -UserId $UserId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **UserId** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Group"></a>
# **Get-Group**
> SystemCollectionsHashtable Get-Group<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$GroupId = "GroupId_example" # String | 

try {
     $Result = Get-Group -Slug $Slug -GroupId $GroupId
} catch {
    Write-Host ("Exception occured when calling Get-Group: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **GroupId** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ResourceType"></a>
# **Get-ResourceType**
> SystemCollectionsHashtable Get-ResourceType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceType] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$ResourceType = "ResourceType_example" # String | 

try {
     $Result = Get-ResourceType -Slug $Slug -ResourceType $ResourceType
} catch {
    Write-Host ("Exception occured when calling Get-ResourceType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **ResourceType** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ResourceTypes"></a>
# **Get-ResourceTypes**
> SystemCollectionsHashtable Get-ResourceTypes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 

try {
     $Result = Get-ResourceTypes -Slug $Slug
} catch {
    Write-Host ("Exception occured when calling Get-ResourceTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Schema"></a>
# **Get-Schema**
> SystemCollectionsHashtable Get-Schema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$SchemaId = "SchemaId_example" # String | 

try {
     $Result = Get-Schema -Slug $Slug -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occured when calling Get-Schema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **SchemaId** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Schemas"></a>
# **Get-Schemas**
> SystemCollectionsHashtable Get-Schemas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 

try {
     $Result = Get-Schemas -Slug $Slug
} catch {
    Write-Host ("Exception occured when calling Get-Schemas: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ServiceProviderConfig"></a>
# **Get-ServiceProviderConfig**
> SystemCollectionsHashtable Get-ServiceProviderConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 

try {
     $Result = Get-ServiceProviderConfig -Slug $Slug
} catch {
    Write-Host ("Exception occured when calling Get-ServiceProviderConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-User"></a>
# **Get-User**
> SystemCollectionsHashtable Get-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$UserId = "UserId_example" # String | 

try {
     $Result = Get-User -Slug $Slug -UserId $UserId
} catch {
    Write-Host ("Exception occured when calling Get-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **UserId** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ListGroups"></a>
# **Invoke-ListGroups**
> SystemCollectionsHashtable Invoke-ListGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartIndex] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$Filter = "Filter_example" # String |  (optional)
$StartIndex = 987 # Int32 |  (optional)
$Count = 987 # Int32 |  (optional)

try {
     $Result = Invoke-ListGroups -Slug $Slug -Filter $Filter -StartIndex $StartIndex -Count $Count
} catch {
    Write-Host ("Exception occured when calling Invoke-ListGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **Filter** | **String**|  | [optional] 
 **StartIndex** | **Int32**|  | [optional] 
 **Count** | **Int32**|  | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ListUsers"></a>
# **Invoke-ListUsers**
> SystemCollectionsHashtable Invoke-ListUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartIndex] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$Filter = "Filter_example" # String |  (optional)
$StartIndex = 987 # Int32 |  (optional)
$Count = 987 # Int32 |  (optional)

try {
     $Result = Invoke-ListUsers -Slug $Slug -Filter $Filter -StartIndex $StartIndex -Count $Count
} catch {
    Write-Host ("Exception occured when calling Invoke-ListUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **Filter** | **String**|  | [optional] 
 **StartIndex** | **Int32**|  | [optional] 
 **Count** | **Int32**|  | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-PatchGroup"></a>
# **Invoke-PatchGroup**
> SystemCollectionsHashtable Invoke-PatchGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScimPatchRequest] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$GroupId = "GroupId_example" # String | 
$ScimPatchRequest = (Initialize-ScimPatchRequest -Schemas @("Schemas_example") -Operations @((Initialize-ScimPatchOperation -Op "Op_example" -Path "Path_example" -Value "TODO"))) # ScimPatchRequest | 

try {
     $Result = Invoke-PatchGroup -Slug $Slug -GroupId $GroupId -ScimPatchRequest $ScimPatchRequest
} catch {
    Write-Host ("Exception occured when calling Invoke-PatchGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **GroupId** | **String**|  | 
 **ScimPatchRequest** | [**ScimPatchRequest**](ScimPatchRequest)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-PatchUser"></a>
# **Invoke-PatchUser**
> SystemCollectionsHashtable Invoke-PatchUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScimPatchRequest] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$UserId = "UserId_example" # String | 
$ScimPatchRequest = (Initialize-ScimPatchRequest -Schemas @("Schemas_example") -Operations @((Initialize-ScimPatchOperation -Op "Op_example" -Path "Path_example" -Value "TODO"))) # ScimPatchRequest | 

try {
     $Result = Invoke-PatchUser -Slug $Slug -UserId $UserId -ScimPatchRequest $ScimPatchRequest
} catch {
    Write-Host ("Exception occured when calling Invoke-PatchUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **UserId** | **String**|  | 
 **ScimPatchRequest** | [**ScimPatchRequest**](ScimPatchRequest)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ReplaceGroup"></a>
# **Invoke-ReplaceGroup**
> SystemCollectionsHashtable Invoke-ReplaceGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScimGroupResource] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$GroupId = "GroupId_example" # String | 
$ScimGroupResource = (Initialize-ScimGroupResource -Schemas @("Schemas_example") -Id "Id_example" -ExternalId "ExternalId_example" -DisplayName "DisplayName_example" -Members @((Initialize-ScimMember -Value "Value_example" -Ref "Ref_example" -Display "Display_example")) -Meta ) # ScimGroupResource | 

try {
     $Result = Invoke-ReplaceGroup -Slug $Slug -GroupId $GroupId -ScimGroupResource $ScimGroupResource
} catch {
    Write-Host ("Exception occured when calling Invoke-ReplaceGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **GroupId** | **String**|  | 
 **ScimGroupResource** | [**ScimGroupResource**](ScimGroupResource)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ReplaceUser"></a>
# **Invoke-ReplaceUser**
> SystemCollectionsHashtable Invoke-ReplaceUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScimUserResource] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Slug = "Slug_example" # String | 
$UserId = "UserId_example" # String | 
$ScimUserResource = (Initialize-ScimUserResource -Schemas @("Schemas_example") -Id "Id_example" -ExternalId "ExternalId_example" -UserName "UserName_example" -Name (Initialize-ScimName -Formatted "Formatted_example" -GivenName "GivenName_example" -FamilyName "FamilyName_example") -DisplayName "DisplayName_example" -Emails @((Initialize-ScimEmail -Value "Value_example" -Primary $false -Type "Type_example")) -Active $false -Meta ) # ScimUserResource | 

try {
     $Result = Invoke-ReplaceUser -Slug $Slug -UserId $UserId -ScimUserResource $ScimUserResource
} catch {
    Write-Host ("Exception occured when calling Invoke-ReplaceUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **UserId** | **String**|  | 
 **ScimUserResource** | [**ScimUserResource**](ScimUserResource)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

