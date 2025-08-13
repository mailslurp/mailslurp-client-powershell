# MissedEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**AttachmentCount** | **Int32** |  | 
**VarFrom** | **String** |  | [optional] 
**RawUrl** | **String** | use raw key and raw bucket | [optional] 
**RawKey** | **String** |  | [optional] 
**RawBucket** | **String** |  | [optional] 
**CanRestore** | **Boolean** |  | [optional] 
**To** | **String[]** |  | 
**Cc** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**InboxIds** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$MissedEmailDto = Initialize-maislurp-client-powershellMissedEmailDto  -Id null `
 -UserId null `
 -Subject null `
 -BodyExcerpt null `
 -AttachmentCount null `
 -VarFrom null `
 -RawUrl null `
 -RawKey null `
 -RawBucket null `
 -CanRestore null `
 -To null `
 -Cc null `
 -Bcc null `
 -InboxIds null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$MissedEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

