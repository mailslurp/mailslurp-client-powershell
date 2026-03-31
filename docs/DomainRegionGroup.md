# DomainRegionGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** |  | 
**Domains** | [**DomainRegionInformation[]**](DomainRegionInformation) |  | 

## Examples

- Prepare the resource
```powershell
$DomainRegionGroup = Initialize-maislurp-client-powershellDomainRegionGroup  -Label null `
 -Domains null
```

- Convert the resource to JSON
```powershell
$DomainRegionGroup | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

