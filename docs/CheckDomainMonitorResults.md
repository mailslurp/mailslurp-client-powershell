# CheckDomainMonitorResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**Status** | **String** |  | 
**HealthScore** | **Int32** |  | 
**TotalChecks** | **Int32** |  | 
**PassingChecks** | **Int32** |  | 
**FailingChecks** | **Int32** |  | 
**SpfOk** | **Boolean** |  | 
**DmarcOk** | **Boolean** |  | 
**DmarcEnforced** | **Boolean** |  | 
**MxOk** | **Boolean** |  | 
**DkimOk** | **Boolean** |  | 
**BimiOk** | **Boolean** |  | 
**MtaStsOk** | **Boolean** |  | 
**TlsReportingOk** | **Boolean** |  | 
**BlacklistChecked** | **Boolean** |  | 
**BlacklistOk** | **Boolean** |  | 
**BlacklistListed** | **Boolean** |  | 
**Insights** | **String[]** |  | 
**ErrorMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckDomainMonitorResults = Initialize-maislurp-client-powershellCheckDomainMonitorResults  -Domain null `
 -Status null `
 -HealthScore null `
 -TotalChecks null `
 -PassingChecks null `
 -FailingChecks null `
 -SpfOk null `
 -DmarcOk null `
 -DmarcEnforced null `
 -MxOk null `
 -DkimOk null `
 -BimiOk null `
 -MtaStsOk null `
 -TlsReportingOk null `
 -BlacklistChecked null `
 -BlacklistOk null `
 -BlacklistListed null `
 -Insights null `
 -ErrorMessage null
```

- Convert the resource to JSON
```powershell
$CheckDomainMonitorResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

