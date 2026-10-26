# CheckDnsPropagationResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | 
**RecordType** | **String** | Domain Name Server Record Types | 
**ExpectedValue** | **String** |  | [optional] 
**PropagatedToAllResolvers** | **Boolean** |  | 
**RespondingResolverCount** | **Int32** |  | 
**MatchingResolverCount** | **Int32** |  | 
**ResolverResults** | [**DnsPropagationResolverResult[]**](DnsPropagationResolverResult) |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$CheckDnsPropagationResults = Initialize-maislurp-client-powershellCheckDnsPropagationResults  -VarHost null `
 -RecordType null `
 -ExpectedValue null `
 -PropagatedToAllResolvers null `
 -RespondingResolverCount null `
 -MatchingResolverCount null `
 -ResolverResults null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$CheckDnsPropagationResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

