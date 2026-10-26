# DomainMonitorObservedAuthSampleDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**MonitorId** | **String** |  | 
**Domain** | **String** |  | 
**RecipientAddress** | **String** |  | 
**SourceMessageId** | **String** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**FromAddress** | **String** |  | [optional] 
**FromDomain** | **String** |  | [optional] 
**ReturnPath** | **String** |  | [optional] 
**ReturnPathDomain** | **String** |  | [optional] 
**SpfStatus** | **String** |  | 
**SpfEvaluatedDomain** | **String** |  | [optional] 
**SpfSourceIp** | **String** |  | [optional] 
**DkimStatus** | **String** |  | 
**DkimSignatures** | [**DomainMonitorDkimSignatureDto[]**](DomainMonitorDkimSignatureDto) |  | 
**DmarcStatus** | **String** |  | 
**DmarcAlignedIdentifier** | **String** |  | [optional] 
**TrustedAuthenticationResultsSource** | **String** |  | [optional] 
**ProviderHints** | **String[]** |  | 
**Accepted** | **Boolean** |  | 
**ValidationError** | **String** |  | [optional] 
**ReceivedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorObservedAuthSampleDto = Initialize-maislurp-client-powershellDomainMonitorObservedAuthSampleDto  -Id null `
 -MonitorId null `
 -Domain null `
 -RecipientAddress null `
 -SourceMessageId null `
 -MessageId null `
 -FromAddress null `
 -FromDomain null `
 -ReturnPath null `
 -ReturnPathDomain null `
 -SpfStatus null `
 -SpfEvaluatedDomain null `
 -SpfSourceIp null `
 -DkimStatus null `
 -DkimSignatures null `
 -DmarcStatus null `
 -DmarcAlignedIdentifier null `
 -TrustedAuthenticationResultsSource null `
 -ProviderHints null `
 -Accepted null `
 -ValidationError null `
 -ReceivedAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DomainMonitorObservedAuthSampleDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

