# CheckDomainMonitorOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** | Domain to evaluate | 
**CaptchaToken** | **String** | Optional captcha token when captcha protection is enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckDomainMonitorOptions = Initialize-maislurp-client-powershellCheckDomainMonitorOptions  -Domain example.com `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$CheckDomainMonitorOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

