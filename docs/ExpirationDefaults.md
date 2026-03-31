# ExpirationDefaults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultExpirationMillis** | **Int64** |  | [optional] 
**MaxExpirationMillis** | **Int64** |  | [optional] 
**DefaultExpiresAt** | **System.DateTime** |  | [optional] 
**CanPermanentInbox** | **Boolean** | Use nextInboxAllowsPermanent instead | 
**NextInboxAllowsPermanent** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$ExpirationDefaults = Initialize-maislurp-client-powershellExpirationDefaults  -DefaultExpirationMillis null `
 -MaxExpirationMillis null `
 -DefaultExpiresAt null `
 -CanPermanentInbox null `
 -NextInboxAllowsPermanent null
```

- Convert the resource to JSON
```powershell
$ExpirationDefaults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

