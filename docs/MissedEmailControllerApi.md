# maislurp-client-powershell.maislurp-client-powershell/Api.MissedEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AllMissedEmails**](MissedEmailControllerApi#Get-AllMissedEmails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**Get-MissedEmail**](MissedEmailControllerApi#Get-MissedEmail) | **GET** /missed-emails/{MissedEmailId} | Get MissedEmail


<a name="Get-AllMissedEmails"></a>
# **Get-AllMissedEmails**
> PageMissedEmailProjection Get-AllMissedEmails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get all MissedEmails in paginated format

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 | Optional page index in inbox list pagination (optional) (default to 0)
$SearchFilter = "SearchFilter_example" # String | Optional search filter (optional)
$Size = 987 # Int32 | Optional page size in inbox list pagination (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get all MissedEmails in paginated format
try {
     $Result = Get-AllMissedEmails -Page $Page -SearchFilter $SearchFilter -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-AllMissedEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| Optional page index in inbox list pagination | [optional] [default to 0]
 **SearchFilter** | **String**| Optional search filter | [optional] 
 **Size** | **Int32**| Optional page size in inbox list pagination | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**PageMissedEmailProjection**](PageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-MissedEmail"></a>
# **Get-MissedEmail**
> MissedEmail Get-MissedEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MissedEmailId] <PSCustomObject><br>

Get MissedEmail

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$MissedEmailId = "MissedEmailId_example" # String | MissedEmailId

# Get MissedEmail
try {
     $Result = Get-MissedEmail -MissedEmailId $MissedEmailId
} catch {
    Write-Host ("Exception occured when calling Get-MissedEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MissedEmailId** | [**String**](String)| MissedEmailId | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

