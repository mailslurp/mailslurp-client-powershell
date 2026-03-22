# LookupSpfDomainResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Valid** | **Boolean** |  | 
**VarHost** | **String** |  | 
**Record** | **String** |  | [optional] 
**FlattenedRecord** | **String** |  | [optional] 
**LookupCount** | **Int32** |  | 
**Mechanisms** | [**SpfMechanismResult[]**](SpfMechanismResult) |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$LookupSpfDomainResults = Initialize-maislurp-client-powershellLookupSpfDomainResults  -Valid null `
 -VarHost null `
 -Record null `
 -FlattenedRecord null `
 -LookupCount null `
 -Mechanisms null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$LookupSpfDomainResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

