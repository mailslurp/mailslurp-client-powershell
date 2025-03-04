# TrackingPixelProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**SentEmailId** | **String** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Seen** | **Boolean** |  | 
**SeenAt** | **System.DateTime** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TrackingPixelProjection = Initialize-maislurp-client-powershellTrackingPixelProjection  -CreatedAt null `
 -UserId null `
 -InboxId null `
 -SentEmailId null `
 -Recipient null `
 -Seen null `
 -SeenAt null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$TrackingPixelProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

