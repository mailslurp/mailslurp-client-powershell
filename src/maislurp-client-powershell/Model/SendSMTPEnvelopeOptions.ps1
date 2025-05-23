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

Options for the email envelope

.PARAMETER RcptTo
No description available.
.PARAMETER MailFrom
No description available.
.PARAMETER VarData
No description available.
.OUTPUTS

SendSMTPEnvelopeOptions<PSCustomObject>
#>

function Initialize-SendSMTPEnvelopeOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RcptTo},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MailFrom},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarData}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => SendSMTPEnvelopeOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($RcptTo -eq $null) {
            throw "invalid value for 'RcptTo', 'RcptTo' cannot be null."
        }

        if ($MailFrom -eq $null) {
            throw "invalid value for 'MailFrom', 'MailFrom' cannot be null."
        }

        if ($VarData -eq $null) {
            throw "invalid value for 'VarData', 'VarData' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "rcptTo" = ${RcptTo}
            "mailFrom" = ${MailFrom}
            "data" = ${VarData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SendSMTPEnvelopeOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to SendSMTPEnvelopeOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SendSMTPEnvelopeOptions<PSCustomObject>
#>
function ConvertFrom-JsonToSendSMTPEnvelopeOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => SendSMTPEnvelopeOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SendSMTPEnvelopeOptions
        $AllProperties = ("rcptTo", "mailFrom", "data")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'rcptTo' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rcptTo"))) {
            throw "Error! JSON cannot be serialized due to the required property 'rcptTo' missing."
        } else {
            $RcptTo = $JsonParameters.PSobject.Properties["rcptTo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailFrom"))) {
            throw "Error! JSON cannot be serialized due to the required property 'mailFrom' missing."
        } else {
            $MailFrom = $JsonParameters.PSobject.Properties["mailFrom"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) {
            throw "Error! JSON cannot be serialized due to the required property 'data' missing."
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        $PSO = [PSCustomObject]@{
            "rcptTo" = ${RcptTo}
            "mailFrom" = ${MailFrom}
            "data" = ${VarData}
        }

        return $PSO
    }

}

