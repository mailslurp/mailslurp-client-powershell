# TenantReputationStatusSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GeneratedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**Rows** | [**TenantReputationStatusRowDto[]**](TenantReputationStatusRowDto) |  | 

## Examples

- Prepare the resource
```powershell
$TenantReputationStatusSummaryDto = Initialize-maislurp-client-powershellTenantReputationStatusSummaryDto  -GeneratedAt null `
 -UserId null `
 -Rows null
```

- Convert the resource to JSON
```powershell
$TenantReputationStatusSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

