# EmailWarmupProviderPlacementDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **String** |  | 
**TotalCount** | **Int32** |  | 
**InboxCount** | **Int32** |  | 
**SpamCount** | **Int32** |  | 
**NotReceivedCount** | **Int32** |  | 
**InboxPercent** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupProviderPlacementDto = Initialize-maislurp-client-powershellEmailWarmupProviderPlacementDto  -Provider null `
 -TotalCount null `
 -InboxCount null `
 -SpamCount null `
 -NotReceivedCount null `
 -InboxPercent null
```

- Convert the resource to JSON
```powershell
$EmailWarmupProviderPlacementDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

