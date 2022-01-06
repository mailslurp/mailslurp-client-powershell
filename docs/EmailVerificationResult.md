# EmailVerificationResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainName** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**EmailAddress** | **String** |  | [optional] 
**VarError** | **String** |  | [optional] 
**Valid** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailVerificationResult = Initialize-maislurp-client-powershellEmailVerificationResult  -DomainName null `
 -Port null `
 -EmailAddress null `
 -VarError null `
 -Valid null
```

- Convert the resource to JSON
```powershell
$EmailVerificationResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

