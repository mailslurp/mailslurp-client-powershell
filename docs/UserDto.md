# UserDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ApiKey** | **String** |  | 
**EmailAddress** | **String** |  | 
**EmailAddressMd5** | **String** |  | 
**Created** | **System.DateTime** |  | [optional] 
**UserType** | **String** |  | [optional] 
**Organization** | **String** | Does user belong to an organization | [optional] 
**Verified** | **String** | Has user accepted an organization invite | [optional] 
**HasPassword** | **Boolean** |  | 
**IsFrozen** | **Boolean** |  | 
**AddNewContacts** | **Boolean** |  | [optional] 
**SsoProvider** | **String** |  | [optional] 
**CustomerId** | **String** |  | [optional] 
**HasOnboarded** | **Boolean** |  | [optional] 
**ImapUsername** | **String** |  | [optional] 
**ImapPassword** | **String** |  | [optional] 
**SmtpUsername** | **String** |  | [optional] 
**SmtpPassword** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserDto = Initialize-maislurp-client-powershellUserDto  -Id null `
 -ApiKey null `
 -EmailAddress null `
 -EmailAddressMd5 null `
 -Created null `
 -UserType null `
 -Organization null `
 -Verified null `
 -HasPassword null `
 -IsFrozen null `
 -AddNewContacts null `
 -SsoProvider null `
 -CustomerId null `
 -HasOnboarded null `
 -ImapUsername null `
 -ImapPassword null `
 -SmtpUsername null `
 -SmtpPassword null
```

- Convert the resource to JSON
```powershell
$UserDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

