# UpdateAutomatedInboxPlacementScheduleOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**IntervalMinutes** | **Int64** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**RequestedSegment** | **String** |  | [optional] 
**SeedlistProfile** | **String** |  | [optional] 
**SubjectTemplate** | **String** |  | [optional] 
**TextBodyTemplate** | **String** |  | [optional] 
**HtmlBodyTemplate** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateAutomatedInboxPlacementScheduleOptions = Initialize-maislurp-client-powershellUpdateAutomatedInboxPlacementScheduleOptions  -Name null `
 -IntervalMinutes null `
 -Enabled null `
 -RequestedSegment null `
 -SeedlistProfile null `
 -SubjectTemplate null `
 -TextBodyTemplate null `
 -HtmlBodyTemplate null
```

- Convert the resource to JSON
```powershell
$UpdateAutomatedInboxPlacementScheduleOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

