# PostmasterConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Status** | **String** |  | 
**ConnectedEmail** | **String** |  | [optional] 
**Scope** | **String** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | 
**LastSyncedAt** | **System.DateTime** |  | [optional] 
**LastError** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PostmasterConnectionDto = Initialize-maislurp-client-powershellPostmasterConnectionDto  -Id null `
 -UserId null `
 -Status null `
 -ConnectedEmail null `
 -Scope null `
 -ExpiresAt null `
 -LastSyncedAt null `
 -LastError null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$PostmasterConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

