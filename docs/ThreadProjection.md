# ThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 
**InboxId** | **String** | Inbox ID | 
**UserId** | **String** | User ID | 
**Subject** | **String** | Thread subject | [optional] 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**To** | **String[]** | To recipients | 
**Bcc** | **String[]** | BCC recipients | [optional] 
**Cc** | **String[]** | CC recipients | [optional] 
**AliasId** | **String** | Alias ID | 

## Examples

- Prepare the resource
```powershell
$ThreadProjection = Initialize-maislurp-client-powershellThreadProjection  -Name null `
 -Id null `
 -InboxId null `
 -UserId null `
 -Subject null `
 -CreatedAt null `
 -UpdatedAt null `
 -To null `
 -Bcc null `
 -Cc null `
 -AliasId null
```

- Convert the resource to JSON
```powershell
$ThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

