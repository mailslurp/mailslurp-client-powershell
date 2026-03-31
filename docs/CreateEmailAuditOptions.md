# CreateEmailAuditOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromAddress** | **String** | Optional sender address context | [optional] 
**Recipient** | **String** | Optional recipient context | [optional] 
**Subject** | **String** | Optional subject line context | [optional] 
**HtmlBody** | **String** | Optional HTML email body | [optional] 
**TextBody** | **String** | Optional text email body | [optional] 
**EmailAnalysis** | [**EmailAnalysis**](EmailAnalysis) |  | [optional] 
**HasAttachments** | **Boolean** | Whether the source email included attachments | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateEmailAuditOptions = Initialize-maislurp-client-powershellCreateEmailAuditOptions  -FromAddress sender@example.com `
 -Recipient inbox@example.net `
 -Subject null `
 -HtmlBody null `
 -TextBody null `
 -EmailAnalysis null `
 -HasAttachments null
```

- Convert the resource to JSON
```powershell
$CreateEmailAuditOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

