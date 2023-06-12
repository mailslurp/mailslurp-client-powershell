#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Cause
No description available.
.PARAMETER VarStackTrace
No description available.
.PARAMETER Message
No description available.
.PARAMETER Suppressed
No description available.
.PARAMETER LocalizedMessage
No description available.
.OUTPUTS

ConnectorSyncRequestResultException<PSCustomObject>
#>

function Initialize-ConnectorSyncRequestResultException {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cause},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VarStackTrace},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Suppressed},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocalizedMessage}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConnectorSyncRequestResultException' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "cause" = ${Cause}
            "stackTrace" = ${VarStackTrace}
            "message" = ${Message}
            "suppressed" = ${Suppressed}
            "localizedMessage" = ${LocalizedMessage}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorSyncRequestResultException<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorSyncRequestResultException<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorSyncRequestResultException<PSCustomObject>
#>
function ConvertFrom-JsonToConnectorSyncRequestResultException {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConnectorSyncRequestResultException' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectorSyncRequestResultException
        $AllProperties = ("cause", "stackTrace", "message", "suppressed", "localizedMessage")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cause"))) { #optional property not found
            $Cause = $null
        } else {
            $Cause = $JsonParameters.PSobject.Properties["cause"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stackTrace"))) { #optional property not found
            $VarStackTrace = $null
        } else {
            $VarStackTrace = $JsonParameters.PSobject.Properties["stackTrace"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "suppressed"))) { #optional property not found
            $Suppressed = $null
        } else {
            $Suppressed = $JsonParameters.PSobject.Properties["suppressed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localizedMessage"))) { #optional property not found
            $LocalizedMessage = $null
        } else {
            $LocalizedMessage = $JsonParameters.PSobject.Properties["localizedMessage"].value
        }

        $PSO = [PSCustomObject]@{
            "cause" = ${Cause}
            "stackTrace" = ${VarStackTrace}
            "message" = ${Message}
            "suppressed" = ${Suppressed}
            "localizedMessage" = ${LocalizedMessage}
        }

        return $PSO
    }

}
