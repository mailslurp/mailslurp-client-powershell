# CheckEmailAuthStackOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**DkimSelector** | **String** |  | [optional] 
**CaptchaToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckEmailAuthStackOptions = Initialize-maislurp-client-powershellCheckEmailAuthStackOptions  -Domain null `
 -DkimSelector null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$CheckEmailAuthStackOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

