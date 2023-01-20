# BounceRecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**SentEmailId** | **String** |  | [optional] 
**Recipient** | **String** |  | 
**Action** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceRecipientProjection = Initialize-maislurp-client-powershellBounceRecipientProjection  -Id null `
 -Status null `
 -CreatedAt null `
 -SentEmailId null `
 -Recipient null `
 -Action null
```

- Convert the resource to JSON
```powershell
$BounceRecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

