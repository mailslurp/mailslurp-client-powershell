# ThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**InboxId** | **String** | Inbox ID | 
**UserId** | **String** | User ID | 
**To** | **String[]** | To recipients | 
**Bcc** | **String[]** | BCC recipients | [optional] 
**Cc** | **String[]** | CC recipients | [optional] 
**AliasId** | **String** | Alias ID | 
**Subject** | **String** | Thread subject | [optional] 
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 

## Examples

- Prepare the resource
```powershell
$ThreadProjection = Initialize-maislurp-client-powershellThreadProjection  -CreatedAt null `
 -UpdatedAt null `
 -InboxId null `
 -UserId null `
 -To null `
 -Bcc null `
 -Cc null `
 -AliasId null `
 -Subject null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

