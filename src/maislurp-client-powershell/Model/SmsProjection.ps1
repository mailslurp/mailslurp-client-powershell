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

SMS projection

.PARAMETER Body
No description available.
.PARAMETER UserId
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER PhoneNumber
No description available.
.PARAMETER FromNumber
No description available.
.PARAMETER Read
No description available.
.PARAMETER Id
No description available.
.OUTPUTS

SmsProjection<PSCustomObject>
#>

function Initialize-SmsProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PhoneNumber},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FromNumber},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Read},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => SmsProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Body -eq $null) {
            throw "invalid value for 'Body', 'Body' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($PhoneNumber -eq $null) {
            throw "invalid value for 'PhoneNumber', 'PhoneNumber' cannot be null."
        }

        if ($FromNumber -eq $null) {
            throw "invalid value for 'FromNumber', 'FromNumber' cannot be null."
        }

        if ($Read -eq $null) {
            throw "invalid value for 'Read', 'Read' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "userId" = ${UserId}
            "createdAt" = ${CreatedAt}
            "phoneNumber" = ${PhoneNumber}
            "fromNumber" = ${FromNumber}
            "read" = ${Read}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SmsProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to SmsProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SmsProjection<PSCustomObject>
#>
function ConvertFrom-JsonToSmsProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => SmsProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SmsProjection
        $AllProperties = ("body", "userId", "createdAt", "phoneNumber", "fromNumber", "read", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'body' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) {
            throw "Error! JSON cannot be serialized due to the required property 'body' missing."
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phoneNumber"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phoneNumber' missing."
        } else {
            $PhoneNumber = $JsonParameters.PSobject.Properties["phoneNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fromNumber"))) {
            throw "Error! JSON cannot be serialized due to the required property 'fromNumber' missing."
        } else {
            $FromNumber = $JsonParameters.PSobject.Properties["fromNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "read"))) {
            throw "Error! JSON cannot be serialized due to the required property 'read' missing."
        } else {
            $Read = $JsonParameters.PSobject.Properties["read"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "userId" = ${UserId}
            "createdAt" = ${CreatedAt}
            "phoneNumber" = ${PhoneNumber}
            "fromNumber" = ${FromNumber}
            "read" = ${Read}
            "id" = ${Id}
        }

        return $PSO
    }

}

