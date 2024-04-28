# GetEmailScreenshotOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Height** | **Int32** | Window height in pixels | [optional] 
**Width** | **Int32** | Window width in pixels | [optional] 

## Examples

- Prepare the resource
```powershell
$GetEmailScreenshotOptions = Initialize-maislurp-client-powershellGetEmailScreenshotOptions  -Height null `
 -Width null
```

- Convert the resource to JSON
```powershell
$GetEmailScreenshotOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

