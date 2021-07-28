# ContactProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Company** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**EmailAddresses** | **String[]** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**GroupId** | **String** |  | [optional] 
**Id** | **String** |  | 
**LastName** | **String** |  | [optional] 
**OptOut** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContactProjection = Initialize-maislurp-client-powershellContactProjection  -Company null `
 -CreatedAt null `
 -EmailAddresses null `
 -FirstName null `
 -GroupId null `
 -Id null `
 -LastName null `
 -OptOut null
```

- Convert the resource to JSON
```powershell
$ContactProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

