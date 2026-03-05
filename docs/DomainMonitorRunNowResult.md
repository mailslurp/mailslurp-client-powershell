# DomainMonitorRunNowResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Monitor** | [**DomainMonitorDto**](DomainMonitorDto) |  | 
**Run** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorRunNowResult = Initialize-maislurp-client-powershellDomainMonitorRunNowResult  -Monitor null `
 -Run null
```

- Convert the resource to JSON
```powershell
$DomainMonitorRunNowResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

