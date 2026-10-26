# SendingConnectionDeliveryProbeDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** |  | 
**Status** | **String** |  | 
**AcceptedAt** | **System.DateTime** |  | [optional] 
**DeliveredAt** | **System.DateTime** |  | [optional] 
**LatencyMillis** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SendingConnectionDeliveryProbeDto = Initialize-maislurp-client-powershellSendingConnectionDeliveryProbeDto  -ConnectionId null `
 -Status null `
 -AcceptedAt null `
 -DeliveredAt null `
 -LatencyMillis null
```

- Convert the resource to JSON
```powershell
$SendingConnectionDeliveryProbeDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

