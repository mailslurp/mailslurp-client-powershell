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

Representation of a guest portal user

.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER UserId
No description available.
.PARAMETER EmailAddress
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER PortalId
No description available.
.PARAMETER Name
No description available.
.PARAMETER Id
No description available.
.PARAMETER Username
No description available.
.OUTPUTS

GuestPortalUserProjection<PSCustomObject>
#>

function Initialize-GuestPortalUserProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PortalId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => GuestPortalUserProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($PortalId -eq $null) {
            throw "invalid value for 'PortalId', 'PortalId' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($Username -eq $null) {
            throw "invalid value for 'Username', 'Username' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "userId" = ${UserId}
            "emailAddress" = ${EmailAddress}
            "inboxId" = ${InboxId}
            "portalId" = ${PortalId}
            "name" = ${Name}
            "id" = ${Id}
            "username" = ${Username}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GuestPortalUserProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to GuestPortalUserProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GuestPortalUserProjection<PSCustomObject>
#>
function ConvertFrom-JsonToGuestPortalUserProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => GuestPortalUserProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GuestPortalUserProjection
        $AllProperties = ("createdAt", "updatedAt", "userId", "emailAddress", "inboxId", "portalId", "name", "id", "username")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "portalId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'portalId' missing."
        } else {
            $PortalId = $JsonParameters.PSobject.Properties["portalId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) {
            throw "Error! JSON cannot be serialized due to the required property 'username' missing."
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "userId" = ${UserId}
            "emailAddress" = ${EmailAddress}
            "inboxId" = ${InboxId}
            "portalId" = ${PortalId}
            "name" = ${Name}
            "id" = ${Id}
            "username" = ${Username}
        }

        return $PSO
    }

}

