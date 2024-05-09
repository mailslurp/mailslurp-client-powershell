# SendWithQueueResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**HeaderId** | **String** |  | 
**Delivered** | **Boolean** |  | 
**ExceptionName** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SendWithQueueResult = Initialize-maislurp-client-powershellSendWithQueueResult  -Id null `
 -UserId null `
 -Subject null `
 -InboxId null `
 -HeaderId null `
 -Delivered null `
 -ExceptionName null `
 -Message null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$SendWithQueueResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

