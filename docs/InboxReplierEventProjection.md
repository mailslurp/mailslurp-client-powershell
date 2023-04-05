# InboxReplierEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**Recipients** | **String[]** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**SentId** | **String** |  | [optional] 
**ReplierId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxReplierEventProjection = Initialize-maislurp-client-powershellInboxReplierEventProjection  -Message null `
 -Id null `
 -Status null `
 -UserId null `
 -Recipients null `
 -EmailId null `
 -InboxId null `
 -CreatedAt null `
 -SentId null `
 -ReplierId null
```

- Convert the resource to JSON
```powershell
$InboxReplierEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

