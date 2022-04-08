#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER SenderId
ID of inbox to send from. If null an inbox will be created for sending
.PARAMETER To
Email address to send to
.PARAMETER Body
Body of the email message. Supports HTML
.PARAMETER Subject
Subject line of the email
.OUTPUTS

SimpleSendEmailOptions<PSCustomObject>
#>

function Initialize-SimpleSendEmailOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SenderId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${To},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => SimpleSendEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($To -eq $null) {
            throw "invalid value for 'To', 'To' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "senderId" = ${SenderId}
            "to" = ${To}
            "body" = ${Body}
            "subject" = ${Subject}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SimpleSendEmailOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to SimpleSendEmailOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SimpleSendEmailOptions<PSCustomObject>
#>
function ConvertFrom-JsonToSimpleSendEmailOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => SimpleSendEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SimpleSendEmailOptions
        $AllProperties = ("senderId", "to", "body", "subject")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'to' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) {
            throw "Error! JSON cannot be serialized due to the required property 'to' missing."
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "senderId"))) { #optional property not found
            $SenderId = $null
        } else {
            $SenderId = $JsonParameters.PSobject.Properties["senderId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        $PSO = [PSCustomObject]@{
            "senderId" = ${SenderId}
            "to" = ${To}
            "body" = ${Body}
            "subject" = ${Subject}
        }

        return $PSO
    }

}

