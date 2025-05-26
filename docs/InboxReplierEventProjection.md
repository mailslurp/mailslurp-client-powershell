# InboxReplierEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Recipients** | **String[]** |  | [optional] 
**UserId** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**SentId** | **String** |  | [optional] 
**ReplierId** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxReplierEventProjection = Initialize-maislurp-client-powershellInboxReplierEventProjection  -Recipients null `
 -UserId null `
 -EmailId null `
 -InboxId null `
 -CreatedAt null `
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

