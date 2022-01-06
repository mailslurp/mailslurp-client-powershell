#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
No description available.
.PARAMETER UserId
No description available.
.PARAMETER Recipient
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.OUTPUTS

BounceRecipient<PSCustomObject>
#>

function Initialize-BounceRecipient {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recipient},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${UpdatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => BounceRecipient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "recipient" = ${Recipient}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BounceRecipient<PSCustomObject>

.DESCRIPTION

Convert from JSON to BounceRecipient<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BounceRecipient<PSCustomObject>
#>
function ConvertFrom-JsonToBounceRecipient {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => BounceRecipient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BounceRecipient
        $AllProperties = ("id", "userId", "recipient", "createdAt", "updatedAt")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) { #optional property not found
            $Recipient = $null
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
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

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "recipient" = ${Recipient}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }

        return $PSO
    }

}

