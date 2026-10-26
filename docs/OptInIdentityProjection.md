# OptInIdentityProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | 
**Verified** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptInIdentityProjection = Initialize-maislurp-client-powershellOptInIdentityProjection  -Id null `
 -CreatedAt null `
 -UpdatedAt null `
 -EmailAddress null `
 -Verified null
```

- Convert the resource to JSON
```powershell
$OptInIdentityProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

