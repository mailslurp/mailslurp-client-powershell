# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Attachments** | **String[]** |  | [optional] 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**Read** | **Boolean** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -VarFrom null `
 -Subject null `
 -InboxId null `
 -CreatedAt null `
 -Attachments null `
 -To null `
 -Bcc null `
 -Cc null `
 -DomainId null `
 -BodyMD5Hash null `
 -Read null `
 -BodyExcerpt null `
 -TeamAccess null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

