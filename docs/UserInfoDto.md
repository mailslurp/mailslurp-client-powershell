# UserInfoDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**AccountState** | **String** |  | 
**SubscriptionType** | **String** |  | [optional] 
**AccountType** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$UserInfoDto = Initialize-maislurp-client-powershellUserInfoDto  -Id null `
 -EmailAddress null `
 -AccountState null `
 -SubscriptionType null `
 -AccountType null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$UserInfoDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

