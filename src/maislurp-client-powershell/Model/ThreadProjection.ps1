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

A thread is a message thread created for a message received by an alias

.PARAMETER Name
No description available.
.PARAMETER Id
No description available.
.PARAMETER Subject
No description available.
.PARAMETER UserId
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER To
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER Bcc
No description available.
.PARAMETER Cc
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER AliasId
No description available.
.OUTPUTS

ThreadProjection<PSCustomObject>
#>

function Initialize-ThreadProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AliasId}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ThreadProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($InboxId -eq $null) {
            throw "invalid value for 'InboxId', 'InboxId' cannot be null."
        }

        if ($To -eq $null) {
            throw "invalid value for 'To', 'To' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($AliasId -eq $null) {
            throw "invalid value for 'AliasId', 'AliasId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "subject" = ${Subject}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "to" = ${To}
            "createdAt" = ${CreatedAt}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "updatedAt" = ${UpdatedAt}
            "aliasId" = ${AliasId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ThreadProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to ThreadProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ThreadProjection<PSCustomObject>
#>
function ConvertFrom-JsonToThreadProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ThreadProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ThreadProjection
        $AllProperties = ("name", "id", "subject", "userId", "inboxId", "to", "createdAt", "bcc", "cc", "updatedAt", "aliasId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxId' missing."
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) {
            throw "Error! JSON cannot be serialized due to the required property 'to' missing."
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aliasId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'aliasId' missing."
        } else {
            $AliasId = $JsonParameters.PSobject.Properties["aliasId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bcc"))) { #optional property not found
            $Bcc = $null
        } else {
            $Bcc = $JsonParameters.PSobject.Properties["bcc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cc"))) { #optional property not found
            $Cc = $null
        } else {
            $Cc = $JsonParameters.PSobject.Properties["cc"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "subject" = ${Subject}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "to" = ${To}
            "createdAt" = ${CreatedAt}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "updatedAt" = ${UpdatedAt}
            "aliasId" = ${AliasId}
        }

        return $PSO
    }

}

