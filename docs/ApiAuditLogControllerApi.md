# maislurp-client-powershell.maislurp-client-powershell/Api.ApiAuditLogControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AuditLogByEventId**](ApiAuditLogControllerApi#Get-AuditLogByEventId) | **GET** /audit-logs/{eventId} | 
[**Get-AuditLogs**](ApiAuditLogControllerApi#Get-AuditLogs) | **GET** /audit-logs | 
[**Search-AuditLogs**](ApiAuditLogControllerApi#Search-AuditLogs) | **POST** /audit-logs/search | 


<a name="Get-AuditLogByEventId"></a>
# **Get-AuditLogByEventId**
> AuditLogEventDto Get-AuditLogByEventId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EventId = "EventId_example" # String | 
$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)

try {
     $Result = Get-AuditLogByEventId -EventId $EventId -Since $Since -Before $Before
} catch {
    Write-Host ("Exception occured when calling Get-AuditLogByEventId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventId** | **String**|  | 
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 

### Return type

[**AuditLogEventDto**](AuditLogEventDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AuditLogs"></a>
# **Get-AuditLogs**
> AuditLogPageDto Get-AuditLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Action] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActorUserId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetUserId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Outcome] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IpAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Since = Get-Date # System.DateTime |  (optional)
$Before = Get-Date # System.DateTime |  (optional)
$Action = "Action_example" # String |  (optional)
$UserId = "UserId_example" # String |  (optional)
$ActorUserId = "ActorUserId_example" # String |  (optional)
$TargetUserId = "TargetUserId_example" # String |  (optional)
$ResourceType = "ResourceType_example" # String |  (optional)
$ResourceId = "ResourceId_example" # String |  (optional)
$Outcome = "Outcome_example" # String |  (optional)
$RequestId = "RequestId_example" # String |  (optional)
$IpAddress = "IpAddress_example" # String |  (optional)
$PageSize = 987 # Int32 |  (optional)
$Cursor = "Cursor_example" # String |  (optional)

try {
     $Result = Get-AuditLogs -Since $Since -Before $Before -Action $Action -UserId $UserId -ActorUserId $ActorUserId -TargetUserId $TargetUserId -ResourceType $ResourceType -ResourceId $ResourceId -Outcome $Outcome -RequestId $RequestId -IpAddress $IpAddress -PageSize $PageSize -Cursor $Cursor
} catch {
    Write-Host ("Exception occured when calling Get-AuditLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | [optional] 
 **Before** | **System.DateTime**|  | [optional] 
 **Action** | **String**|  | [optional] 
 **UserId** | [**String**](String)|  | [optional] 
 **ActorUserId** | [**String**](String)|  | [optional] 
 **TargetUserId** | [**String**](String)|  | [optional] 
 **ResourceType** | **String**|  | [optional] 
 **ResourceId** | **String**|  | [optional] 
 **Outcome** | **String**|  | [optional] 
 **RequestId** | **String**|  | [optional] 
 **IpAddress** | **String**|  | [optional] 
 **PageSize** | **Int32**|  | [optional] 
 **Cursor** | **String**|  | [optional] 

### Return type

[**AuditLogPageDto**](AuditLogPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Search-AuditLogs"></a>
# **Search-AuditLogs**
> AuditLogPageDto Search-AuditLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuditLogSearchOptions] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AuditLogSearchOptions = (Initialize-AuditLogSearchOptions -Since Get-Date -Before Get-Date -Action "Action_example" -UserId "UserId_example" -ActorUserId "ActorUserId_example" -TargetUserId "TargetUserId_example" -ResourceType "ResourceType_example" -ResourceId "ResourceId_example" -Outcome "Outcome_example" -RequestId "RequestId_example" -IpAddress "IpAddress_example" -EventId "EventId_example" -PageSize 123 -Cursor "Cursor_example") # AuditLogSearchOptions | 

try {
     $Result = Search-AuditLogs -AuditLogSearchOptions $AuditLogSearchOptions
} catch {
    Write-Host ("Exception occured when calling Search-AuditLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuditLogSearchOptions** | [**AuditLogSearchOptions**](AuditLogSearchOptions)|  | 

### Return type

[**AuditLogPageDto**](AuditLogPageDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

