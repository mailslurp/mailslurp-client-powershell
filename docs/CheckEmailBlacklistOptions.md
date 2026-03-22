# CheckEmailBlacklistOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** | Domain to expand into A and MX host IPv4 addresses | [optional] 
**IpAddress** | **String** | Specific IPv4 address to check directly | [optional] 
**MxHost** | **String** | Specific MX host to resolve and check directly | [optional] 
**CaptchaToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckEmailBlacklistOptions = Initialize-maislurp-client-powershellCheckEmailBlacklistOptions  -Domain null `
 -IpAddress null `
 -MxHost null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$CheckEmailBlacklistOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

