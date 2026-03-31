# CampaignProbeRunDueResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TriggerSource** | **String** |  | 
**RunCount** | **Int32** |  | 
**DueProbeCount** | **Int32** |  | 
**SkippedCount** | **Int32** |  | 
**RequestedMaxRuns** | **Int32** |  | 
**ExecutedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$CampaignProbeRunDueResult = Initialize-maislurp-client-powershellCampaignProbeRunDueResult  -TriggerSource null `
 -RunCount null `
 -DueProbeCount null `
 -SkippedCount null `
 -RequestedMaxRuns null `
 -ExecutedAt null
```

- Convert the resource to JSON
```powershell
$CampaignProbeRunDueResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

