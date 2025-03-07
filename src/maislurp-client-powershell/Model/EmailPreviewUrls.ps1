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

URLs for email body

.PARAMETER RawSmtpMessageUrl
No description available.
.PARAMETER PlainHtmlBodyUrl
No description available.
.PARAMETER Origin
No description available.
.OUTPUTS

EmailPreviewUrls<PSCustomObject>
#>

function Initialize-EmailPreviewUrls {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RawSmtpMessageUrl},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PlainHtmlBodyUrl},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Origin}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailPreviewUrls' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($RawSmtpMessageUrl -eq $null) {
            throw "invalid value for 'RawSmtpMessageUrl', 'RawSmtpMessageUrl' cannot be null."
        }

        if ($PlainHtmlBodyUrl -eq $null) {
            throw "invalid value for 'PlainHtmlBodyUrl', 'PlainHtmlBodyUrl' cannot be null."
        }

        if ($Origin -eq $null) {
            throw "invalid value for 'Origin', 'Origin' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "rawSmtpMessageUrl" = ${RawSmtpMessageUrl}
            "plainHtmlBodyUrl" = ${PlainHtmlBodyUrl}
            "origin" = ${Origin}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailPreviewUrls<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailPreviewUrls<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailPreviewUrls<PSCustomObject>
#>
function ConvertFrom-JsonToEmailPreviewUrls {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailPreviewUrls' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailPreviewUrls
        $AllProperties = ("rawSmtpMessageUrl", "plainHtmlBodyUrl", "origin")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'rawSmtpMessageUrl' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rawSmtpMessageUrl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'rawSmtpMessageUrl' missing."
        } else {
            $RawSmtpMessageUrl = $JsonParameters.PSobject.Properties["rawSmtpMessageUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "plainHtmlBodyUrl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'plainHtmlBodyUrl' missing."
        } else {
            $PlainHtmlBodyUrl = $JsonParameters.PSobject.Properties["plainHtmlBodyUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "origin"))) {
            throw "Error! JSON cannot be serialized due to the required property 'origin' missing."
        } else {
            $Origin = $JsonParameters.PSobject.Properties["origin"].value
        }

        $PSO = [PSCustomObject]@{
            "rawSmtpMessageUrl" = ${RawSmtpMessageUrl}
            "plainHtmlBodyUrl" = ${PlainHtmlBodyUrl}
            "origin" = ${Origin}
        }

        return $PSO
    }

}

