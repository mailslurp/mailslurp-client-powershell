# OptInIdentityProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**Verified** | **Boolean** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$OptInIdentityProjection = Initialize-maislurp-client-powershellOptInIdentityProjection  -Id null `
 -EmailAddress null `
 -Verified null `
 -UpdatedAt null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$OptInIdentityProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

