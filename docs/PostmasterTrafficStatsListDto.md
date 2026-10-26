# PostmasterTrafficStatsListDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**StartDate** | **System.DateTime** |  | [optional] 
**EndDate** | **System.DateTime** |  | [optional] 
**Stats** | [**PostmasterTrafficStatsDto[]**](PostmasterTrafficStatsDto) |  | 

## Examples

- Prepare the resource
```powershell
$PostmasterTrafficStatsListDto = Initialize-maislurp-client-powershellPostmasterTrafficStatsListDto  -Domain null `
 -StartDate null `
 -EndDate null `
 -Stats null
```

- Convert the resource to JSON
```powershell
$PostmasterTrafficStatsListDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

