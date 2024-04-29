# TrackingPixelProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SentEmailId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Seen** | **Boolean** |  | 
**SeenAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TrackingPixelProjection = Initialize-maislurp-client-powershellTrackingPixelProjection  -SentEmailId null `
 -UserId null `
 -InboxId null `
 -Recipient null `
 -Seen null `
 -SeenAt null `
 -CreatedAt null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$TrackingPixelProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

