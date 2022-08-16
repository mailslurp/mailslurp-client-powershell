# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**InboxId** | **String** |  | 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**DomainId** | **String** |  | [optional] 
**Read** | **Boolean** |  | 
**TeamAccess** | **Boolean** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -VarFrom null `
 -Subject null `
 -Attachments null `
 -InboxId null `
 -To null `
 -Bcc null `
 -Cc null `
 -CreatedAt null `
 -DomainId null `
 -Read null `
 -TeamAccess null `
 -BodyMD5Hash null `
 -BodyExcerpt null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

