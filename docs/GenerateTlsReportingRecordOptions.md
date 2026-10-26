# GenerateTlsReportingRecordOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportingAddresses** | **String[]** |  | 
**ReportingUrl** | **String** |  | [optional] 
**VarHost** | **String** |  | 
**Version** | **String** |  | 
**Ttl** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$GenerateTlsReportingRecordOptions = Initialize-maislurp-client-powershellGenerateTlsReportingRecordOptions  -ReportingAddresses null `
 -ReportingUrl null `
 -VarHost null `
 -Version null `
 -Ttl null
```

- Convert the resource to JSON
```powershell
$GenerateTlsReportingRecordOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

