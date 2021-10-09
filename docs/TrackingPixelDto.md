# TrackingPixelDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Html** | **String** |  | 
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Seen** | **Boolean** |  | 
**SeenAt** | **System.DateTime** |  | [optional] 
**SentEmailId** | **String** |  | [optional] 
**Url** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TrackingPixelDto = Initialize-maislurp-client-powershellTrackingPixelDto  -CreatedAt null `
 -Html null `
 -Id null `
 -InboxId null `
 -Recipient null `
 -Seen null `
 -SeenAt null `
 -SentEmailId null `
 -Url null
```

- Convert the resource to JSON
```powershell
$TrackingPixelDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

