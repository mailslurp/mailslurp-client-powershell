# CreatePortalOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**LinkHelp** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePortalOptions = Initialize-maislurp-client-powershellCreatePortalOptions  -Name null `
 -DomainId null `
 -Description null `
 -LinkHelp null
```

- Convert the resource to JSON
```powershell
$CreatePortalOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

