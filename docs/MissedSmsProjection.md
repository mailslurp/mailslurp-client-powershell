# MissedSmsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Sid** | **String** |  | 
**PhoneNumber** | **String** |  | 
**FromNumber** | **String** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MissedSmsProjection = Initialize-maislurp-client-powershellMissedSmsProjection  -UserId null `
 -CreatedAt null `
 -Sid null `
 -PhoneNumber null `
 -FromNumber null `
 -Id null
```

- Convert the resource to JSON
```powershell
$MissedSmsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

