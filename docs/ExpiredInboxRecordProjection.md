# ExpiredInboxRecordProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExpiredInboxRecordProjection = Initialize-maislurp-client-powershellExpiredInboxRecordProjection  -Id null `
 -CreatedAt null `
 -UserId null `
 -EmailAddress null
```

- Convert the resource to JSON
```powershell
$ExpiredInboxRecordProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

