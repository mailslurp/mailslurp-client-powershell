# CreateCampaignProbeOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Optional display name | [optional] 
**Enabled** | **Boolean** | Whether SES monitor ingestion is enabled for this probe | [optional] 
**IntervalSeconds** | **Int64** | Scheduled run interval in seconds | [optional] 
**SchedulingEnabled** | **Boolean** | Whether scheduled campaign probe runs are enabled. Direct run-now remains available. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCampaignProbeOptions = Initialize-maislurp-client-powershellCreateCampaignProbeOptions  -Name Spring launch `
 -Enabled true `
 -IntervalSeconds 3600 `
 -SchedulingEnabled true
```

- Convert the resource to JSON
```powershell
$CreateCampaignProbeOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

