# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachments** | **String[]** |  | [optional] 
**InboxId** | **String** |  | 
**To** | **String[]** |  | 
**DomainId** | **String** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**Read** | **Boolean** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Subject** | **String** |  | [optional] 
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Attachments null `
 -InboxId null `
 -To null `
 -DomainId null `
 -Bcc null `
 -Cc null `
 -Read null `
 -BodyExcerpt null `
 -TeamAccess null `
 -BodyMD5Hash null `
 -TextExcerpt null `
 -CreatedAt null `
 -Subject null `
 -Id null `
 -VarFrom null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

