# DmarcReportSourceSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceIp** | **String** |  | 
**Count** | **Int32** |  | 
**Disposition** | **String** |  | [optional] 
**DkimAligned** | **Boolean** |  | 
**SpfAligned** | **Boolean** |  | 
**HeaderFrom** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DmarcReportSourceSummary = Initialize-maislurp-client-powershellDmarcReportSourceSummary  -SourceIp null `
 -Count null `
 -Disposition null `
 -DkimAligned null `
 -SpfAligned null `
 -HeaderFrom null
```

- Convert the resource to JSON
```powershell
$DmarcReportSourceSummary | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

