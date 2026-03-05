# EntityFavouriteItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**EntityType** | **String** |  | 
**Name** | **String** |  | 
**Id** | **String** |  | 
**Description** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntityFavouriteItemProjection = Initialize-maislurp-client-powershellEntityFavouriteItemProjection  -CreatedAt null `
 -EntityType null `
 -Name null `
 -Id null `
 -Description null
```

- Convert the resource to JSON
```powershell
$EntityFavouriteItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

