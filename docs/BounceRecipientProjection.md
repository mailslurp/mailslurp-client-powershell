# BounceRecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SentEmailId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Recipient** | **String** |  | 
**BounceType** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceRecipientProjection = Initialize-maislurp-client-powershellBounceRecipientProjection  -SentEmailId null `
 -CreatedAt null `
 -Recipient null `
 -BounceType null `
 -Action null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$BounceRecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

