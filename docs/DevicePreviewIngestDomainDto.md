# DevicePreviewIngestDomainDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Subdomain** | **String** |  | 
**Domain** | **String** |  | 
**FullDomain** | **String** |  | 
**EmailAddressPattern** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewIngestDomainDto = Initialize-maislurp-client-powershellDevicePreviewIngestDomainDto  -Id null `
 -UserId null `
 -Subdomain null `
 -Domain null `
 -FullDomain null `
 -EmailAddressPattern null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewIngestDomainDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

