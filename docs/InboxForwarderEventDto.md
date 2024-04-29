# InboxForwarderEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**EmailId** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**ForwarderId** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxForwarderEventDto = Initialize-maislurp-client-powershellInboxForwarderEventDto  -Id null `
 -InboxId null `
 -EmailId null `
 -UserId null `
 -ForwarderId null `
 -Message null `
 -Status null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$InboxForwarderEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

