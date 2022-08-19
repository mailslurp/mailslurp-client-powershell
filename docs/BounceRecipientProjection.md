# BounceRecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**SentEmailId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Recipient** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$BounceRecipientProjection = Initialize-maislurp-client-powershellBounceRecipientProjection  -Id null `
 -Action null `
 -Status null `
 -SentEmailId null `
 -CreatedAt null `
 -Recipient null
```

- Convert the resource to JSON
```powershell
$BounceRecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

