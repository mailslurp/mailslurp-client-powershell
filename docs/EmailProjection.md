# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**SizeBytes** | **Int64** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**Favourite** | **Boolean** |  | [optional] 
**PlusAddress** | **String** |  | [optional] 
**ImapUid** | **Int64** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**Read** | **Boolean** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyPartContentTypes** | **String[]** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | 
**Id** | **String** |  | 
**ThreadId** | **String** |  | [optional] 
**VarFrom** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Subject null `
 -InboxId null `
 -Attachments null `
 -VarSender null `
 -Recipients null `
 -SizeBytes null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -DomainId null `
 -Favourite null `
 -PlusAddress null `
 -ImapUid null `
 -InReplyTo null `
 -Read null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -BodyPartContentTypes null `
 -BodyMD5Hash null `
 -TeamAccess null `
 -Id null `
 -ThreadId null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

