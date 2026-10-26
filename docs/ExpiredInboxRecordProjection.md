# ExpiredInboxRecordProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExpiredInboxRecordProjection = Initialize-maislurp-client-powershellExpiredInboxRecordProjection  -Id null `
 -UserId null `
 -CreatedAt null `
 -EmailAddress null
```

- Convert the resource to JSON
```powershell
$ExpiredInboxRecordProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

