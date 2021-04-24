# CreateContactOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddresses** | **String[]** | Set of email addresses belonging to the contact | [optional] 
**FirstName** | **String** |  | [optional] 
**GroupId** | **String** | Group IDs that contact belongs to | [optional] 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] 
**Tags** | **String[]** | Tags that can be used to search and group contacts | [optional] 
**LastName** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateContactOptions = Initialize-maislurp-client-powershellCreateContactOptions  -EmailAddresses null `
 -FirstName null `
 -GroupId null `
 -MetaData null `
 -OptOut null `
 -Tags null `
 -LastName null `
 -Company null
```

- Convert the resource to JSON
```powershell
$CreateContactOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

