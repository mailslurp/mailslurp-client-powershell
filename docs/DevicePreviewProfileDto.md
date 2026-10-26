# DevicePreviewProfileDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**LocalPart** | **String** |  | 
**DisplayName** | **String** |  | [optional] 
**Targets** | **String[]** |  | [optional] 
**AllTargets** | **Boolean** |  | [optional] 
**Enabled** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewProfileDto = Initialize-maislurp-client-powershellDevicePreviewProfileDto  -Id null `
 -UserId null `
 -LocalPart null `
 -DisplayName null `
 -Targets null `
 -AllTargets null `
 -Enabled null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewProfileDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

