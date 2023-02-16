# CreateEmergencyAddressOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomerName** | **String** |  | 
**Address1** | **String** |  | 
**City** | **String** |  | 
**Region** | **String** |  | 
**PostalCode** | **String** |  | 
**IsoCountryCode** | **String** |  | 
**DisplayName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateEmergencyAddressOptions = Initialize-maislurp-client-powershellCreateEmergencyAddressOptions  -CustomerName null `
 -Address1 null `
 -City null `
 -Region null `
 -PostalCode null `
 -IsoCountryCode null `
 -DisplayName null
```

- Convert the resource to JSON
```powershell
$CreateEmergencyAddressOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

