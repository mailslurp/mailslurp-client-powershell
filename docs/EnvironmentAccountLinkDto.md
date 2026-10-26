# EnvironmentAccountLinkDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**AccountGroupId** | **String** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**Name** | **String** |  | [optional] 
**Role** | **String** |  | 
**EnvironmentLabel** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EnvironmentAccountLinkDto = Initialize-maislurp-client-powershellEnvironmentAccountLinkDto  -Id null `
 -AccountGroupId null `
 -UserId null `
 -EmailAddress null `
 -Name null `
 -Role null `
 -EnvironmentLabel null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$EnvironmentAccountLinkDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

