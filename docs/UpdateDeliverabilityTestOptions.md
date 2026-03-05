# UpdateDeliverabilityTestOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Optional updated name | [optional] 
**Description** | **String** | Optional updated description | [optional] 
**StartAt** | **System.DateTime** | Optional updated receive-window start time. Only applied while test is not terminal. | [optional] 
**MaxDurationSeconds** | **Int64** | Optional updated timeout in seconds | [optional] 
**ClearMaxDuration** | **Boolean** | Set true to clear timeout. If true, maxDurationSeconds is ignored for this request. | [optional] 
**SuccessThresholdPercent** | **Double** | Optional updated acceptable success threshold percentage (0,100]. | [optional] 
**ClearSuccessThreshold** | **Boolean** | Set true to clear success threshold. If true, successThresholdPercent is ignored for this request. | [optional] 
**Expectations** | [**DeliverabilityExpectation[]**](DeliverabilityExpectation) | Optional replacement expectations | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateDeliverabilityTestOptions = Initialize-maislurp-client-powershellUpdateDeliverabilityTestOptions  -Name null `
 -Description null `
 -StartAt null `
 -MaxDurationSeconds null `
 -ClearMaxDuration null `
 -SuccessThresholdPercent null `
 -ClearSuccessThreshold null `
 -Expectations null
```

- Convert the resource to JSON
```powershell
$UpdateDeliverabilityTestOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

