# AliasThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 
**Subject** | **String** | Thread subject | [optional] 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**To** | **String[]** | To recipients | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**AliasId** | **String** | Alias ID | 

## Examples

- Prepare the resource
```powershell
$AliasThreadProjection = Initialize-maislurp-client-powershellAliasThreadProjection  -Name null `
 -Id null `
 -Subject null `
 -UserId null `
 -InboxId null `
 -CreatedAt null `
 -To null `
 -Cc null `
 -Bcc null `
 -UpdatedAt null `
 -AliasId null
```

- Convert the resource to JSON
```powershell
$AliasThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

