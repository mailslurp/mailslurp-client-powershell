# CampaignProbeSeriesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProbeId** | **String** |  | 
**Since** | **System.DateTime** |  | 
**Before** | **System.DateTime** |  | 
**Bucket** | **String** |  | 
**Points** | [**CampaignProbeSeriesPointDto[]**](CampaignProbeSeriesPointDto) |  | 

## Examples

- Prepare the resource
```powershell
$CampaignProbeSeriesDto = Initialize-maislurp-client-powershellCampaignProbeSeriesDto  -ProbeId null `
 -Since null `
 -Before null `
 -Bucket null `
 -Points null
```

- Convert the resource to JSON
```powershell
$CampaignProbeSeriesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

