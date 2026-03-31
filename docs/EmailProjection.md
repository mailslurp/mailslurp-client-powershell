# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ThreadId** | **String** |  | [optional] 
**VarFrom** | **String** |  | 
**Subject** | **String** |  | [optional] 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | [optional] 
**SizeBytes** | **Int64** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**Favourite** | **Boolean** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**PlusAddress** | **String** |  | [optional] 
**ImapUid** | **Int64** |  | [optional] 
**InReplyTo** | **String** |  | [optional] 
**Read** | **Boolean** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyPartContentTypes** | **String[]** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -ThreadId null `
 -VarFrom null `
 -Subject null `
 -VarSender null `
 -Recipients null `
 -InboxId null `
 -Attachments null `
 -SizeBytes null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -Favourite null `
 -DomainId null `
 -PlusAddress null `
 -ImapUid null `
 -InReplyTo null `
 -Read null `
 -BodyExcerpt null `
 -TextExcerpt null `
 -BodyPartContentTypes null `
 -BodyMD5Hash null `
 -TeamAccess null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

