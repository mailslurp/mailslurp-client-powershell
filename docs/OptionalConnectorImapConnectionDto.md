# OptionalConnectorImapConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Present** | **Boolean** |  | 
**Result** | [**ConnectorImapConnectionDto**](ConnectorImapConnectionDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptionalConnectorImapConnectionDto = Initialize-maislurp-client-powershellOptionalConnectorImapConnectionDto  -Present null `
 -Result null
```

- Convert the resource to JSON
```powershell
$OptionalConnectorImapConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

