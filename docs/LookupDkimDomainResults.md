# LookupDkimDomainResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Valid** | **Boolean** |  | 
**QueriedName** | **String** |  | [optional] 
**Selector** | **String** |  | [optional] 
**Record** | **String** |  | [optional] 
**Algorithm** | **String** |  | [optional] 
**KeyLength** | **Int32** |  | [optional] 
**CheckedNames** | **String[]** |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$LookupDkimDomainResults = Initialize-maislurp-client-powershellLookupDkimDomainResults  -Valid null `
 -QueriedName null `
 -Selector null `
 -Record null `
 -Algorithm null `
 -KeyLength null `
 -CheckedNames null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$LookupDkimDomainResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

