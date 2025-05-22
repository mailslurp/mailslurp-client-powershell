# ContactProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**EmailAddresses** | **String[]** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**OptOut** | **Boolean** |  | [optional] 
**Id** | **String** |  | 
**GroupId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContactProjection = Initialize-maislurp-client-powershellContactProjection  -EmailAddress null `
 -CreatedAt null `
 -EmailAddresses null `
 -FirstName null `
 -LastName null `
 -Company null `
 -OptOut null `
 -Id null `
 -GroupId null
```

- Convert the resource to JSON
```powershell
$ContactProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

