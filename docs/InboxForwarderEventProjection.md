# InboxForwarderEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**ForwarderId** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderEventProjection = Initialize-maislurp-client-powershellInboxForwarderEventProjection  -CreatedAt null `
 -UserId null `
 -EmailId null `
 -InboxId null `
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

