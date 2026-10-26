# CreateInboxPlacementTestOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SeedlistProfile** | **String** |  | [optional] 
**RequestedSegment** | **String** |  | 
**SenderDomain** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 
**PublicShareRequested** | **Boolean** |  | 
**AddressFormat** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CreateInboxPlacementTestOptions = Initialize-maislurp-client-powershellCreateInboxPlacementTestOptions  -SeedlistProfile null `
 -RequestedSegment null `
 -SenderDomain null `
 -FromEmail null `
 -PublicShareRequested null `
 -AddressFormat null
```

- Convert the resource to JSON
```powershell
$CreateInboxPlacementTestOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

