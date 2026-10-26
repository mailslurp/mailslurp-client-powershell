# DevicePreviewSourceEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**To** | **String[]** |  | 
**Cc** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**Html** | **String** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePreviewSourceEmailDto = Initialize-maislurp-client-powershellDevicePreviewSourceEmailDto  -Subject null `
 -VarFrom null `
 -To null `
 -Cc null `
 -Bcc null `
 -Html null `
 -Text null
```

- Convert the resource to JSON
```powershell
$DevicePreviewSourceEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

