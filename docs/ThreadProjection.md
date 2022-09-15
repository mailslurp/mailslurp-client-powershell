# ThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of thread | [optional] 
**Id** | **String** | ID of email thread | 
**Subject** | **String** | Thread subject | [optional] 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID | 
**To** | **String[]** | To recipients | 
**CreatedAt** | **System.DateTime** | Created at DateTime | 
**Bcc** | **String[]** | BCC recipients | [optional] 
**Cc** | **String[]** | CC recipients | [optional] 
**UpdatedAt** | **System.DateTime** | Updated at DateTime | 
**AliasId** | **String** | Alias ID | 

## Examples

- Prepare the resource
```powershell
$ThreadProjection = Initialize-maislurp-client-powershellThreadProjection  -Name null `
 -Id null `
 -Subject null `
 -UserId null `
 -InboxId null `
 -To null `
 -CreatedAt null `
 -Bcc null `
 -Cc null `
 -UpdatedAt null `
 -AliasId null
```

- Convert the resource to JSON
```powershell
$ThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

