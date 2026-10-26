# LookupMtaStsDomainResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Valid** | **Boolean** |  | 
**Query** | [**DNSLookupOptions**](DNSLookupOptions) |  | 
**Records** | [**DNSLookupResult[]**](DNSLookupResult) |  | 
**WellKnownQuery** | **String** |  | 
**WellKnownPresent** | **Boolean** |  | 
**WellKnownValue** | **String** |  | 
**Errors** | **String[]** |  | 
**Warnings** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$LookupMtaStsDomainResults = Initialize-maislurp-client-powershellLookupMtaStsDomainResults  -Valid null `
 -Query null `
 -Records null `
 -WellKnownQuery null `
 -WellKnownPresent null `
 -WellKnownValue null `
 -Errors null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$LookupMtaStsDomainResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

