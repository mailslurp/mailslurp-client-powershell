# EmailWarmupPacingDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfiguredDailyTarget** | **Int32** |  | 
**EffectiveDailyTarget** | **Int32** |  | 
**Action** | **String** |  | 
**ReasonCode** | **String** |  | 
**Explanation** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupPacingDto = Initialize-maislurp-client-powershellEmailWarmupPacingDto  -ConfiguredDailyTarget null `
 -EffectiveDailyTarget null `
 -Action null `
 -ReasonCode null `
 -Explanation null
```

- Convert the resource to JSON
```powershell
$EmailWarmupPacingDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

