# CheckEmailAuthStackResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**Status** | **String** |  | 
**HealthScore** | **Int32** |  | 
**TotalChecks** | **Int32** |  | 
**PassingChecks** | **Int32** |  | 
**FailingChecks** | **Int32** |  | 
**Spf** | [**LookupSpfDomainResults**](LookupSpfDomainResults) |  | 
**Dmarc** | [**LookupDmarcDomainResults**](LookupDmarcDomainResults) |  | 
**Dkim** | [**LookupDkimDomainResults**](LookupDkimDomainResults) |  | 
**Bimi** | [**LookupBimiDomainResults**](LookupBimiDomainResults) |  | 
**Mx** | [**LookupMxRecordsResults**](LookupMxRecordsResults) |  | 
**MtaSts** | [**LookupMtaStsDomainResults**](LookupMtaStsDomainResults) |  | 
**TlsReporting** | [**LookupTlsReportingDomainResults**](LookupTlsReportingDomainResults) |  | 
**Insights** | **String[]** |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$CheckEmailAuthStackResults = Initialize-maislurp-client-powershellCheckEmailAuthStackResults  -Domain null `
 -Status null `
 -HealthScore null `
 -TotalChecks null `
 -PassingChecks null `
 -FailingChecks null `
 -Spf null `
 -Dmarc null `
 -Dkim null `
 -Bimi null `
 -Mx null `
 -MtaSts null `
 -TlsReporting null `
 -Insights null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$CheckEmailAuthStackResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

