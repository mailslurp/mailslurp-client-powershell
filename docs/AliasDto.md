# AliasDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | [optional] 
**EmailAddress** | **String** | The alias&#39;s email address for receiving email | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** | Inbox that is associated with the alias | [optional] 
**IsVerified** | **Boolean** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | [optional] 
**MaskedEmailAddress** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**Name** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 
**UseThreads** | **Boolean** | If alias will generate response threads or not when email are received by it | [optional] 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AliasDto = Initialize-maislurp-client-powershellAliasDto  -CreatedAt null `
 -EmailAddress null `
 -Id null `
 -InboxId null `
 -IsVerified null `
 -MaskedEmailAddress null `
 -Name null `
 -UpdatedAt null `
 -UseThreads null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$AliasDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

