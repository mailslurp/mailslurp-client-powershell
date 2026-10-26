# AutomatedInboxPlacementConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Provider** | **String** |  | 
**FromEmail** | **String** |  | 
**SmtpHost** | **String** |  | [optional] 
**SmtpPort** | **Int32** |  | [optional] 
**SmtpSecurity** | **String** |  | [optional] 
**UsernameHint** | **String** |  | [optional] 
**Status** | **String** |  | 
**LastVerifiedAt** | **System.DateTime** |  | [optional] 
**LastErrorCode** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AutomatedInboxPlacementConnectionDto = Initialize-maislurp-client-powershellAutomatedInboxPlacementConnectionDto  -Id null `
 -Name null `
 -Provider null `
 -FromEmail null `
 -SmtpHost null `
 -SmtpPort null `
 -SmtpSecurity null `
 -UsernameHint null `
 -Status null `
 -LastVerifiedAt null `
 -LastErrorCode null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AutomatedInboxPlacementConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

