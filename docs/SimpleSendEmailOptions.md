# SimpleSendEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SenderId** | **String** | ID of inbox to send from. If null an inbox will be created for sending | [optional] 
**To** | **String** | Email address to send to | 
**Body** | **String** | Body of the email message. Supports HTML | [optional] 
**Subject** | **String** | Subject line of the email | [optional] 

## Examples

- Prepare the resource
```powershell
$SimpleSendEmailOptions = Initialize-maislurp-client-powershellSimpleSendEmailOptions  -SenderId null `
 -To null `
 -Body null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$SimpleSendEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

