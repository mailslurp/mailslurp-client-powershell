# ExpirationDefaults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CanPermanentInbox** | **Boolean** |  | 
**DefaultExpirationMillis** | **Int64** |  | [optional] 
**DefaultExpiresAt** | **System.DateTime** |  | [optional] 
**MaxExpirationMillis** | **Int64** |  | [optional] 
**NextInboxAllowsPermanent** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$ExpirationDefaults = Initialize-maislurp-client-powershellExpirationDefaults  -CanPermanentInbox null `
 -DefaultExpirationMillis null `
 -DefaultExpiresAt null `
 -MaxExpirationMillis null `
 -NextInboxAllowsPermanent null
```

- Convert the resource to JSON
```powershell
$ExpirationDefaults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

