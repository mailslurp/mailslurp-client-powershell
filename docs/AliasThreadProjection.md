# AliasThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** | Thread subject | [optional] 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID | 
**To** | **String[]** | To recipients | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**AliasId** | **String** | Alias ID | 
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 

## Examples

- Prepare the resource
```powershell
$AliasThreadProjection = Initialize-maislurp-client-powershellAliasThreadProjection  -Subject null `
 -CreatedAt null `
 -UpdatedAt null `
 -UserId null `
 -InboxId null `
 -To null `
 -Cc null `
 -Bcc null `
 -AliasId null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AliasThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

