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

Options for generating structured content output from an attachment

.PARAMETER AttachmentId
Attachment ID to read and pass to AI
.PARAMETER Instructions
Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints.
.PARAMETER OutputSchema
No description available.
.OUTPUTS

GenerateStructuredContentAttachmentOptions<PSCustomObject>
#>

function Initialize-GenerateStructuredContentAttachmentOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttachmentId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Instructions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OutputSchema}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => GenerateStructuredContentAttachmentOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($AttachmentId -eq $null) {
            throw "invalid value for 'AttachmentId', 'AttachmentId' cannot be null."
        }

        if ($OutputSchema -eq $null) {
            throw "invalid value for 'OutputSchema', 'OutputSchema' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "attachmentId" = ${AttachmentId}
            "instructions" = ${Instructions}
            "outputSchema" = ${OutputSchema}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GenerateStructuredContentAttachmentOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to GenerateStructuredContentAttachmentOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GenerateStructuredContentAttachmentOptions<PSCustomObject>
#>
function ConvertFrom-JsonToGenerateStructuredContentAttachmentOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => GenerateStructuredContentAttachmentOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GenerateStructuredContentAttachmentOptions
        $AllProperties = ("attachmentId", "instructions", "outputSchema")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'attachmentId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachmentId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attachmentId' missing."
        } else {
            $AttachmentId = $JsonParameters.PSobject.Properties["attachmentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputSchema"))) {
            throw "Error! JSON cannot be serialized due to the required property 'outputSchema' missing."
        } else {
            $OutputSchema = $JsonParameters.PSobject.Properties["outputSchema"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "instructions"))) { #optional property not found
            $Instructions = $null
        } else {
            $Instructions = $JsonParameters.PSobject.Properties["instructions"].value
        }

        $PSO = [PSCustomObject]@{
            "attachmentId" = ${AttachmentId}
            "instructions" = ${Instructions}
            "outputSchema" = ${OutputSchema}
        }

        return $PSO
    }

}

