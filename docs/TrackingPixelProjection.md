# TrackingPixelProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Seen** | **Boolean** |  | 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TrackingPixelProjection = Initialize-maislurp-client-powershellTrackingPixelProjection  -CreatedAt null `
 -Id null `
 -Name null `
 -Seen null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$TrackingPixelProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

