# McpOAuthClientRegistrationOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientName** | **String** |  | 
**RedirectUris** | **String[]** |  | 
**TokenEndpointAuthMethod** | **String** |  | 
**GrantTypes** | **String[]** |  | 
**ResponseTypes** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$McpOAuthClientRegistrationOptions = Initialize-maislurp-client-powershellMcpOAuthClientRegistrationOptions  -ClientName null `
 -RedirectUris null `
 -TokenEndpointAuthMethod null `
 -GrantTypes null `
 -ResponseTypes null
```

- Convert the resource to JSON
```powershell
$McpOAuthClientRegistrationOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

