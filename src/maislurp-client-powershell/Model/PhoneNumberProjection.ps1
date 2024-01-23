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

Phone number projection

.PARAMETER UserId
No description available.
.PARAMETER PhoneNumber
No description available.
.PARAMETER PhoneCountry
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER Id
No description available.
.OUTPUTS

PhoneNumberProjection<PSCustomObject>
#>

function Initialize-PhoneNumberProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PhoneNumber},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("US", "GB", "AU")]
        [String]
        ${PhoneCountry},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => PhoneNumberProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($PhoneNumber -eq $null) {
            throw "invalid value for 'PhoneNumber', 'PhoneNumber' cannot be null."
        }

        if ($PhoneCountry -eq $null) {
            throw "invalid value for 'PhoneCountry', 'PhoneCountry' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "userId" = ${UserId}
            "phoneNumber" = ${PhoneNumber}
            "phoneCountry" = ${PhoneCountry}
            "createdAt" = ${CreatedAt}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PhoneNumberProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to PhoneNumberProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PhoneNumberProjection<PSCustomObject>
#>
function ConvertFrom-JsonToPhoneNumberProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => PhoneNumberProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PhoneNumberProjection
        $AllProperties = ("userId", "phoneNumber", "phoneCountry", "createdAt", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'userId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phoneNumber"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phoneNumber' missing."
        } else {
            $PhoneNumber = $JsonParameters.PSobject.Properties["phoneNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phoneCountry"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phoneCountry' missing."
        } else {
            $PhoneCountry = $JsonParameters.PSobject.Properties["phoneCountry"].value
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

        $PSO = [PSCustomObject]@{
            "userId" = ${UserId}
            "phoneNumber" = ${PhoneNumber}
            "phoneCountry" = ${PhoneCountry}
            "createdAt" = ${CreatedAt}
            "id" = ${Id}
        }

        return $PSO
    }

}

