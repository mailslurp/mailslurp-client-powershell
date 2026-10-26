# EmailThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** | Thread topic subject | [optional] 
**VarFrom** | **String** | From sender | [optional] 
**Id** | **String** | ID of email thread | 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID | [optional] 
**Recipients** | [**EmailRecipientsProjection**](EmailRecipientsProjection) |  | [optional] 
**To** | **String[]** | To recipients | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**VarSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**LastCreatedAt** | **System.DateTime** | Last email created time | [optional] 
**HasAttachments** | **Boolean** | Has attachments | 
**LastSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**LastFrom** | **String** | Last sender | [optional] 
**Unread** | **Boolean** | Has unread | 
**MessageCount** | **Int32** | Number of messages in the thread | 
**LastBodyExcerpt** | **String** | Last body excerpt | [optional] 
**LastTextExcerpt** | **String** | Last text excerpt | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailThreadProjection = Initialize-maislurp-client-powershellEmailThreadProjection  -Subject null `
 -VarFrom null `
 -Id null `
 -UserId null `
 -InboxId null `
 -Recipients null `
 -To null `
 -CreatedAt null `
 -Cc null `
 -Bcc null `
 -UpdatedAt null `
 -VarSender null `
 -LastCreatedAt null `
 -HasAttachments null `
 -LastSender null `
 -LastFrom null `
 -Unread null `
 -MessageCount null `
 -LastBodyExcerpt null `
 -LastTextExcerpt null
```

- Convert the resource to JSON
```powershell
$EmailThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

