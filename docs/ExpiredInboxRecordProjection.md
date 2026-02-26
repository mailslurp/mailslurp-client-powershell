# ExpiredInboxRecordProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExpiredInboxRecordProjection = Initialize-maislurp-client-powershellExpiredInboxRecordProjection  -UserId null `
 -EmailAddress null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ExpiredInboxRecordProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

