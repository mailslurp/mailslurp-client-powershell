# DeliveryStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**SentId** | **String** |  | [optional] 
**RemoteMtaIp** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**ReportingMta** | **String** |  | [optional] 
**Recipients** | **String[]** |  | [optional] 
**SmtpResponse** | **String** |  | [optional] 
**SmtpStatusCode** | **Int32** |  | [optional] 
**ProcessingTimeMillis** | **Int64** |  | [optional] 
**Received** | **System.DateTime** |  | [optional] 
**Subject** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DeliveryStatusDto = Initialize-maislurp-client-powershellDeliveryStatusDto  -Id null `
 -UserId null `
 -SentId null `
 -RemoteMtaIp null `
 -InboxId null `
 -ReportingMta null `
 -Recipients null `
 -SmtpResponse null `
 -SmtpStatusCode null `
 -ProcessingTimeMillis null `
 -Received null `
 -Subject null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DeliveryStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

