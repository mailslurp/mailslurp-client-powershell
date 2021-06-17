# SimpleSendEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** | Body of the email message. Supports HTML | [optional] 
**SenderId** | **String** | ID of inbox to send from. If null an inbox will be created for sending | [optional] 
**Subject** | **String** | Subject line of the email | [optional] 
**To** | **String** | Email address to send to | [optional] 

## Examples

- Prepare the resource
```powershell
$SimpleSendEmailOptions = Initialize-maislurp-client-powershellSimpleSendEmailOptions  -Body null `
 -SenderId null `
 -Subject null `
 -To null
```

- Convert the resource to JSON
```powershell
$SimpleSendEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

