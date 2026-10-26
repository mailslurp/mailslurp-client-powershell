# InboxPlacementTargetResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SeedAccountId** | **Int64** |  | 
**SeedAddress** | **String** |  | 
**Provider** | **String** |  | 
**Segment** | **String** |  | 
**Status** | **String** |  | 
**PlacementVerdict** | **String** |  | [optional] 
**PlacementFolder** | **String** |  | [optional] 
**ReceivedAt** | **System.DateTime** |  | [optional] 
**LatencyMs** | **Int64** |  | [optional] 
**Evidence** | **System.Collections.Hashtable** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementTargetResultDto = Initialize-maislurp-client-powershellInboxPlacementTargetResultDto  -SeedAccountId null `
 -SeedAddress null `
 -Provider null `
 -Segment null `
 -Status null `
 -PlacementVerdict null `
 -PlacementFolder null `
 -ReceivedAt null `
 -LatencyMs null `
 -Evidence null
```

- Convert the resource to JSON
```powershell
$InboxPlacementTargetResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

