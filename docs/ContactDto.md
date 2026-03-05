# ContactDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**GroupId** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**EmailAddresses** | **String[]** |  | 
**PrimaryEmailAddress** | **String** |  | [optional] 
**Tags** | **String[]** |  | 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ContactDto = Initialize-maislurp-client-powershellContactDto  -Id null `
 -GroupId null `
 -FirstName null `
 -LastName null `
 -Company null `
 -EmailAddresses null `
 -PrimaryEmailAddress null `
 -Tags null `
 -MetaData null `
 -OptOut null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$ContactDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

