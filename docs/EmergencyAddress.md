# EmergencyAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Sid** | **String** |  | 
**UserId** | **String** |  | 
**DisplayName** | **String** |  | 
**CustomerName** | **String** |  | 
**Address1** | **String** |  | 
**City** | **String** |  | 
**Region** | **String** |  | 
**PostalCode** | **String** |  | 
**PhoneCountry** | **String** |  | 
**AccountSid** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$EmergencyAddress = Initialize-maislurp-client-powershellEmergencyAddress  -Id null `
 -Sid null `
 -UserId null `
 -DisplayName null `
 -CustomerName null `
 -Address1 null `
 -City null `
 -Region null `
 -PostalCode null `
 -PhoneCountry null `
 -AccountSid null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$EmergencyAddress | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

