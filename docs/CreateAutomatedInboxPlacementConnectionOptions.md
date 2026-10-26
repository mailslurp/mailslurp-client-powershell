# CreateAutomatedInboxPlacementConnectionOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Provider** | **String** |  | 
**FromEmail** | **String** |  | 
**Smtp** | [**AutomatedInboxPlacementSmtpOptions**](AutomatedInboxPlacementSmtpOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAutomatedInboxPlacementConnectionOptions = Initialize-maislurp-client-powershellCreateAutomatedInboxPlacementConnectionOptions  -Name null `
 -Provider null `
 -FromEmail null `
 -Smtp null
```

- Convert the resource to JSON
```powershell
$CreateAutomatedInboxPlacementConnectionOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

