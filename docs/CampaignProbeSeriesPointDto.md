# CampaignProbeSeriesPointDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BucketStart** | **System.DateTime** |  | 
**RunCount** | **Int32** |  | 
**HealthyCount** | **Int32** |  | 
**WarningCount** | **Int32** |  | 
**FailedCount** | **Int32** |  | 
**HealthyRate** | **Double** |  | 
**AverageHealthScore** | **Double** |  | 

## Examples

- Prepare the resource
```powershell
$CampaignProbeSeriesPointDto = Initialize-maislurp-client-powershellCampaignProbeSeriesPointDto  -BucketStart null `
 -RunCount null `
 -HealthyCount null `
 -WarningCount null `
 -FailedCount null `
 -HealthyRate null `
 -AverageHealthScore null
```

- Convert the resource to JSON
```powershell
$CampaignProbeSeriesPointDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

