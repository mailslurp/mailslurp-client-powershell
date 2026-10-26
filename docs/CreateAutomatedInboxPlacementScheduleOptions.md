# CreateAutomatedInboxPlacementScheduleOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** |  | 
**Name** | **String** |  | 
**IntervalMinutes** | **Int64** |  | 
**Enabled** | **Boolean** |  | 
**RequestedSegment** | **String** |  | 
**SeedlistProfile** | **String** |  | [optional] 
**SubjectTemplate** | **String** |  | 
**TextBodyTemplate** | **String** |  | [optional] 
**HtmlBodyTemplate** | **String** |  | [optional] 
**SourceRunId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAutomatedInboxPlacementScheduleOptions = Initialize-maislurp-client-powershellCreateAutomatedInboxPlacementScheduleOptions  -ConnectionId null `
 -Name null `
 -IntervalMinutes null `
 -Enabled null `
 -RequestedSegment null `
 -SeedlistProfile null `
 -SubjectTemplate null `
 -TextBodyTemplate null `
 -HtmlBodyTemplate null `
 -SourceRunId null
```

- Convert the resource to JSON
```powershell
$CreateAutomatedInboxPlacementScheduleOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

