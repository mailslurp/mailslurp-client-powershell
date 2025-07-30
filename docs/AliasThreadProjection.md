# AliasThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** | Inbox ID | 
**UserId** | **String** | User ID | 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**To** | **String[]** | To recipients | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**AliasId** | **String** | Alias ID | 
**Subject** | **String** | Thread subject | [optional] 
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 

## Examples

- Prepare the resource
```powershell
$AliasThreadProjection = Initialize-maislurp-client-powershellAliasThreadProjection  -InboxId null `
 -UserId null `
 -UpdatedAt null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -AliasId null `
 -Subject null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AliasThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

