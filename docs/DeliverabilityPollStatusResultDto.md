# DeliverabilityPollStatusResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Test** | [**DeliverabilityTestDto**](DeliverabilityTestDto) |  | 
**Cached** | **Boolean** |  | 
**CacheWindowSeconds** | **Int64** |  | 
**NextRefreshAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliverabilityPollStatusResultDto = Initialize-maislurp-client-powershellDeliverabilityPollStatusResultDto  -Test null `
 -Cached null `
 -CacheWindowSeconds null `
 -NextRefreshAt null
```

- Convert the resource to JSON
```powershell
$DeliverabilityPollStatusResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

