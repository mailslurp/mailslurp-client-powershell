# maislurp-client-powershell.maislurp-client-powershell/Api.FormControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Submit-Form**](FormControllerApi#Submit-Form) | **POST** /forms | Submit a form to be parsed and sent as an email to an address determined by the form fields


<a name="Submit-Form"></a>
# **Submit-Form**
> String Submit-Form<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Subject] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RedirectTo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SuccessMessage] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SpamCheck] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OtherParameters] <String><br>

Submit a form to be parsed and sent as an email to an address determined by the form fields

This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=""https://api.mailslurp.com/forms""   method=""post"" >   <input name=""_to"" type=""hidden"" value=""test@example.com""/>   <textarea name=""feedback""></textarea>   <button type=""submit"">Submit</button> </form> ```  #### URL Example ```html <form    action=""https://api.mailslurp.com/forms?_to=test@example.com""   method=""post"" >   <textarea name=""feedback""></textarea>   <button type=""submit"">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=""multipart/form-data"">`.  

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$To = "To_example" # String | The email address that submitted form should be sent to. (optional)
$Subject = "Subject_example" # String | Optional subject of the email that will be sent. (optional)
$RedirectTo = "RedirectTo_example" # String | Optional URL to redirect form submitter to after submission. If not present user will see a success message. (optional)
$EmailAddress = "EmailAddress_example" # String | Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. (optional)
$SuccessMessage = "SuccessMessage_example" # String | Optional success message to display if no _redirectTo present. (optional)
$SpamCheck = "SpamCheck_example" # String | Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. (optional)
$OtherParameters = "OtherParameters_example" # String | All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. (optional)

# Submit a form to be parsed and sent as an email to an address determined by the form fields
try {
     $Result = Submit-Form -To $To -Subject $Subject -RedirectTo $RedirectTo -EmailAddress $EmailAddress -SuccessMessage $SuccessMessage -SpamCheck $SpamCheck -OtherParameters $OtherParameters
} catch {
    Write-Host ("Exception occured when calling Submit-Form: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **To** | **String**| The email address that submitted form should be sent to. | [optional] 
 **Subject** | **String**| Optional subject of the email that will be sent. | [optional] 
 **RedirectTo** | **String**| Optional URL to redirect form submitter to after submission. If not present user will see a success message. | [optional] 
 **EmailAddress** | **String**| Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. | [optional] 
 **SuccessMessage** | **String**| Optional success message to display if no _redirectTo present. | [optional] 
 **SpamCheck** | **String**| Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. | [optional] 
 **OtherParameters** | **String**| All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

