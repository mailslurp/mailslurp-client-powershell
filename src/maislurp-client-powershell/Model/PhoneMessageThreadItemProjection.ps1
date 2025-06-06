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

No description available.

.PARAMETER Body
No description available.
.PARAMETER PhoneNumberId
No description available.
.PARAMETER Created
No description available.
.PARAMETER FromPhoneNumber
No description available.
.PARAMETER ToPhoneNumber
No description available.
.PARAMETER MessageDirection
No description available.
.OUTPUTS

PhoneMessageThreadItemProjection<PSCustomObject>
#>

function Initialize-PhoneMessageThreadItemProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PhoneNumberId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FromPhoneNumber},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ToPhoneNumber},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("OUTBOUND", "INBOUND")]
        [String]
        ${MessageDirection}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => PhoneMessageThreadItemProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Body -eq $null) {
            throw "invalid value for 'Body', 'Body' cannot be null."
        }

        if ($PhoneNumberId -eq $null) {
            throw "invalid value for 'PhoneNumberId', 'PhoneNumberId' cannot be null."
        }

        if ($Created -eq $null) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if ($FromPhoneNumber -eq $null) {
            throw "invalid value for 'FromPhoneNumber', 'FromPhoneNumber' cannot be null."
        }

        if ($ToPhoneNumber -eq $null) {
            throw "invalid value for 'ToPhoneNumber', 'ToPhoneNumber' cannot be null."
        }

        if ($MessageDirection -eq $null) {
            throw "invalid value for 'MessageDirection', 'MessageDirection' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "phoneNumberId" = ${PhoneNumberId}
            "created" = ${Created}
            "fromPhoneNumber" = ${FromPhoneNumber}
            "toPhoneNumber" = ${ToPhoneNumber}
            "messageDirection" = ${MessageDirection}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PhoneMessageThreadItemProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to PhoneMessageThreadItemProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PhoneMessageThreadItemProjection<PSCustomObject>
#>
function ConvertFrom-JsonToPhoneMessageThreadItemProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => PhoneMessageThreadItemProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PhoneMessageThreadItemProjection
        $AllProperties = ("body", "phoneNumberId", "created", "fromPhoneNumber", "toPhoneNumber", "messageDirection")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phoneNumberId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phoneNumberId' missing."
        } else {
            $PhoneNumberId = $JsonParameters.PSobject.Properties["phoneNumberId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fromPhoneNumber"))) {
            throw "Error! JSON cannot be serialized due to the required property 'fromPhoneNumber' missing."
        } else {
            $FromPhoneNumber = $JsonParameters.PSobject.Properties["fromPhoneNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "toPhoneNumber"))) {
            throw "Error! JSON cannot be serialized due to the required property 'toPhoneNumber' missing."
        } else {
            $ToPhoneNumber = $JsonParameters.PSobject.Properties["toPhoneNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messageDirection"))) {
            throw "Error! JSON cannot be serialized due to the required property 'messageDirection' missing."
        } else {
            $MessageDirection = $JsonParameters.PSobject.Properties["messageDirection"].value
        }

        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "phoneNumberId" = ${PhoneNumberId}
            "created" = ${Created}
            "fromPhoneNumber" = ${FromPhoneNumber}
            "toPhoneNumber" = ${ToPhoneNumber}
            "messageDirection" = ${MessageDirection}
        }

        return $PSO
    }

}

