# EnvironmentAccountsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountGroupId** | **String** |  | [optional] 
**OwnerUserId** | **String** |  | 
**CallerUserId** | **String** |  | 
**CallerRole** | **String** |  | 
**ActiveEnvironmentUserId** | **String** |  | 
**ActiveEnvironmentLabel** | **String** |  | [optional] 
**Links** | [**EnvironmentAccountLinkDto[]**](EnvironmentAccountLinkDto) |  | 

## Examples

- Prepare the resource
```powershell
$EnvironmentAccountsDto = Initialize-maislurp-client-powershellEnvironmentAccountsDto  -AccountGroupId null `
 -OwnerUserId null `
 -CallerUserId null `
 -CallerRole null `
 -ActiveEnvironmentUserId null `
 -ActiveEnvironmentLabel null `
 -Links null
```

- Convert the resource to JSON
```powershell
$EnvironmentAccountsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

