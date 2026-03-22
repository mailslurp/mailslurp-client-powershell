# CreateDeliverabilityTestOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Optional name for the test | [optional] 
**Description** | **String** | Optional description | [optional] 
**Scope** | **String** | Entity scope to evaluate | 
**StartAt** | **System.DateTime** | UTC instant when the receive window starts. Defaults to now if omitted. | [optional] 
**MaxDurationSeconds** | **Int64** | Optional timeout in seconds after startAt. If not all entities match before timeout the test transitions to FAILED. | [optional] 
**SuccessThresholdPercent** | **Double** | Optional acceptable success threshold percentage (0,100]. If set, a timed-out test can complete successfully when matchedEntities/totalEntities reaches this percentage. | [optional] 
**Selector** | [**DeliverabilitySelectorOptions**](DeliverabilitySelectorOptions) |  | 
**Expectations** | [**DeliverabilityExpectation[]**](DeliverabilityExpectation) | One or more expectations to evaluate for each entity | 

## Examples

- Prepare the resource
```powershell
$CreateDeliverabilityTestOptions = Initialize-maislurp-client-powershellCreateDeliverabilityTestOptions  -Name Morning smoke load `
 -Description Load test for signup flow `
 -Scope INBOX `
 -StartAt 2026-02-24T16:30Z `
 -MaxDurationSeconds 900 `
 -SuccessThresholdPercent 90.0 `
 -Selector null `
 -Expectations null
```

- Convert the resource to JSON
```powershell
$CreateDeliverabilityTestOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

