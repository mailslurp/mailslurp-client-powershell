# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**Read** | **Boolean** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | 
**BodyMD5Hash** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -VarFrom null `
 -InboxId null `
 -Subject null `
 -Attachments null `
 -CreatedAt null `
 -To null `
 -Bcc null `
 -Cc null `
 -DomainId null `
 -Read null `
 -BodyExcerpt null `
 -TeamAccess null `
 -BodyMD5Hash null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

