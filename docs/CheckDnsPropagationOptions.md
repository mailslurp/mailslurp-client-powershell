# CheckDnsPropagationOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | 
**RecordType** | **String** | Domain Name Server Record Types | 
**ExpectedValue** | **String** |  | [optional] 
**CaptchaToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckDnsPropagationOptions = Initialize-maislurp-client-powershellCheckDnsPropagationOptions  -VarHost null `
 -RecordType null `
 -ExpectedValue null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$CheckDnsPropagationOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

