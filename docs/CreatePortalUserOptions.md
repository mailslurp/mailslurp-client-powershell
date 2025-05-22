# CreatePortalUserOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**SkipInboxCreation** | **Boolean** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**CreateInboxOptions** | [**CreateInboxDto**](CreateInboxDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePortalUserOptions = Initialize-maislurp-client-powershellCreatePortalUserOptions  -Password null `
 -Name null `
 -Username null `
 -SkipInboxCreation null `
 -InboxId null `
 -CreateInboxOptions null
```

- Convert the resource to JSON
```powershell
$CreatePortalUserOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

