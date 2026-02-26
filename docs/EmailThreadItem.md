# EmailThreadItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemType** | **String** |  | 
**EntityId** | **String** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | 
**VarFrom** | **String** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Read** | **Boolean** |  | 
**InReplyTo** | **String** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**ThreadId** | **String** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailThreadItem = Initialize-maislurp-client-powershellEmailThreadItem  -ItemType null `
 -EntityId null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -Subject null `
 -To null `
 -VarFrom null `
 -Bcc null `
 -Cc null `
 -Attachments null `
 -CreatedAt null `
 -Read null `
 -InReplyTo null `
 -MessageId null `
 -ThreadId null `
 -VarSender null `
 -Recipients null
```

- Convert the resource to JSON
```powershell
$EmailThreadItem | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

