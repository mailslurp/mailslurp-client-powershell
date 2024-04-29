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

Connector

.PARAMETER CreatedAt
No description available.
.PARAMETER Enabled
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER UserId
No description available.
.PARAMETER EmailAddress
No description available.
.PARAMETER SyncEnabled
No description available.
.PARAMETER SyncScheduleType
No description available.
.PARAMETER SyncInterval
No description available.
.PARAMETER Name
No description available.
.PARAMETER Id
No description available.
.OUTPUTS

ConnectorProjection<PSCustomObject>
#>

function Initialize-ConnectorProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SyncEnabled},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INTERVAL")]
        [String]
        ${SyncScheduleType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${SyncInterval},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConnectorProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($InboxId -eq $null) {
            throw "invalid value for 'InboxId', 'InboxId' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($SyncScheduleType -eq $null) {
            throw "invalid value for 'SyncScheduleType', 'SyncScheduleType' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "enabled" = ${Enabled}
            "inboxId" = ${InboxId}
            "userId" = ${UserId}
            "emailAddress" = ${EmailAddress}
            "syncEnabled" = ${SyncEnabled}
            "syncScheduleType" = ${SyncScheduleType}
            "syncInterval" = ${SyncInterval}
            "name" = ${Name}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorProjection<PSCustomObject>
#>
function ConvertFrom-JsonToConnectorProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConnectorProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectorProjection
        $AllProperties = ("createdAt", "enabled", "inboxId", "userId", "emailAddress", "syncEnabled", "syncScheduleType", "syncInterval", "name", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'createdAt' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxId' missing."
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "syncScheduleType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'syncScheduleType' missing."
        } else {
            $SyncScheduleType = $JsonParameters.PSobject.Properties["syncScheduleType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "syncEnabled"))) { #optional property not found
            $SyncEnabled = $null
        } else {
            $SyncEnabled = $JsonParameters.PSobject.Properties["syncEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "syncInterval"))) { #optional property not found
            $SyncInterval = $null
        } else {
            $SyncInterval = $JsonParameters.PSobject.Properties["syncInterval"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "enabled" = ${Enabled}
            "inboxId" = ${InboxId}
            "userId" = ${UserId}
            "emailAddress" = ${EmailAddress}
            "syncEnabled" = ${SyncEnabled}
            "syncScheduleType" = ${SyncScheduleType}
            "syncInterval" = ${SyncInterval}
            "name" = ${Name}
            "id" = ${Id}
        }

        return $PSO
    }

}

