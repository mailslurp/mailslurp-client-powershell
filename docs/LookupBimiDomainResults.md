# LookupBimiDomainResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Valid** | **Boolean** |  | 
**Query** | [**DNSLookupOptions**](DNSLookupOptions) |  | 
**Records** | [**DNSLookupResult[]**](DNSLookupResult) |  | 
**Errors** | **String[]** |  | 
**Warnings** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$LookupBimiDomainResults = Initialize-maislurp-client-powershellLookupBimiDomainResults  -Valid null `
 -Query null `
 -Records null `
 -Errors null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$LookupBimiDomainResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

