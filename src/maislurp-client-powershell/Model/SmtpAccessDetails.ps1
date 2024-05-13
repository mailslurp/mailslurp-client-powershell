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

Access details for inbox using SMTP

.PARAMETER SecureSmtpServerHost
Secure TLS SMTP server host domain
.PARAMETER SecureSmtpServerPort
Secure TLS SMTP server host port
.PARAMETER SecureSmtpUsername
Secure TLS SMTP username for login
.PARAMETER SecureSmtpPassword
Secure TLS SMTP password for login
.PARAMETER SmtpServerHost
SMTP server host domain
.PARAMETER SmtpServerPort
SMTP server host port
.PARAMETER SmtpUsername
SMTP username for login
.PARAMETER SmtpPassword
SMTP password for login
.PARAMETER MailFromDomain
Mail from domain or SMTP HELO value
.OUTPUTS

SmtpAccessDetails<PSCustomObject>
#>

function Initialize-SmtpAccessDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureSmtpServerHost},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SecureSmtpServerPort},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureSmtpUsername},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureSmtpPassword},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpServerHost},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SmtpServerPort},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpUsername},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpPassword},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MailFromDomain}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => SmtpAccessDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($SecureSmtpServerHost -eq $null) {
            throw "invalid value for 'SecureSmtpServerHost', 'SecureSmtpServerHost' cannot be null."
        }

        if ($SecureSmtpServerPort -eq $null) {
            throw "invalid value for 'SecureSmtpServerPort', 'SecureSmtpServerPort' cannot be null."
        }

        if ($SecureSmtpUsername -eq $null) {
            throw "invalid value for 'SecureSmtpUsername', 'SecureSmtpUsername' cannot be null."
        }

        if ($SecureSmtpPassword -eq $null) {
            throw "invalid value for 'SecureSmtpPassword', 'SecureSmtpPassword' cannot be null."
        }

        if ($SmtpServerHost -eq $null) {
            throw "invalid value for 'SmtpServerHost', 'SmtpServerHost' cannot be null."
        }

        if ($SmtpServerPort -eq $null) {
            throw "invalid value for 'SmtpServerPort', 'SmtpServerPort' cannot be null."
        }

        if ($SmtpUsername -eq $null) {
            throw "invalid value for 'SmtpUsername', 'SmtpUsername' cannot be null."
        }

        if ($SmtpPassword -eq $null) {
            throw "invalid value for 'SmtpPassword', 'SmtpPassword' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "secureSmtpServerHost" = ${SecureSmtpServerHost}
            "secureSmtpServerPort" = ${SecureSmtpServerPort}
            "secureSmtpUsername" = ${SecureSmtpUsername}
            "secureSmtpPassword" = ${SecureSmtpPassword}
            "smtpServerHost" = ${SmtpServerHost}
            "smtpServerPort" = ${SmtpServerPort}
            "smtpUsername" = ${SmtpUsername}
            "smtpPassword" = ${SmtpPassword}
            "mailFromDomain" = ${MailFromDomain}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SmtpAccessDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to SmtpAccessDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SmtpAccessDetails<PSCustomObject>
#>
function ConvertFrom-JsonToSmtpAccessDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => SmtpAccessDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SmtpAccessDetails
        $AllProperties = ("secureSmtpServerHost", "secureSmtpServerPort", "secureSmtpUsername", "secureSmtpPassword", "smtpServerHost", "smtpServerPort", "smtpUsername", "smtpPassword", "mailFromDomain")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'secureSmtpServerHost' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureSmtpServerHost"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureSmtpServerHost' missing."
        } else {
            $SecureSmtpServerHost = $JsonParameters.PSobject.Properties["secureSmtpServerHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureSmtpServerPort"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureSmtpServerPort' missing."
        } else {
            $SecureSmtpServerPort = $JsonParameters.PSobject.Properties["secureSmtpServerPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureSmtpUsername"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureSmtpUsername' missing."
        } else {
            $SecureSmtpUsername = $JsonParameters.PSobject.Properties["secureSmtpUsername"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureSmtpPassword"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureSmtpPassword' missing."
        } else {
            $SecureSmtpPassword = $JsonParameters.PSobject.Properties["secureSmtpPassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpServerHost"))) {
            throw "Error! JSON cannot be serialized due to the required property 'smtpServerHost' missing."
        } else {
            $SmtpServerHost = $JsonParameters.PSobject.Properties["smtpServerHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpServerPort"))) {
            throw "Error! JSON cannot be serialized due to the required property 'smtpServerPort' missing."
        } else {
            $SmtpServerPort = $JsonParameters.PSobject.Properties["smtpServerPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpUsername"))) {
            throw "Error! JSON cannot be serialized due to the required property 'smtpUsername' missing."
        } else {
            $SmtpUsername = $JsonParameters.PSobject.Properties["smtpUsername"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpPassword"))) {
            throw "Error! JSON cannot be serialized due to the required property 'smtpPassword' missing."
        } else {
            $SmtpPassword = $JsonParameters.PSobject.Properties["smtpPassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailFromDomain"))) { #optional property not found
            $MailFromDomain = $null
        } else {
            $MailFromDomain = $JsonParameters.PSobject.Properties["mailFromDomain"].value
        }

        $PSO = [PSCustomObject]@{
            "secureSmtpServerHost" = ${SecureSmtpServerHost}
            "secureSmtpServerPort" = ${SecureSmtpServerPort}
            "secureSmtpUsername" = ${SecureSmtpUsername}
            "secureSmtpPassword" = ${SecureSmtpPassword}
            "smtpServerHost" = ${SmtpServerHost}
            "smtpServerPort" = ${SmtpServerPort}
            "smtpUsername" = ${SmtpUsername}
            "smtpPassword" = ${SmtpPassword}
            "mailFromDomain" = ${MailFromDomain}
        }

        return $PSO
    }

}

