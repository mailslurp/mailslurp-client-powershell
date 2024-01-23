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
.PARAMETER EmailAddress
No description available.
.PARAMETER AccountState
No description available.
.PARAMETER SubscriptionType
No description available.
.PARAMETER AccountType
No description available.
.PARAMETER CreatedAt
No description available.
.OUTPUTS

UserInfoDto<PSCustomObject>
#>

function Initialize-UserInfoDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("FROZEN", "ACTIVE")]
        [String]
        ${AccountState},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PRO_MONTHLY", "STARTER", "TEAM", "ENTERPRISE")]
        [String]
        ${SubscriptionType},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SOLO", "CHILD_SOLO", "CHILD_TEAM", "CHILD_ADMIN")]
        [String]
        ${AccountType},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => UserInfoDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($EmailAddress -eq $null) {
            throw "invalid value for 'EmailAddress', 'EmailAddress' cannot be null."
        }

        if ($AccountState -eq $null) {
            throw "invalid value for 'AccountState', 'AccountState' cannot be null."
        }

        if ($AccountType -eq $null) {
            throw "invalid value for 'AccountType', 'AccountType' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "emailAddress" = ${EmailAddress}
            "accountState" = ${AccountState}
            "subscriptionType" = ${SubscriptionType}
            "accountType" = ${AccountType}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserInfoDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserInfoDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserInfoDto<PSCustomObject>
#>
function ConvertFrom-JsonToUserInfoDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => UserInfoDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UserInfoDto
        $AllProperties = ("id", "emailAddress", "accountState", "subscriptionType", "accountType", "createdAt")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddress' missing."
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountState"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountState' missing."
        } else {
            $AccountState = $JsonParameters.PSobject.Properties["accountState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountType' missing."
        } else {
            $AccountType = $JsonParameters.PSobject.Properties["accountType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subscriptionType"))) { #optional property not found
            $SubscriptionType = $null
        } else {
            $SubscriptionType = $JsonParameters.PSobject.Properties["subscriptionType"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "emailAddress" = ${EmailAddress}
            "accountState" = ${AccountState}
            "subscriptionType" = ${SubscriptionType}
            "accountType" = ${AccountType}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

