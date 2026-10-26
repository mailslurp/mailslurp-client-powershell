# EmailWarmupPlacementCheckDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ProgramId** | **String** |  | 
**CheckpointDay** | **Int32** |  | 
**Type** | **String** |  | 
**Status** | **String** |  | 
**ScheduledFor** | **System.DateTime** |  | 
**InboxPlacementRunId** | **String** |  | [optional] 
**TargetCount** | **Int32** |  | 
**AcceptedCount** | **Int32** |  | 
**InboxCount** | **Int32** |  | 
**SpamCount** | **Int32** |  | 
**NotReceivedCount** | **Int32** |  | 
**InboxPercent** | **Int32** |  | 
**ProviderResults** | [**EmailWarmupProviderPlacementDto[]**](EmailWarmupProviderPlacementDto) |  | 
**FailureCode** | **String** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupPlacementCheckDto = Initialize-maislurp-client-powershellEmailWarmupPlacementCheckDto  -Id null `
 -ProgramId null `
 -CheckpointDay null `
 -Type null `
 -Status null `
 -ScheduledFor null `
 -InboxPlacementRunId null `
 -TargetCount null `
 -AcceptedCount null `
 -InboxCount null `
 -SpamCount null `
 -NotReceivedCount null `
 -InboxPercent null `
 -ProviderResults null `
 -FailureCode null `
 -CompletedAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailWarmupPlacementCheckDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

