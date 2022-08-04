# ThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 
**Subject** | **String** | Thread subject | [optional] 
**InboxId** | **String** | Inbox ID | 
**UserId** | **String** | User ID | 
**To** | **String[]** | To recipients | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**Bcc** | **String[]** | BCC recipients | [optional] 
**Cc** | **String[]** | CC recipients | [optional] 
**AliasId** | **String** | Alias ID | 

## Examples

- Prepare the resource
```powershell
$ThreadProjection = Initialize-maislurp-client-powershellThreadProjection  -Name null `
 -Id null `
 -Subject null `
 -InboxId null `
 -UserId null `
 -To null `
 -CreatedAt null `
 -UpdatedAt null `
 -Bcc null `
 -Cc null `
 -AliasId null
```

- Convert the resource to JSON
```powershell
$ThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

