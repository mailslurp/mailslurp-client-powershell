# EntityFavouriteItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Id** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**EntityType** | **String** |  | 
**Description** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntityFavouriteItemProjection = Initialize-maislurp-client-powershellEntityFavouriteItemProjection  -Name null `
 -Id null `
 -CreatedAt null `
 -EntityType null `
 -Description null
```

- Convert the resource to JSON
```powershell
$EntityFavouriteItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

