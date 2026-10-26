# OptionalConnectorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Present** | **Boolean** |  | 
**Result** | [**ConnectorDto**](ConnectorDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptionalConnectorDto = Initialize-maislurp-client-powershellOptionalConnectorDto  -Present null `
 -Result null
```

- Convert the resource to JSON
```powershell
$OptionalConnectorDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

