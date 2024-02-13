# ExpiredInboxRecordProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | 
**UserId** | **String** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExpiredInboxRecordProjection = Initialize-maislurp-client-powershellExpiredInboxRecordProjection  -CreatedAt null `
 -EmailAddress null `
 -UserId null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ExpiredInboxRecordProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

