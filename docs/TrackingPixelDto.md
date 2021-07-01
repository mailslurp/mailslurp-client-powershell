# TrackingPixelDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Html** | **String** |  | 
**Id** | **String** |  | 
**Recipient** | **String** |  | [optional] 
**Seen** | **Boolean** |  | 
**Url** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TrackingPixelDto = Initialize-maislurp-client-powershellTrackingPixelDto  -Html null `
 -Id null `
 -Recipient null `
 -Seen null `
 -Url null
```

- Convert the resource to JSON
```powershell
$TrackingPixelDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

