# UpdateCampaignProbeOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Optional display name | [optional] 
**Enabled** | **Boolean** | Enable or disable SES monitor ingestion for this probe | [optional] 
**IntervalSeconds** | **Int64** | Scheduled run interval in seconds | [optional] 
**SchedulingEnabled** | **Boolean** | Enable or disable scheduled campaign probe runs. Direct run-now remains available. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateCampaignProbeOptions = Initialize-maislurp-client-powershellUpdateCampaignProbeOptions  -Name null `
 -Enabled null `
 -IntervalSeconds null `
 -SchedulingEnabled null
```

- Convert the resource to JSON
```powershell
$UpdateCampaignProbeOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

