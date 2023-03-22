# CreateContactOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**EmailAddresses** | **String[]** | Set of email addresses belonging to the contact | [optional] 
**Tags** | **String[]** | Tags that can be used to search and group contacts | [optional] 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] 
**GroupId** | **String** | Group IDs that contact belongs to | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateContactOptions = Initialize-maislurp-client-powershellCreateContactOptions  -FirstName null `
 -LastName null `
 -Company null `
 -EmailAddresses null `
 -Tags null `
 -MetaData null `
 -OptOut null `
 -GroupId null
```

- Convert the resource to JSON
```powershell
$CreateContactOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

