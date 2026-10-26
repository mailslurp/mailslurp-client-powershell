# GenerateDmarcRecordOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**Version** | **String** |  | 
**Policy** | **String** |  | 
**SubdomainPolicy** | **String** |  | [optional] 
**ReportEmailAddress** | **String[]** |  | [optional] 
**ForensicEmailAddress** | **String[]** |  | [optional] 
**Percentage** | **Int32** |  | [optional] 
**ReportFormat** | **String** |  | [optional] 
**SecondsBetweenReports** | **Int32** |  | [optional] 
**Adkim** | **String** |  | [optional] 
**Aspf** | **String** |  | [optional] 
**Fo** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateDmarcRecordOptions = Initialize-maislurp-client-powershellGenerateDmarcRecordOptions  -Domain null `
 -Version null `
 -Policy null `
 -SubdomainPolicy null `
 -ReportEmailAddress null `
 -ForensicEmailAddress null `
 -Percentage null `
 -ReportFormat null `
 -SecondsBetweenReports null `
 -Adkim null `
 -Aspf null `
 -Fo null
```

- Convert the resource to JSON
```powershell
$GenerateDmarcRecordOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

