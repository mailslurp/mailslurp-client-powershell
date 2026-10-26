# SpamEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | **String** |  | [optional] 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**To** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**SubjectSnippet** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SpamEmailProjection = Initialize-maislurp-client-powershellSpamEmailProjection  -VarFrom null `
 -Id null `
 -UserId null `
 -InboxId null `
 -To null `
 -CreatedAt null `
 -SubjectSnippet null
```

- Convert the resource to JSON
```powershell
$SpamEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

