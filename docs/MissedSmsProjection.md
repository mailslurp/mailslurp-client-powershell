# MissedSmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**FromNumber** | **String** |  | 
**Sid** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MissedSmsProjection = Initialize-maislurp-client-powershellMissedSmsProjection  -Id null `
 -UserId null `
 -PhoneNumber null `
 -CreatedAt null `
 -FromNumber null `
 -Sid null
```

- Convert the resource to JSON
```powershell
$MissedSmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

