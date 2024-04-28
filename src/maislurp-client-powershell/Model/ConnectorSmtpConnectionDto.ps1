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

.PARAMETER ConnectorId
No description available.
.PARAMETER SmtpHost
No description available.
.PARAMETER SmtpPort
No description available.
.PARAMETER SmtpUsername
No description available.
.PARAMETER SmtpPassword
No description available.
.PARAMETER SmtpSsl
No description available.
.PARAMETER Enabled
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER Id
No description available.
.OUTPUTS

ConnectorSmtpConnectionDto<PSCustomObject>
#>

function Initialize-ConnectorSmtpConnectionDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpHost},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${SmtpPort},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpUsername},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpPassword},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SmtpSsl},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConnectorSmtpConnectionDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($ConnectorId -eq $null) {
            throw "invalid value for 'ConnectorId', 'ConnectorId' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "connectorId" = ${ConnectorId}
            "smtpHost" = ${SmtpHost}
            "smtpPort" = ${SmtpPort}
            "smtpUsername" = ${SmtpUsername}
            "smtpPassword" = ${SmtpPassword}
            "smtpSsl" = ${SmtpSsl}
            "enabled" = ${Enabled}
            "createdAt" = ${CreatedAt}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorSmtpConnectionDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorSmtpConnectionDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorSmtpConnectionDto<PSCustomObject>
#>
function ConvertFrom-JsonToConnectorSmtpConnectionDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConnectorSmtpConnectionDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectorSmtpConnectionDto
        $AllProperties = ("connectorId", "smtpHost", "smtpPort", "smtpUsername", "smtpPassword", "smtpSsl", "enabled", "createdAt", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'connectorId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'connectorId' missing."
        } else {
            $ConnectorId = $JsonParameters.PSobject.Properties["connectorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpHost"))) { #optional property not found
            $SmtpHost = $null
        } else {
            $SmtpHost = $JsonParameters.PSobject.Properties["smtpHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpPort"))) { #optional property not found
            $SmtpPort = $null
        } else {
            $SmtpPort = $JsonParameters.PSobject.Properties["smtpPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpUsername"))) { #optional property not found
            $SmtpUsername = $null
        } else {
            $SmtpUsername = $JsonParameters.PSobject.Properties["smtpUsername"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpPassword"))) { #optional property not found
            $SmtpPassword = $null
        } else {
            $SmtpPassword = $JsonParameters.PSobject.Properties["smtpPassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpSsl"))) { #optional property not found
            $SmtpSsl = $null
        } else {
            $SmtpSsl = $JsonParameters.PSobject.Properties["smtpSsl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        $PSO = [PSCustomObject]@{
            "connectorId" = ${ConnectorId}
            "smtpHost" = ${SmtpHost}
            "smtpPort" = ${SmtpPort}
            "smtpUsername" = ${SmtpUsername}
            "smtpPassword" = ${SmtpPassword}
            "smtpSsl" = ${SmtpSsl}
            "enabled" = ${Enabled}
            "createdAt" = ${CreatedAt}
            "id" = ${Id}
        }

        return $PSO
    }

}
