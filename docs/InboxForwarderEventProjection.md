# InboxForwarderEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**EmailId** | **String** |  | [optional] 
**SentId** | **String** |  | [optional] 
**ForwarderId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderEventProjection = Initialize-maislurp-client-powershellInboxForwarderEventProjection  -Message null `
 -Id null `
 -Status null `
 -UserId null `
 -InboxId null `
 -CreatedAt null `
 -EmailId null `
 -SentId null `
 -ForwarderId null
```

- Convert the resource to JSON
```powershell
$InboxForwarderEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

