# InboxReplierEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Recipients** | **String[]** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**SentId** | **String** |  | [optional] 
**ReplierId** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxReplierEventProjection = Initialize-maislurp-client-powershellInboxReplierEventProjection  -CreatedAt null `
 -Recipients null `
 -EmailId null `
 -InboxId null `
 -UserId null `
 -SentId null `
 -ReplierId null `
 -Message null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$InboxReplierEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

