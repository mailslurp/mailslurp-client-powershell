# EmailDomainReputationResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | **String** |  | 
**NormalizedTarget** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**Domain** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**MxHost** | **String** |  | [optional] 
**Status** | **String** |  | 
**Listed** | **Boolean** |  | 
**Blacklist** | [**CheckEmailBlacklistResults**](CheckEmailBlacklistResults) |  | [optional] 
**Insights** | **String[]** |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$EmailDomainReputationResult = Initialize-maislurp-client-powershellEmailDomainReputationResult  -VarInput null `
 -NormalizedTarget null `
 -EmailAddress null `
 -Domain null `
 -IpAddress null `
 -MxHost null `
 -Status null `
 -Listed null `
 -Blacklist null `
 -Insights null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$EmailDomainReputationResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

