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

Access details for inbox using SMTP or IMAP

.PARAMETER EmailAddress
Email address for SMTP/IMAP login
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
.PARAMETER SecureImapServerHost
Secure TLS IMAP server host domain
.PARAMETER SecureImapServerPort
Secure TLS IMAP server host port
.PARAMETER SecureImapUsername
Secure TLS IMAP username for login
.PARAMETER SecureImapPassword
Secure TLS IMAP password for login
.PARAMETER ImapServerHost
IMAP server host domain
.PARAMETER ImapServerPort
IMAP server host port
.PARAMETER ImapUsername
IMAP username for login
.PARAMETER ImapPassword
IMAP password for login
.PARAMETER ImapMailbox
IMAP mailbox to SELECT
.PARAMETER MailFromDomain
Mail from domain or SMTP HELO value
.OUTPUTS

ImapSmtpAccessDetails<PSCustomObject>
#>

function Initialize-ImapSmtpAccessDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureSmtpServerHost},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SecureSmtpServerPort},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureSmtpUsername},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureSmtpPassword},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpServerHost},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SmtpServerPort},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpUsername},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpPassword},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureImapServerHost},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SecureImapServerPort},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureImapUsername},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecureImapPassword},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImapServerHost},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${ImapServerPort},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImapUsername},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImapPassword},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImapMailbox},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MailFromDomain}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ImapSmtpAccessDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($EmailAddress -eq $null) {
            throw "invalid value for 'EmailAddress', 'EmailAddress' cannot be null."
        }

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

        if ($SecureImapServerHost -eq $null) {
            throw "invalid value for 'SecureImapServerHost', 'SecureImapServerHost' cannot be null."
        }

        if ($SecureImapServerPort -eq $null) {
            throw "invalid value for 'SecureImapServerPort', 'SecureImapServerPort' cannot be null."
        }

        if ($SecureImapUsername -eq $null) {
            throw "invalid value for 'SecureImapUsername', 'SecureImapUsername' cannot be null."
        }

        if ($SecureImapPassword -eq $null) {
            throw "invalid value for 'SecureImapPassword', 'SecureImapPassword' cannot be null."
        }

        if ($ImapServerHost -eq $null) {
            throw "invalid value for 'ImapServerHost', 'ImapServerHost' cannot be null."
        }

        if ($ImapServerPort -eq $null) {
            throw "invalid value for 'ImapServerPort', 'ImapServerPort' cannot be null."
        }

        if ($ImapUsername -eq $null) {
            throw "invalid value for 'ImapUsername', 'ImapUsername' cannot be null."
        }

        if ($ImapPassword -eq $null) {
            throw "invalid value for 'ImapPassword', 'ImapPassword' cannot be null."
        }

        if ($ImapMailbox -eq $null) {
            throw "invalid value for 'ImapMailbox', 'ImapMailbox' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "secureSmtpServerHost" = ${SecureSmtpServerHost}
            "secureSmtpServerPort" = ${SecureSmtpServerPort}
            "secureSmtpUsername" = ${SecureSmtpUsername}
            "secureSmtpPassword" = ${SecureSmtpPassword}
            "smtpServerHost" = ${SmtpServerHost}
            "smtpServerPort" = ${SmtpServerPort}
            "smtpUsername" = ${SmtpUsername}
            "smtpPassword" = ${SmtpPassword}
            "secureImapServerHost" = ${SecureImapServerHost}
            "secureImapServerPort" = ${SecureImapServerPort}
            "secureImapUsername" = ${SecureImapUsername}
            "secureImapPassword" = ${SecureImapPassword}
            "imapServerHost" = ${ImapServerHost}
            "imapServerPort" = ${ImapServerPort}
            "imapUsername" = ${ImapUsername}
            "imapPassword" = ${ImapPassword}
            "imapMailbox" = ${ImapMailbox}
            "mailFromDomain" = ${MailFromDomain}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImapSmtpAccessDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImapSmtpAccessDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImapSmtpAccessDetails<PSCustomObject>
#>
function ConvertFrom-JsonToImapSmtpAccessDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ImapSmtpAccessDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ImapSmtpAccessDetails
        $AllProperties = ("emailAddress", "secureSmtpServerHost", "secureSmtpServerPort", "secureSmtpUsername", "secureSmtpPassword", "smtpServerHost", "smtpServerPort", "smtpUsername", "smtpPassword", "secureImapServerHost", "secureImapServerPort", "secureImapUsername", "secureImapPassword", "imapServerHost", "imapServerPort", "imapUsername", "imapPassword", "imapMailbox", "mailFromDomain")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'emailAddress' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddress' missing."
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureImapServerHost"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureImapServerHost' missing."
        } else {
            $SecureImapServerHost = $JsonParameters.PSobject.Properties["secureImapServerHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureImapServerPort"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureImapServerPort' missing."
        } else {
            $SecureImapServerPort = $JsonParameters.PSobject.Properties["secureImapServerPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureImapUsername"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureImapUsername' missing."
        } else {
            $SecureImapUsername = $JsonParameters.PSobject.Properties["secureImapUsername"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureImapPassword"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secureImapPassword' missing."
        } else {
            $SecureImapPassword = $JsonParameters.PSobject.Properties["secureImapPassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapServerHost"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapServerHost' missing."
        } else {
            $ImapServerHost = $JsonParameters.PSobject.Properties["imapServerHost"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapServerPort"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapServerPort' missing."
        } else {
            $ImapServerPort = $JsonParameters.PSobject.Properties["imapServerPort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapUsername"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapUsername' missing."
        } else {
            $ImapUsername = $JsonParameters.PSobject.Properties["imapUsername"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapPassword"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapPassword' missing."
        } else {
            $ImapPassword = $JsonParameters.PSobject.Properties["imapPassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imapMailbox"))) {
            throw "Error! JSON cannot be serialized due to the required property 'imapMailbox' missing."
        } else {
            $ImapMailbox = $JsonParameters.PSobject.Properties["imapMailbox"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailFromDomain"))) { #optional property not found
            $MailFromDomain = $null
        } else {
            $MailFromDomain = $JsonParameters.PSobject.Properties["mailFromDomain"].value
        }

        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "secureSmtpServerHost" = ${SecureSmtpServerHost}
            "secureSmtpServerPort" = ${SecureSmtpServerPort}
            "secureSmtpUsername" = ${SecureSmtpUsername}
            "secureSmtpPassword" = ${SecureSmtpPassword}
            "smtpServerHost" = ${SmtpServerHost}
            "smtpServerPort" = ${SmtpServerPort}
            "smtpUsername" = ${SmtpUsername}
            "smtpPassword" = ${SmtpPassword}
            "secureImapServerHost" = ${SecureImapServerHost}
            "secureImapServerPort" = ${SecureImapServerPort}
            "secureImapUsername" = ${SecureImapUsername}
            "secureImapPassword" = ${SecureImapPassword}
            "imapServerHost" = ${ImapServerHost}
            "imapServerPort" = ${ImapServerPort}
            "imapUsername" = ${ImapUsername}
            "imapPassword" = ${ImapPassword}
            "imapMailbox" = ${ImapMailbox}
            "mailFromDomain" = ${MailFromDomain}
        }

        return $PSO
    }

}

