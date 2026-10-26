# AuthV2BootstrapDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bootstrap** | [**AuthBootstrapDto**](AuthBootstrapDto) |  | 
**ReturnTo** | **String** |  | 
**SessionExpiresAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AuthV2BootstrapDto = Initialize-maislurp-client-powershellAuthV2BootstrapDto  -Bootstrap null `
 -ReturnTo null `
 -SessionExpiresAt null
```

- Convert the resource to JSON
```powershell
$AuthV2BootstrapDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

