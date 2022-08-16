# ContactProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**GroupId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**EmailAddresses** | **String[]** |  | [optional] 
**OptOut** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$ContactProjection = Initialize-maislurp-client-powershellContactProjection  -Id null `
 -GroupId null `
 -CreatedAt null `
 -FirstName null `
 -LastName null `
 -Company null `
 -EmailAddresses null `
 -OptOut null
```

- Convert the resource to JSON
```powershell
$ContactProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

