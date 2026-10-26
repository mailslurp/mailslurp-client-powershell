# DeliverySenderCapacityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludedSenderSeats** | **Int32** |  | 
**PurchasedSenderSeats** | **Int32** |  | 
**TotalSenderCapacity** | **Int32** |  | 
**ActiveSenderConnections** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverySenderCapacityDto = Initialize-maislurp-client-powershellDeliverySenderCapacityDto  -IncludedSenderSeats null `
 -PurchasedSenderSeats null `
 -TotalSenderCapacity null `
 -ActiveSenderConnections null
```

- Convert the resource to JSON
```powershell
$DeliverySenderCapacityDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

