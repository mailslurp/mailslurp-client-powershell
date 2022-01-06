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

Email alias representation

.PARAMETER Id
No description available.
.PARAMETER EmailAddress
The alias's email address for receiving email
.PARAMETER MaskedEmailAddress
The underlying email address that is hidden and will received forwarded email
.PARAMETER UserId
No description available.
.PARAMETER InboxId
Inbox that is associated with the alias
.PARAMETER Name
No description available.
.PARAMETER UseThreads
If alias will generate response threads or not when email are received by it
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER Verified
No description available.
.OUTPUTS

AliasDto<PSCustomObject>
#>

function Initialize-AliasDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MaskedEmailAddress},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseThreads},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${UpdatedAt},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Verified}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => AliasDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "emailAddress" = ${EmailAddress}
            "maskedEmailAddress" = ${MaskedEmailAddress}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "name" = ${Name}
            "useThreads" = ${UseThreads}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "verified" = ${Verified}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AliasDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to AliasDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AliasDto<PSCustomObject>
#>
function ConvertFrom-JsonToAliasDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => AliasDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AliasDto
        $AllProperties = ("id", "emailAddress", "maskedEmailAddress", "userId", "inboxId", "name", "useThreads", "createdAt", "updatedAt", "verified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maskedEmailAddress"))) { #optional property not found
            $MaskedEmailAddress = $null
        } else {
            $MaskedEmailAddress = $JsonParameters.PSobject.Properties["maskedEmailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useThreads"))) { #optional property not found
            $UseThreads = $null
        } else {
            $UseThreads = $JsonParameters.PSobject.Properties["useThreads"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) { #optional property not found
            $UpdatedAt = $null
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "verified"))) { #optional property not found
            $Verified = $null
        } else {
            $Verified = $JsonParameters.PSobject.Properties["verified"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "emailAddress" = ${EmailAddress}
            "maskedEmailAddress" = ${MaskedEmailAddress}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "name" = ${Name}
            "useThreads" = ${UseThreads}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "verified" = ${Verified}
        }

        return $PSO
    }

}

