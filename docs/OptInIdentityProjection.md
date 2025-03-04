# OptInIdentityProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**Verified** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptInIdentityProjection = Initialize-maislurp-client-powershellOptInIdentityProjection  -CreatedAt null `
 -UpdatedAt null `
 -Id null `
 -EmailAddress null `
 -Verified null
```

- Convert the resource to JSON
```powershell
$OptInIdentityProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

