# GenerateMtaStsRecordOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | 
**Version** | **String** |  | 
**Mode** | **String** |  | 
**Ttl** | **Int32** |  | 
**MaxAgeSeconds** | **Int32** |  | 
**MxRecords** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$GenerateMtaStsRecordOptions = Initialize-maislurp-client-powershellGenerateMtaStsRecordOptions  -VarHost null `
 -Version null `
 -Mode null `
 -Ttl null `
 -MaxAgeSeconds null `
 -MxRecords null
```

- Convert the resource to JSON
```powershell
$GenerateMtaStsRecordOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

