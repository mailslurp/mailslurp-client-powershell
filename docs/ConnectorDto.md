# ConnectorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**SyncEnabled** | **Boolean** |  | 
**SyncScheduleType** | **String** |  | [optional] 
**SyncInterval** | **Int32** |  | [optional] 
**HasImapConnection** | **Boolean** |  | 
**HasSmtpConnection** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorDto = Initialize-maislurp-client-powershellConnectorDto  -Id null `
 -Name null `
 -Enabled null `
 -UserId null `
 -InboxId null `
 -SyncEnabled null `
 -SyncScheduleType null `
 -SyncInterval null `
 -HasImapConnection null `
 -HasSmtpConnection null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$ConnectorDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

