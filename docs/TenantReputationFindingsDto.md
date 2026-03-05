# TenantReputationFindingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GeneratedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**Findings** | [**TenantReputationFindingDto[]**](TenantReputationFindingDto) |  | 

## Examples

- Prepare the resource
```powershell
$TenantReputationFindingsDto = Initialize-maislurp-client-powershellTenantReputationFindingsDto  -GeneratedAt null `
 -UserId null `
 -Findings null
```

- Convert the resource to JSON
```powershell
$TenantReputationFindingsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

