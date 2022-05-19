# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | [optional] 
**To** | **String[]** |  | 
**TeamAccess** | **Boolean** |  | [optional] 
**Read** | **Boolean** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -VarFrom null `
 -Subject null `
 -InboxId null `
 -Attachments null `
 -To null `
 -TeamAccess null `
 -Read null `
 -BodyMD5Hash null `
 -BodyExcerpt null `
 -CreatedAt null `
 -Bcc null `
 -Cc null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

