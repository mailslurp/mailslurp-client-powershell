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

.PARAMETER EmailSyncCount
No description available.
.PARAMETER Logs
No description available.
.PARAMETER EmailIds
No description available.
.OUTPUTS

ConnectorSyncResult<PSCustomObject>
#>

function Initialize-ConnectorSyncResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${EmailSyncCount},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Logs},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EmailIds}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConnectorSyncResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($EmailSyncCount -eq $null) {
            throw "invalid value for 'EmailSyncCount', 'EmailSyncCount' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "emailSyncCount" = ${EmailSyncCount}
            "logs" = ${Logs}
            "emailIds" = ${EmailIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorSyncResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorSyncResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorSyncResult<PSCustomObject>
#>
function ConvertFrom-JsonToConnectorSyncResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConnectorSyncResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectorSyncResult
        $AllProperties = ("emailSyncCount", "logs", "emailIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'emailSyncCount' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailSyncCount"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailSyncCount' missing."
        } else {
            $EmailSyncCount = $JsonParameters.PSobject.Properties["emailSyncCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "logs"))) { #optional property not found
            $Logs = $null
        } else {
            $Logs = $JsonParameters.PSobject.Properties["logs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailIds"))) { #optional property not found
            $EmailIds = $null
        } else {
            $EmailIds = $JsonParameters.PSobject.Properties["emailIds"].value
        }

        $PSO = [PSCustomObject]@{
            "emailSyncCount" = ${EmailSyncCount}
            "logs" = ${Logs}
            "emailIds" = ${EmailIds}
        }

        return $PSO
    }

}

