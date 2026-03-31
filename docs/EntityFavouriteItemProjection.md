# EntityFavouriteItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Id** | **String** |  | 
**Description** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**EntityType** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EntityFavouriteItemProjection = Initialize-maislurp-client-powershellEntityFavouriteItemProjection  -Name null `
 -Id null `
 -Description null `
 -CreatedAt null `
 -EntityType null
```

- Convert the resource to JSON
```powershell
$EntityFavouriteItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

