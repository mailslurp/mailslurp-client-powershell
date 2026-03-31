# EmailIntelligenceTestsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CheckRandomLocalPart** | **Boolean** | Check local-part randomness for email inputs. | [optional] 
**CheckFreeProvider** | **Boolean** | Check if domain is a known free email provider. | [optional] 
**CheckHttpsWebsite** | **Boolean** | Check if the domain has a reachable HTTPS website. | [optional] 
**CheckDns** | **Boolean** | Check DNS records (A, MX, SOA) for the domain. | [optional] 
**CheckDomainAgeHint** | **Boolean** | Derive a domain age hint from DNS SOA serial when possible. | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailIntelligenceTestsOptions = Initialize-maislurp-client-powershellEmailIntelligenceTestsOptions  -CheckRandomLocalPart null `
 -CheckFreeProvider null `
 -CheckHttpsWebsite null `
 -CheckDns null `
 -CheckDomainAgeHint null
```

- Convert the resource to JSON
```powershell
$EmailIntelligenceTestsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

