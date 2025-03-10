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

.PARAMETER MailProvider
No description available.
.PARAMETER ImapHost
No description available.
.PARAMETER ImapPort
No description available.
.PARAMETER ImapSsl
No description available.
.PARAMETER ImapStartTls
No description available.
.PARAMETER SmtpHost
No description available.
.PARAMETER SmtpPort
No description available.
.PARAMETER SmtpSsl
No description available.
.PARAMETER SmtpStartTls
No description available.
.OUTPUTS

ProviderSettings<PSCustomObject>
#>

function Initialize-ProviderSettings {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GOOGLE", "MICROSOFT")]
        [String]
        ${MailProvider},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImapHost},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${ImapPort},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${ImapSsl},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ImapStartTls},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpHost},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SmtpPort},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${SmtpSsl},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SmtpStartTls}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ProviderSettings' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($MailProvider -eq $null) {
            throw "invalid value for 'MailProvider', 'MailProvider' cannot be null."
        }

        if ($ImapHost -eq $null) {
            throw "invalid value for 'ImapHost', 'ImapHost' cannot be null."
        }

        if ($ImapPort -eq $null) {
            throw "invalid value for 'ImapPort', 'ImapPort' cannot be null."
        }

        if ($ImapSsl -eq $null) {
            throw "invalid value for 'ImapSsl', 'ImapSsl' cannot be null."
        }

        if ($SmtpHost -eq $null) {
            throw "invalid value for 'SmtpHost', 'SmtpHost' cannot be null."
        }

        if ($SmtpPort -eq $null) {
            throw "invalid value for 'SmtpPort', 'SmtpPort' cannot be null."
        }

        if ($SmtpSsl -eq $null) {
            throw "invalid value for 'SmtpSsl', 'SmtpSsl' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "mailProvider" = ${MailProvider}
            "imapHost" = ${ImapHost}
            "imapPort" = ${ImapPort}
            "imapSsl" = ${ImapSsl}
            "imapStartTls" = ${ImapStartTls}
            "smtpHost" = ${SmtpHost}
            "smtpPort" = ${SmtpPort}
            "smtpSsl" = ${SmtpSsl}
            "smtpStartTls" = ${SmtpStartTls}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProviderSettings<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProviderSettings<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProviderSettings<PSCustomObject>
#>
function ConvertFrom-JsonToProviderSettings {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ProviderSettings' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProviderSettings
        $AllProperties = ("mailProvider", "imapHost", "imapPort", "imapSsl", "imapStartTls", "smtpHost", "smtpPort", "smtpSsl", "smtpStartTls")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'mailProvider' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailProvider"))) {
            throw "Error! JSON cannot be serialized due to the required property 'mailProvider' missing."
        } else {
            $MailProvider = $JsonParameters.PSobject.Properties["mailProvider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapHost"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapHost' missing."
        } else {
            $ImapHost = $JsonParameters.PSobject.Properties["imapHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapPort"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapPort' missing."
        } else {
            $ImapPort = $JsonParameters.PSobject.Properties["imapPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapSsl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapSsl' missing."
        } else {
            $ImapSsl = $JsonParameters.PSobject.Properties["imapSsl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpHost"))) {
            throw "Error! JSON cannot be serialized due to the required property 'smtpHost' missing."
        } else {
            $SmtpHost = $JsonParameters.PSobject.Properties["smtpHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpPort"))) {
            throw "Error! JSON cannot be serialized due to the required property 'smtpPort' missing."
        } else {
            $SmtpPort = $JsonParameters.PSobject.Properties["smtpPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpSsl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'smtpSsl' missing."
        } else {
            $SmtpSsl = $JsonParameters.PSobject.Properties["smtpSsl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapStartTls"))) { #optional property not found
            $ImapStartTls = $null
        } else {
            $ImapStartTls = $JsonParameters.PSobject.Properties["imapStartTls"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpStartTls"))) { #optional property not found
            $SmtpStartTls = $null
        } else {
            $SmtpStartTls = $JsonParameters.PSobject.Properties["smtpStartTls"].value
        }

        $PSO = [PSCustomObject]@{
            "mailProvider" = ${MailProvider}
            "imapHost" = ${ImapHost}
            "imapPort" = ${ImapPort}
            "imapSsl" = ${ImapSsl}
            "imapStartTls" = ${ImapStartTls}
            "smtpHost" = ${SmtpHost}
            "smtpPort" = ${SmtpPort}
            "smtpSsl" = ${SmtpSsl}
            "smtpStartTls" = ${SmtpStartTls}
        }

        return $PSO
    }

}

