# OptInIdentityProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Verified** | **Boolean** |  | [optional] 
**EmailAddress** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$OptInIdentityProjection = Initialize-maislurp-client-powershellOptInIdentityProjection  -Id null `
 -UpdatedAt null `
 -Verified null `
 -EmailAddress null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$OptInIdentityProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

