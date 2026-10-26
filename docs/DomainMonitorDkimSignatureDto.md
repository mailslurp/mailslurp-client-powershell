# DomainMonitorDkimSignatureDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | [optional] 
**Selector** | **String** |  | [optional] 
**Algorithm** | **String** |  | [optional] 
**Identity** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainMonitorDkimSignatureDto = Initialize-maislurp-client-powershellDomainMonitorDkimSignatureDto  -Domain null `
 -Selector null `
 -Algorithm null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$DomainMonitorDkimSignatureDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

