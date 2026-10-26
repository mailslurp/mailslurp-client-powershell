# DeliverabilityEntityResultPageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Test** | [**DeliverabilityTestDto**](DeliverabilityTestDto) |  | 
**Content** | [**DeliverabilityEntityResultDto[]**](DeliverabilityEntityResultDto) |  | 
**Page** | **Int32** |  | 
**Size** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**TotalPages** | **Int32** |  | 
**Matched** | **Boolean** |  | [optional] 
**Cached** | **Boolean** |  | 
**NextRefreshAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliverabilityEntityResultPageDto = Initialize-maislurp-client-powershellDeliverabilityEntityResultPageDto  -Test null `
 -Content null `
 -Page null `
 -Size null `
 -TotalElements null `
 -TotalPages null `
 -Matched null `
 -Cached null `
 -NextRefreshAt null
```

- Convert the resource to JSON
```powershell
$DeliverabilityEntityResultPageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

