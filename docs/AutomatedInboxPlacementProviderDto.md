# AutomatedInboxPlacementProviderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **String** |  | 
**DisplayName** | **String** |  | 
**Availability** | **String** |  | 
**CredentialType** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AutomatedInboxPlacementProviderDto = Initialize-maislurp-client-powershellAutomatedInboxPlacementProviderDto  -Provider null `
 -DisplayName null `
 -Availability null `
 -CredentialType null
```

- Convert the resource to JSON
```powershell
$AutomatedInboxPlacementProviderDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

