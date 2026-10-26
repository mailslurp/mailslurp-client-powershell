# TotpDeviceOptionalDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Device** | [**TotpDeviceDto**](TotpDeviceDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TotpDeviceOptionalDto = Initialize-maislurp-client-powershellTotpDeviceOptionalDto  -Device null
```

- Convert the resource to JSON
```powershell
$TotpDeviceOptionalDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

