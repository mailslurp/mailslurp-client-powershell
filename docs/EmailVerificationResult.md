# EmailVerificationResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainName** | **String** |  | 
**Port** | **Int32** |  | 
**EmailAddress** | **String** |  | 
**IsValid** | **Boolean** |  | 
**VarError** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailVerificationResult = Initialize-maislurp-client-powershellEmailVerificationResult  -DomainName null `
 -Port null `
 -EmailAddress null `
 -IsValid null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$EmailVerificationResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

