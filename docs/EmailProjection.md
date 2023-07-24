# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**Read** | **Boolean** |  | 
**DomainId** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | 
**BodyMD5Hash** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -VarFrom null `
 -Subject null `
 -InboxId null `
 -Attachments null `
 -CreatedAt null `
 -To null `
 -Bcc null `
 -Cc null `
 -Read null `
 -DomainId null `
 -BodyExcerpt null `
 -TeamAccess null `
 -BodyMD5Hash null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

