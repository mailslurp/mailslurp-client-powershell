# CampaignProbeDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Name** | **String** |  | [optional] 
**LocalPart** | **String** |  | 
**EmailAddress** | **String** |  | 
**Enabled** | **Boolean** |  | 
**IntervalSeconds** | **Int64** |  | [optional] 
**SchedulingEnabled** | **Boolean** |  | 
**NextRunAt** | **System.DateTime** |  | [optional] 
**LastRunStatus** | **String** |  | [optional] 
**LastHealthScore** | **Int32** |  | [optional] 
**LastIngestAt** | **System.DateTime** |  | [optional] 
**TotalIngestCount** | **Int64** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$CampaignProbeDto = Initialize-maislurp-client-powershellCampaignProbeDto  -Id null `
 -UserId null `
 -Name null `
 -LocalPart null `
 -EmailAddress null `
 -Enabled null `
 -IntervalSeconds null `
 -SchedulingEnabled null `
 -NextRunAt null `
 -LastRunStatus null `
 -LastHealthScore null `
 -LastIngestAt null `
 -TotalIngestCount null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$CampaignProbeDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

