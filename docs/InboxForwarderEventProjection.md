# InboxForwarderEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**ForwarderId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderEventProjection = Initialize-maislurp-client-powershellInboxForwarderEventProjection  -UserId null `
 -EmailId null `
 -InboxId null `
 -ForwarderId null `
 -CreatedAt null `
 -Message null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$InboxForwarderEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

