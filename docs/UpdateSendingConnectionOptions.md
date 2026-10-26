# UpdateSendingConnectionOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**FromEmail** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateSendingConnectionOptions = Initialize-maislurp-client-powershellUpdateSendingConnectionOptions  -Name null `
 -FromEmail null
```

- Convert the resource to JSON
```powershell
$UpdateSendingConnectionOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

