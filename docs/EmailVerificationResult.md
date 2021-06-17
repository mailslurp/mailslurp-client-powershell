# EmailVerificationResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainName** | **String** |  | 
**EmailAddress** | **String** |  | 
**VarError** | **String** |  | [optional] 
**IsValid** | **Boolean** |  | 
**Port** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$EmailVerificationResult = Initialize-maislurp-client-powershellEmailVerificationResult  -DomainName null `
 -EmailAddress null `
 -VarError null `
 -IsValid null `
 -Port null
```

- Convert the resource to JSON
```powershell
$EmailVerificationResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

