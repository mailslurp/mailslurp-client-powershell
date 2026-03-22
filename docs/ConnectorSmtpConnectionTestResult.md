# ConnectorSmtpConnectionTestResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** |  | [optional] 
**Success** | **Boolean** |  | 
**Message** | **String** |  | [optional] 
**Logs** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSmtpConnectionTestResult = Initialize-maislurp-client-powershellConnectorSmtpConnectionTestResult  -VarError null `
 -Success null `
 -Message null `
 -Logs null
```

- Convert the resource to JSON
```powershell
$ConnectorSmtpConnectionTestResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

