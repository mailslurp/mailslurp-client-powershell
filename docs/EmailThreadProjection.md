# EmailThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** | Thread topic subject | [optional] 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID | [optional] 
**VarSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**Recipients** | [**EmailRecipientsProjection**](EmailRecipientsProjection) |  | [optional] 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**To** | **String[]** | To recipients | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**HasAttachments** | **Boolean** | Has attachments | 
**LastCreatedAt** | **System.DateTime** | Last email created time | [optional] 
**LastFrom** | **String** | Last sender | [optional] 
**LastSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**Unread** | **Boolean** | Has unread | 
**MessageCount** | **Int32** | Number of messages in the thread | 
**LastBodyExcerpt** | **String** | Last body excerpt | [optional] 
**LastTextExcerpt** | **String** | Last text excerpt | [optional] 
**Id** | **String** | ID of email thread | 
**VarFrom** | **String** | From sender | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailThreadProjection = Initialize-maislurp-client-powershellEmailThreadProjection  -Subject null `
 -UserId null `
 -InboxId null `
 -VarSender null `
 -Recipients null `
 -UpdatedAt null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -HasAttachments null `
 -LastCreatedAt null `
 -LastFrom null `
 -LastSender null `
 -Unread null `
 -MessageCount null `
 -LastBodyExcerpt null `
 -LastTextExcerpt null `
 -Id null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$EmailThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

