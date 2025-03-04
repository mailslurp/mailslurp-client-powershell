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

No description available.

.PARAMETER VarError
No description available.
.PARAMETER Success
No description available.
.PARAMETER Message
No description available.
.PARAMETER Logs
No description available.
.OUTPUTS

ConnectorSmtpConnectionTestResult<PSCustomObject>
#>

function Initialize-ConnectorSmtpConnectionTestResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarError},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Success},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Logs}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConnectorSmtpConnectionTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Success -eq $null) {
            throw "invalid value for 'Success', 'Success' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "error" = ${VarError}
            "success" = ${Success}
            "message" = ${Message}
            "logs" = ${Logs}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorSmtpConnectionTestResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorSmtpConnectionTestResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorSmtpConnectionTestResult<PSCustomObject>
#>
function ConvertFrom-JsonToConnectorSmtpConnectionTestResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConnectorSmtpConnectionTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectorSmtpConnectionTestResult
        $AllProperties = ("error", "success", "message", "logs")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'success' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "success"))) {
            throw "Error! JSON cannot be serialized due to the required property 'success' missing."
        } else {
            $Success = $JsonParameters.PSobject.Properties["success"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["error"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "logs"))) { #optional property not found
            $Logs = $null
        } else {
            $Logs = $JsonParameters.PSobject.Properties["logs"].value
        }

        $PSO = [PSCustomObject]@{
            "error" = ${VarError}
            "success" = ${Success}
            "message" = ${Message}
            "logs" = ${Logs}
        }

        return $PSO
    }

}

