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

.PARAMETER Id
No description available.
.PARAMETER ConnectorId
No description available.
.PARAMETER SyncStatus
No description available.
.PARAMETER SyncCount
No description available.
.PARAMETER Message
No description available.
.PARAMETER CreatedAt
No description available.
.OUTPUTS

ConnectorSyncEventDto<PSCustomObject>
#>

function Initialize-ConnectorSyncEventDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "INTERNAL_ERROR", "SUBSCRIPTION_ERROR", "CONNECTION_ERROR", "NOT_FOUND")]
        [String]
        ${SyncStatus},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${SyncCount},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConnectorSyncEventDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($ConnectorId -eq $null) {
            throw "invalid value for 'ConnectorId', 'ConnectorId' cannot be null."
        }

        if ($SyncStatus -eq $null) {
            throw "invalid value for 'SyncStatus', 'SyncStatus' cannot be null."
        }

        if ($SyncCount -eq $null) {
            throw "invalid value for 'SyncCount', 'SyncCount' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "connectorId" = ${ConnectorId}
            "syncStatus" = ${SyncStatus}
            "syncCount" = ${SyncCount}
            "message" = ${Message}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorSyncEventDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorSyncEventDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorSyncEventDto<PSCustomObject>
#>
function ConvertFrom-JsonToConnectorSyncEventDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConnectorSyncEventDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectorSyncEventDto
        $AllProperties = ("id", "connectorId", "syncStatus", "syncCount", "message", "createdAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'connectorId' missing."
        } else {
            $ConnectorId = $JsonParameters.PSobject.Properties["connectorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "syncStatus"))) {
            throw "Error! JSON cannot be serialized due to the required property 'syncStatus' missing."
        } else {
            $SyncStatus = $JsonParameters.PSobject.Properties["syncStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "syncCount"))) {
            throw "Error! JSON cannot be serialized due to the required property 'syncCount' missing."
        } else {
            $SyncCount = $JsonParameters.PSobject.Properties["syncCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "connectorId" = ${ConnectorId}
            "syncStatus" = ${SyncStatus}
            "syncCount" = ${SyncCount}
            "message" = ${Message}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

