# OptionalConnectorSyncSettingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Present** | **Boolean** |  | 
**Result** | [**ConnectorSyncSettingsDto**](ConnectorSyncSettingsDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptionalConnectorSyncSettingsDto = Initialize-maislurp-client-powershellOptionalConnectorSyncSettingsDto  -Present null `
 -Result null
```

- Convert the resource to JSON
```powershell
$OptionalConnectorSyncSettingsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

