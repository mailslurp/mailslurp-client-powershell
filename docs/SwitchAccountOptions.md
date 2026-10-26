# SwitchAccountOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetAccountId** | **String** |  | [optional] 
**OrganizationSlug** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SwitchAccountOptions = Initialize-maislurp-client-powershellSwitchAccountOptions  -TargetAccountId null `
 -OrganizationSlug null
```

- Convert the resource to JSON
```powershell
$SwitchAccountOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

