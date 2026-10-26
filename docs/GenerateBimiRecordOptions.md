# GenerateBimiRecordOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**Version** | **String** |  | 
**LogoUrl** | **String** |  | 
**VmcUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateBimiRecordOptions = Initialize-maislurp-client-powershellGenerateBimiRecordOptions  -Domain null `
 -Version null `
 -LogoUrl null `
 -VmcUrl null
```

- Convert the resource to JSON
```powershell
$GenerateBimiRecordOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

