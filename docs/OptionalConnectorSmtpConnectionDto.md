# OptionalConnectorSmtpConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Present** | **Boolean** |  | 
**Result** | [**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptionalConnectorSmtpConnectionDto = Initialize-maislurp-client-powershellOptionalConnectorSmtpConnectionDto  -Present null `
 -Result null
```

- Convert the resource to JSON
```powershell
$OptionalConnectorSmtpConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

