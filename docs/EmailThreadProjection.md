# EmailThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Recipients** | [**EmailRecipientsProjection**](EmailRecipientsProjection) |  | [optional] 
**VarSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**InboxId** | **String** | Inbox ID | [optional] 
**UserId** | **String** | User ID | 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**To** | **String[]** | To recipients | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**HasAttachments** | **Boolean** | Has attachments | 
**Unread** | **Boolean** | Has unread | 
**MessageCount** | **Int32** | Number of messages in the thread | 
**LastBodyExcerpt** | **String** | Last body excerpt | [optional] 
**LastTextExcerpt** | **String** | Last text excerpt | [optional] 
**LastCreatedAt** | **System.DateTime** | Last email created time | [optional] 
**LastFrom** | **String** | Last sender | [optional] 
**LastSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**Subject** | **String** | Thread topic subject | [optional] 
**Id** | **String** | ID of email thread | 
**VarFrom** | **String** | From sender | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailThreadProjection = Initialize-maislurp-client-powershellEmailThreadProjection  -Recipients null `
 -VarSender null `
 -InboxId null `
 -UserId null `
 -UpdatedAt null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -HasAttachments null `
 -Unread null `
 -MessageCount null `
 -LastBodyExcerpt null `
 -LastTextExcerpt null `
 -LastCreatedAt null `
 -LastFrom null `
 -LastSender null `
 -Subject null `
 -Id null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$EmailThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

