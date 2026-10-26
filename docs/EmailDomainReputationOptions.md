# EmailDomainReputationOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Target** | **String** | Email address, domain, IP address, or MX host to inspect. | 
**IpAddress** | **String** | Optional explicit IP address to check directly. | [optional] 
**MxHost** | **String** | Optional explicit MX host to resolve and check. | [optional] 
**IncludeBlacklist** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailDomainReputationOptions = Initialize-maislurp-client-powershellEmailDomainReputationOptions  -Target null `
 -IpAddress null `
 -MxHost null `
 -IncludeBlacklist null
```

- Convert the resource to JSON
```powershell
$EmailDomainReputationOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

