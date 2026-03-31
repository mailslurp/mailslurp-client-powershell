# EmailThreadDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of email thread | 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID | [optional] 
**VarFrom** | **String** | From sender | [optional] 
**To** | **String[]** | To recipients | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Subject** | **String** | Thread topic subject | [optional] 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 

## Examples

- Prepare the resource
```powershell
$EmailThreadDto = Initialize-maislurp-client-powershellEmailThreadDto  -Id null `
 -UserId null `
 -InboxId null `
 -VarFrom null `
 -To null `
 -Cc null `
 -Bcc null `
 -VarSender null `
 -Recipients null `
 -Subject null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmailThreadDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

