# AnalyzeDmarcReportResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Metadata** | [**DmarcReportMetadata**](DmarcReportMetadata) |  | 
**RecordCount** | **Int32** |  | 
**TotalMessages** | **Int32** |  | 
**RejectCount** | **Int32** |  | 
**QuarantineCount** | **Int32** |  | 
**NoneCount** | **Int32** |  | 
**DkimAlignedCount** | **Int32** |  | 
**SpfAlignedCount** | **Int32** |  | 
**FullyAlignedCount** | **Int32** |  | 
**FailedAlignmentCount** | **Int32** |  | 
**TopSources** | [**DmarcReportSourceSummary[]**](DmarcReportSourceSummary) |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$AnalyzeDmarcReportResults = Initialize-maislurp-client-powershellAnalyzeDmarcReportResults  -Metadata null `
 -RecordCount null `
 -TotalMessages null `
 -RejectCount null `
 -QuarantineCount null `
 -NoneCount null `
 -DkimAlignedCount null `
 -SpfAlignedCount null `
 -FullyAlignedCount null `
 -FailedAlignmentCount null `
 -TopSources null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$AnalyzeDmarcReportResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

