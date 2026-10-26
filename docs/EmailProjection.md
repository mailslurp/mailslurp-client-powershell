# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**VarFrom** | **String** |  | 
**Id** | **String** |  | 
**ThreadId** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**Read** | **Boolean** |  | 
**TextExcerpt** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**To** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**Favourite** | **Boolean** |  | [optional] 
**SizeBytes** | **Int64** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**DomainId** | **String** |  | [optional] 
**BodyPartContentTypes** | **String[]** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**PlusAddress** | **String** |  | [optional] 
**ImapUid** | **Int64** |  | [optional] 
**TeamAccess** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Subject null `
 -VarFrom null `
 -Id null `
 -ThreadId null `
 -InboxId null `
 -Recipients null `
 -Attachments null `
 -Read null `
 -TextExcerpt null `
 -BodyExcerpt null `
 -To null `
 -CreatedAt null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -InReplyTo null `
 -Favourite null `
 -SizeBytes null `
 -VarSender null `
 -DomainId null `
 -BodyPartContentTypes null `
 -BodyMD5Hash null `
 -PlusAddress null `
 -ImapUid null `
 -TeamAccess null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

