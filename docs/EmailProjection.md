# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**InboxId** | **String** |  | 
**To** | **String[]** |  | 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**Favourite** | **Boolean** |  | [optional] 
**PlusAddress** | **String** |  | [optional] 
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
 -CreatedAt null `
 -VarSender null `
 -Recipients null `
 -Attachments null `
 -InboxId null `
 -To null `
 -Cc null `
 -Bcc null `
 -MessageId null `
 -DomainId null `
 -Favourite null `
 -PlusAddress null `
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

