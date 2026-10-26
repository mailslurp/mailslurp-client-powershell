# CurrentPeriodDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CurrentPeriodStart** | **System.DateTime** |  | 
**CurrentPeriodEnd** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$CurrentPeriodDto = Initialize-maislurp-client-powershellCurrentPeriodDto  -CurrentPeriodStart null `
 -CurrentPeriodEnd null
```

- Convert the resource to JSON
```powershell
$CurrentPeriodDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

