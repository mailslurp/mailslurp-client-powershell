# maislurp-client-powershell.maislurp-client-powershell/Api.AttachmentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-UploadAttachment**](AttachmentControllerApi#Invoke-UploadAttachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**Invoke-UploadAttachmentBytes**](AttachmentControllerApi#Invoke-UploadAttachmentBytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**Invoke-UploadMultipartForm**](AttachmentControllerApi#Invoke-UploadMultipartForm) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


<a name="Invoke-UploadAttachment"></a>
# **Invoke-UploadAttachment**
> String[] Invoke-UploadAttachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UploadOptions] <PSCustomObject><br>

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$UploadOptions = (Initialize-UploadAttachmentOptions -Base64Contents "Base64Contents_example" -ContentType "ContentType_example" -Filename "Filename_example") # UploadAttachmentOptions | uploadOptions

# Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
try {
     $Result = Invoke-UploadAttachment -UploadOptions $UploadOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-UploadAttachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UploadOptions** | [**UploadAttachmentOptions**](UploadAttachmentOptions)| uploadOptions | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-UploadAttachmentBytes"></a>
# **Invoke-UploadAttachmentBytes**
> String[] Invoke-UploadAttachmentBytes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-String] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filename] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ByteArray] <System.Nullable[SystemByte]><br>

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$String = "String_example" # String | Optional contentType for file. For instance `application/pdf` (optional)
$Filename = "Filename_example" # String | Optional filename to save upload with (optional)
$ByteArray = TODO # SystemByte | Byte array request body (optional)

# Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
try {
     $Result = Invoke-UploadAttachmentBytes -String $String -Filename $Filename -ByteArray $ByteArray
} catch {
    Write-Host ("Exception occured when calling Invoke-UploadAttachmentBytes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **String** | **String**| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **Filename** | **String**| Optional filename to save upload with | [optional] 
 **ByteArray** | **SystemByte**| Byte array request body | [optional] 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-UploadMultipartForm"></a>
# **Invoke-UploadMultipartForm**
> String[] Invoke-UploadMultipartForm<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filename] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XFilename] <String><br>

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$File = 987 # System.IO.FileInfo | file
$ContentType = "ContentType_example" # String | Optional content type of attachment (optional)
$Filename = "Filename_example" # String | Optional name of file (optional)
$XFilename = "XFilename_example" # String | Optional content type header of attachment (optional)

# Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
try {
     $Result = Invoke-UploadMultipartForm -File $File -ContentType $ContentType -Filename $Filename -XFilename $XFilename
} catch {
    Write-Host ("Exception occured when calling Invoke-UploadMultipartForm: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| file | 
 **ContentType** | **String**| Optional content type of attachment | [optional] 
 **Filename** | **String**| Optional name of file | [optional] 
 **XFilename** | **String**| Optional content type header of attachment | [optional] 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
**String[]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

