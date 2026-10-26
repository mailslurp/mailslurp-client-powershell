# InboxReplierEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**Recipients** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**EmailId** | **String** |  | [optional] 
**SentId** | **String** |  | [optional] 
**ReplierId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxReplierEventProjection = Initialize-maislurp-client-powershellInboxReplierEventProjection  -Message null `
 -Id null `
 -Status null `
 -UserId null `
 -InboxId null `
 -Recipients null `
 -CreatedAt null `
 -EmailId null `
 -SentId null `
 -ReplierId null
```

- Convert the resource to JSON
```powershell
$InboxReplierEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

