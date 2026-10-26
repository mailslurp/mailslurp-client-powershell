# CampaignProbeRunNowResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Probe** | [**CampaignProbeDto**](CampaignProbeDto) |  | 
**Run** | [**CampaignProbeRunDto**](CampaignProbeRunDto) |  | 

## Examples

- Prepare the resource
```powershell
$CampaignProbeRunNowResult = Initialize-maislurp-client-powershellCampaignProbeRunNowResult  -Probe null `
 -Run null
```

- Convert the resource to JSON
```powershell
$CampaignProbeRunNowResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

