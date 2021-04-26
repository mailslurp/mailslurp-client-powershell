# ContactDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Company** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**EmailAddresses** | **String[]** |  | 
**FirstName** | **String** |  | [optional] 
**GroupId** | **String** |  | [optional] 
**Id** | **String** |  | 
**LastName** | **String** |  | [optional] 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** |  | [optional] 
**Tags** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ContactDto = Initialize-maislurp-client-powershellContactDto  -Company null `
 -CreatedAt null `
 -EmailAddresses null `
 -FirstName null `
 -GroupId null `
 -Id null `
 -LastName null `
 -MetaData null `
 -OptOut null `
 -Tags null
```

- Convert the resource to JSON
```powershell
$ContactDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

