# EmailWarmupProgramProgressDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProgramId** | **String** |  | 
**CurrentRampDay** | **Int32** |  | 
**RampDurationDays** | **Int32** |  | 
**ProgressPercent** | **Int32** |  | 
**TotalAcceptedSends** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupProgramProgressDto = Initialize-maislurp-client-powershellEmailWarmupProgramProgressDto  -ProgramId null `
 -CurrentRampDay null `
 -RampDurationDays null `
 -ProgressPercent null `
 -TotalAcceptedSends null
```

- Convert the resource to JSON
```powershell
$EmailWarmupProgramProgressDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

