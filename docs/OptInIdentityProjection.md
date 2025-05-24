# OptInIdentityProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Verified** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptInIdentityProjection = Initialize-maislurp-client-powershellOptInIdentityProjection  -Id null `
 -EmailAddress null `
 -UpdatedAt null `
 -CreatedAt null `
 -Verified null
```

- Convert the resource to JSON
```powershell
$OptInIdentityProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

