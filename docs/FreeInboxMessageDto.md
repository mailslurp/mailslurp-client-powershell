# FreeInboxMessageDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarSender** | **String** |  | 
**Subject** | **String** |  | 
**Text** | **String** |  | 
**ReceivedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$FreeInboxMessageDto = Initialize-maislurp-client-powershellFreeInboxMessageDto  -Id null `
 -VarSender null `
 -Subject null `
 -Text null `
 -ReceivedAt null
```

- Convert the resource to JSON
```powershell
$FreeInboxMessageDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

