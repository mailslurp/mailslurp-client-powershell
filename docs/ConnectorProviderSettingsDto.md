# ConnectorProviderSettingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GoogleSettings** | [**ProviderSettings**](ProviderSettings) |  | 
**MicrosoftSettings** | [**ProviderSettings**](ProviderSettings) |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorProviderSettingsDto = Initialize-maislurp-client-powershellConnectorProviderSettingsDto  -GoogleSettings null `
 -MicrosoftSettings null
```

- Convert the resource to JSON
```powershell
$ConnectorProviderSettingsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

