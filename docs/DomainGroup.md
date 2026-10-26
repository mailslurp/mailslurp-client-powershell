# DomainGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** |  | 
**Domains** | [**DomainInformation[]**](DomainInformation) |  | 

## Examples

- Prepare the resource
```powershell
$DomainGroup = Initialize-maislurp-client-powershellDomainGroup  -Label null `
 -Domains null
```

- Convert the resource to JSON
```powershell
$DomainGroup | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

