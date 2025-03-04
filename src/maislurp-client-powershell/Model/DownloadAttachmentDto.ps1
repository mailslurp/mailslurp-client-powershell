#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Content of attachment

.PARAMETER Base64FileContents
Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as `text/html` you can read the contents directly by converting it to string using `utf-8` encoding.
.PARAMETER ContentType
Content type of attachment. Examples are `image/png`, `application/msword`, `text/csv` etc.
.PARAMETER SizeBytes
Size in bytes of attachment content
.OUTPUTS

DownloadAttachmentDto<PSCustomObject>
#>

function Initialize-DownloadAttachmentDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Base64FileContents},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${SizeBytes}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DownloadAttachmentDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Base64FileContents -eq $null) {
            throw "invalid value for 'Base64FileContents', 'Base64FileContents' cannot be null."
        }

        if ($ContentType -eq $null) {
            throw "invalid value for 'ContentType', 'ContentType' cannot be null."
        }

        if ($SizeBytes -eq $null) {
            throw "invalid value for 'SizeBytes', 'SizeBytes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "base64FileContents" = ${Base64FileContents}
            "contentType" = ${ContentType}
            "sizeBytes" = ${SizeBytes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DownloadAttachmentDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to DownloadAttachmentDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DownloadAttachmentDto<PSCustomObject>
#>
function ConvertFrom-JsonToDownloadAttachmentDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DownloadAttachmentDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DownloadAttachmentDto
        $AllProperties = ("base64FileContents", "contentType", "sizeBytes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'base64FileContents' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "base64FileContents"))) {
            throw "Error! JSON cannot be serialized due to the required property 'base64FileContents' missing."
        } else {
            $Base64FileContents = $JsonParameters.PSobject.Properties["base64FileContents"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contentType' missing."
        } else {
            $ContentType = $JsonParameters.PSobject.Properties["contentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sizeBytes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sizeBytes' missing."
        } else {
            $SizeBytes = $JsonParameters.PSobject.Properties["sizeBytes"].value
        }

        $PSO = [PSCustomObject]@{
            "base64FileContents" = ${Base64FileContents}
            "contentType" = ${ContentType}
            "sizeBytes" = ${SizeBytes}
        }

        return $PSO
    }

}

