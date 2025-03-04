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

Optional warnings resulting from HTML validation

.PARAMETER LineNumber
No description available.
.PARAMETER Message
No description available.
.OUTPUTS

ValidationMessage<PSCustomObject>
#>

function Initialize-ValidationMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${LineNumber},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ValidationMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($LineNumber -eq $null) {
            throw "invalid value for 'LineNumber', 'LineNumber' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "lineNumber" = ${LineNumber}
            "message" = ${Message}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidationMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidationMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidationMessage<PSCustomObject>
#>
function ConvertFrom-JsonToValidationMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ValidationMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ValidationMessage
        $AllProperties = ("lineNumber", "message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'lineNumber' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lineNumber"))) {
            throw "Error! JSON cannot be serialized due to the required property 'lineNumber' missing."
        } else {
            $LineNumber = $JsonParameters.PSobject.Properties["lineNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "lineNumber" = ${LineNumber}
            "message" = ${Message}
        }

        return $PSO
    }

}

