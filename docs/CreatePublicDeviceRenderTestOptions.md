# CreatePublicDeviceRenderTestOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CaptchaToken** | **String** | Optional captcha token when captcha protection is enabled. | [optional] 
**Target** | **String** | One exact device preview target key. Omit only for backwards compatibility; the service still chooses one target. | [optional] 
**PreviewMode** | **String** | Public preview workflow to create. | 

## Examples

- Prepare the resource
```powershell
$CreatePublicDeviceRenderTestOptions = Initialize-maislurp-client-powershellCreatePublicDeviceRenderTestOptions  -CaptchaToken null `
 -Target null `
 -PreviewMode null
```

- Convert the resource to JSON
```powershell
$CreatePublicDeviceRenderTestOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

