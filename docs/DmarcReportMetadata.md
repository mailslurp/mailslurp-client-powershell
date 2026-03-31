# DmarcReportMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrgName** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**ReportId** | **String** |  | [optional] 
**Domain** | **String** |  | [optional] 
**Adkim** | **String** |  | [optional] 
**Aspf** | **String** |  | [optional] 
**Policy** | **String** |  | [optional] 
**SubdomainPolicy** | **String** |  | [optional] 
**Percentage** | **Int32** |  | [optional] 
**DateRangeBegin** | **System.DateTime** |  | [optional] 
**DateRangeEnd** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DmarcReportMetadata = Initialize-maislurp-client-powershellDmarcReportMetadata  -OrgName null `
 -Email null `
 -ReportId null `
 -Domain null `
 -Adkim null `
 -Aspf null `
 -Policy null `
 -SubdomainPolicy null `
 -Percentage null `
 -DateRangeBegin null `
 -DateRangeEnd null
```

- Convert the resource to JSON
```powershell
$DmarcReportMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

