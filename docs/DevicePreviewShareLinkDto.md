# DevicePreviewShareLinkDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**RunId** | **String** |  | 
**TokenPrefix** | **String** |  | 
**Token** | **String** | Raw share token. Only returned immediately after creation. | [optional] 
**ShareUrl** | **String** | Public share URL with social preview metadata. Only returned when the raw token is available. | [optional] 
**Label** | **String** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 
**RevokedAt** | **System.DateTime** |  | [optional] 
**LastAccessedAt** | **System.DateTime** |  | [optional] 
**AccessCount** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewShareLinkDto = Initialize-maislurp-client-powershellDevicePreviewShareLinkDto  -Id null `
 -RunId null `
 -TokenPrefix null `
 -Token null `
 -ShareUrl null `
 -Label null `
 -ExpiresAt null `
 -RevokedAt null `
 -LastAccessedAt null `
 -AccessCount null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewShareLinkDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

