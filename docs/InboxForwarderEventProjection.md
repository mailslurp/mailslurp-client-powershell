# InboxForwarderEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**SentId** | **String** |  | [optional] 
**ForwarderId** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderEventProjection = Initialize-maislurp-client-powershellInboxForwarderEventProjection  -EmailId null `
 -InboxId null `
 -UserId null `
 -CreatedAt null `
 -SentId null `
 -ForwarderId null `
 -Message null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$InboxForwarderEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

