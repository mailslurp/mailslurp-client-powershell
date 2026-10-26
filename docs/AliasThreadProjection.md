# AliasThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** | Thread subject | [optional] 
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID | 
**To** | **String[]** | To recipients | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**Cc** | **String[]** | CC recipients | [optional] 
**Bcc** | **String[]** | BCC recipients | [optional] 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**AliasId** | **String** | Alias ID | 

## Examples

- Prepare the resource
```powershell
$AliasThreadProjection = Initialize-maislurp-client-powershellAliasThreadProjection  -Subject null `
 -Name null `
 -Id null `
 -UserId null `
 -InboxId null `
 -To null `
 -CreatedAt null `
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

