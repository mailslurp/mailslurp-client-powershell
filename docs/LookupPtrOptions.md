# LookupPtrOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ip** | **String** | IPv4 or IPv6 address to inspect | 
**CaptchaToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LookupPtrOptions = Initialize-maislurp-client-powershellLookupPtrOptions  -Ip 192.0.2.44 `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$LookupPtrOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

