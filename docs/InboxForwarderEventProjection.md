# InboxForwarderEventProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**ForwarderId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderEventProjection = Initialize-maislurp-client-powershellInboxForwarderEventProjection  -Message null `
 -Id null `
 -Status null `
 -EmailId null `
 -InboxId null `
 -UserId null `
 -CreatedAt null `
 -ForwarderId null
```

- Convert the resource to JSON
```powershell
$InboxForwarderEventProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

