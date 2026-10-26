# DomainMonitorEmailVerificationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MonitorId** | **String** |  | 
**EmailAddress** | **String** |  | 
**LocalPart** | **String** |  | 
**Status** | **String** |  | 
**SampleCount** | **Int32** |  | 
**LastSample** | [**DomainMonitorObservedAuthSampleDto**](DomainMonitorObservedAuthSampleDto) |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorEmailVerificationDto = Initialize-maislurp-client-powershellDomainMonitorEmailVerificationDto  -MonitorId null `
 -EmailAddress null `
 -LocalPart null `
 -Status null `
 -SampleCount null `
 -LastSample null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DomainMonitorEmailVerificationDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

