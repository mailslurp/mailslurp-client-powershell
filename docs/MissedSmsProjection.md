# MissedSmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PhoneNumber** | **String** |  | 
**Sid** | **String** |  | 
**FromNumber** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MissedSmsProjection = Initialize-maislurp-client-powershellMissedSmsProjection  -Id null `
 -UserId null `
 -CreatedAt null `
 -PhoneNumber null `
 -Sid null `
 -FromNumber null
```

- Convert the resource to JSON
```powershell
$MissedSmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

