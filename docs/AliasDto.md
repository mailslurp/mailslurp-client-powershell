# AliasDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** | The alias&#39;s email address for receiving email | 
**MaskedEmailAddress** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** | Inbox that is associated with the alias | 
**Name** | **String** |  | [optional] 
**UseThreads** | **Boolean** | If alias will generate response threads or not when email are received by it | [optional] 
**IsVerified** | **Boolean** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | 
**CreatedAt** | **System.DateTime** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AliasDto = Initialize-maislurp-client-powershellAliasDto  -Id null `
 -EmailAddress null `
 -MaskedEmailAddress null `
 -UserId null `
 -InboxId null `
 -Name null `
 -UseThreads null `
 -IsVerified null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AliasDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

