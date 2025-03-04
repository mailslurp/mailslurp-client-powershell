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

Options for creating an inbox forwarder

.PARAMETER Field
Field to match against to trigger inbox forwarding for inbound email
.PARAMETER Match
String or wildcard style match for field specified when evaluating forwarding rules
.PARAMETER ForwardToRecipients
Email addresses to forward an email to if it matches the field and match criteria of the forwarder
.OUTPUTS

CreateInboxForwarderOptions<PSCustomObject>
#>

function Initialize-CreateInboxForwarderOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("RECIPIENTS", "SENDER", "SUBJECT", "ATTACHMENTS")]
        [String]
        ${Field},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Match},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ForwardToRecipients}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => CreateInboxForwarderOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Field -eq $null) {
            throw "invalid value for 'Field', 'Field' cannot be null."
        }

        if ($Match -eq $null) {
            throw "invalid value for 'Match', 'Match' cannot be null."
        }

        if ($ForwardToRecipients -eq $null) {
            throw "invalid value for 'ForwardToRecipients', 'ForwardToRecipients' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "field" = ${Field}
            "match" = ${Match}
            "forwardToRecipients" = ${ForwardToRecipients}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateInboxForwarderOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateInboxForwarderOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateInboxForwarderOptions<PSCustomObject>
#>
function ConvertFrom-JsonToCreateInboxForwarderOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => CreateInboxForwarderOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateInboxForwarderOptions
        $AllProperties = ("field", "match", "forwardToRecipients")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'field' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "field"))) {
            throw "Error! JSON cannot be serialized due to the required property 'field' missing."
        } else {
            $Field = $JsonParameters.PSobject.Properties["field"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "match"))) {
            throw "Error! JSON cannot be serialized due to the required property 'match' missing."
        } else {
            $Match = $JsonParameters.PSobject.Properties["match"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forwardToRecipients"))) {
            throw "Error! JSON cannot be serialized due to the required property 'forwardToRecipients' missing."
        } else {
            $ForwardToRecipients = $JsonParameters.PSobject.Properties["forwardToRecipients"].value
        }

        $PSO = [PSCustomObject]@{
            "field" = ${Field}
            "match" = ${Match}
            "forwardToRecipients" = ${ForwardToRecipients}
        }

        return $PSO
    }

}

