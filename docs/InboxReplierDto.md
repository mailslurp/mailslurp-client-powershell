# InboxReplierDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Field** | **String** |  | [optional] 
**Match** | **String** |  | [optional] 
**ReplyTo** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Charset** | **String** |  | [optional] 
**IsHTML** | **Boolean** |  | 
**TemplateId** | **String** |  | [optional] 
**TemplateVariables** | [**System.Collections.Hashtable**](SystemCollectionsHashtable) |  | [optional] 
**IgnoreReplyTo** | **Boolean** |  | 
**Active** | **Boolean** | Whether the inbox replier is active | 
**CreatedAt** | **System.DateTime** |  | 
**Should** | **String** | Comparison mode for inbox automation matching. | [optional] 
**MatchOptions** | [**InboxAutomationMatchOptions**](InboxAutomationMatchOptions) |  | [optional] 
**Body** | **String** |  | [optional] 
**Attachments** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxReplierDto = Initialize-maislurp-client-powershellInboxReplierDto  -Id null `
 -InboxId null `
 -Name null `
 -Field null `
 -Match null `
 -ReplyTo null `
 -Subject null `
 -VarFrom null `
 -Charset null `
 -IsHTML null `
 -TemplateId null `
 -TemplateVariables null `
 -IgnoreReplyTo null `
 -Active null `
 -CreatedAt null `
 -Should null `
 -MatchOptions null `
 -Body null `
 -Attachments null
```

- Convert the resource to JSON
```powershell
$InboxReplierDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

