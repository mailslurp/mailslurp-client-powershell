# TrackingPixelProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Recipient** | **String** |  | [optional] 
**Seen** | **Boolean** |  | 
**SeenAt** | **System.DateTime** |  | [optional] 
**SentEmailId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TrackingPixelProjection = Initialize-maislurp-client-powershellTrackingPixelProjection  -Name null `
 -Id null `
 -InboxId null `
 -UserId null `
 -CreatedAt null `
 -Recipient null `
 -Seen null `
 -SeenAt null `
 -SentEmailId null
```

- Convert the resource to JSON
```powershell
$TrackingPixelProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

