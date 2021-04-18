#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Options for uploading files for attachments. When sending emails with the API that require attachments first upload each attachment. Then use the returned attachment ID in your `SendEmailOptions` when sending an email. This way you can use attachments multiple times once they have been uploaded.

.PARAMETER Base64Contents
Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string.
.PARAMETER ContentType
Optional contentType for file. For instance `application/pdf`
.PARAMETER Filename
Optional filename to save upload with. Will be the name that is shown in email clients
.OUTPUTS

UploadAttachmentOptions<PSCustomObject>
#>

function Initialize-UploadAttachmentOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Base64Contents},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filename}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => UploadAttachmentOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "base64Contents" = ${Base64Contents}
            "contentType" = ${ContentType}
            "filename" = ${Filename}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UploadAttachmentOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to UploadAttachmentOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UploadAttachmentOptions<PSCustomObject>
#>
function ConvertFrom-JsonToUploadAttachmentOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => UploadAttachmentOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UploadAttachmentOptions
        $AllProperties = ("base64Contents", "contentType", "filename")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "base64Contents"))) { #optional property not found
            $Base64Contents = $null
        } else {
            $Base64Contents = $JsonParameters.PSobject.Properties["base64Contents"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentType"))) { #optional property not found
            $ContentType = $null
        } else {
            $ContentType = $JsonParameters.PSobject.Properties["contentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["filename"].value
        }

        $PSO = [PSCustomObject]@{
            "base64Contents" = ${Base64Contents}
            "contentType" = ${ContentType}
            "filename" = ${Filename}
        }

        return $PSO
    }

}

