# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**To** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**TeamAccess** | **Boolean** |  | 
**Read** | **Boolean** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -VarFrom null `
 -InboxId null `
 -Subject null `
 -Attachments null `
 -To null `
 -CreatedAt null `
 -Bcc null `
 -Cc null `
 -TeamAccess null `
 -Read null `
 -BodyMD5Hash null `
 -BodyExcerpt null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

