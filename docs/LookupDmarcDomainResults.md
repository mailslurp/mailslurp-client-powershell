# LookupDmarcDomainResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Valid** | **Boolean** |  | 
**Query** | [**DNSLookupOptions**](DNSLookupOptions) |  | 
**Records** | [**DNSLookupResult[]**](DNSLookupResult) |  | 
**Errors** | **String[]** |  | 
**Warnings** | **String[]** |  | 
**QueriedDomain** | **String** |  | 
**OrganizationalDomain** | **String** |  | [optional] 
**InheritedFromOrganizationalDomain** | **Boolean** |  | 
**EffectivePolicy** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LookupDmarcDomainResults = Initialize-maislurp-client-powershellLookupDmarcDomainResults  -Valid null `
 -Query null `
 -Records null `
 -Errors null `
 -Warnings null `
 -QueriedDomain null `
 -OrganizationalDomain null `
 -InheritedFromOrganizationalDomain null `
 -EffectivePolicy null
```

- Convert the resource to JSON
```powershell
$LookupDmarcDomainResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

