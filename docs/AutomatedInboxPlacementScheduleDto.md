# AutomatedInboxPlacementScheduleDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ConnectionId** | **String** |  | 
**Name** | **String** |  | 
**Enabled** | **Boolean** |  | 
**IntervalMinutes** | **Int64** |  | 
**RequestedSegment** | **String** |  | 
**SeedlistProfile** | **String** |  | [optional] 
**SubjectTemplate** | **String** |  | 
**TextBodyTemplate** | **String** |  | [optional] 
**HtmlBodyTemplate** | **String** |  | [optional] 
**SourceRunId** | **String** |  | [optional] 
**LastStatus** | **String** |  | [optional] 
**ConsecutiveFailures** | **Int32** |  | 
**LastRunAt** | **System.DateTime** |  | [optional] 
**NextRunAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AutomatedInboxPlacementScheduleDto = Initialize-maislurp-client-powershellAutomatedInboxPlacementScheduleDto  -Id null `
 -ConnectionId null `
 -Name null `
 -Enabled null `
 -IntervalMinutes null `
 -RequestedSegment null `
 -SeedlistProfile null `
 -SubjectTemplate null `
 -TextBodyTemplate null `
 -HtmlBodyTemplate null `
 -SourceRunId null `
 -LastStatus null `
 -ConsecutiveFailures null `
 -LastRunAt null `
 -NextRunAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AutomatedInboxPlacementScheduleDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

