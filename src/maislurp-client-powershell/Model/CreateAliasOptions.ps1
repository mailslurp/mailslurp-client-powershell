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

Create email alias options. Email aliases can be used to mask real email addresses behind an ID. You can also attach an inbox to an alias so that any email received by the inbox email address if forwarded to the alias email address.

.PARAMETER EmailAddress
Email address to be hidden behind alias. Emails sent to the alias email address will be forwarded to this address. If you want to enable replies set useThreads true and the reply-to for the email will allow outbound communication via a thread. Some email addresses may require verification if they are not added as a contact first.
.PARAMETER InboxId
Optional inbox ID to attach to alias. Null by default means an a new inbox will be created for the alias. Use a custom inbox to control what email address the alias uses. To use custom email addresses create a domain and an inbox, the use the inbox ID with this call. Emails received by this inbox will be forwarded to the alias email address
.PARAMETER Name
Optional name for alias
.PARAMETER UseThreads
Enable threads options. If true emails will be sent with a unique reply-to thread address. This means you can reply to the forwarded email and it will be sent to the recipients via your alias address. That way a thread conversation is preserved.
.OUTPUTS

CreateAliasOptions<PSCustomObject>
#>

function Initialize-CreateAliasOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${UseThreads}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => CreateAliasOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($EmailAddress -eq $null) {
            throw "invalid value for 'EmailAddress', 'EmailAddress' cannot be null."
        }

        if ($UseThreads -eq $null) {
            throw "invalid value for 'UseThreads', 'UseThreads' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "inboxId" = ${InboxId}
            "name" = ${Name}
            "useThreads" = ${UseThreads}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateAliasOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateAliasOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateAliasOptions<PSCustomObject>
#>
function ConvertFrom-JsonToCreateAliasOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => CreateAliasOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateAliasOptions
        $AllProperties = ("emailAddress", "inboxId", "name", "useThreads")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useThreads"))) {
            throw "Error! JSON cannot be serialized due to the required property 'useThreads' missing."
        } else {
            $UseThreads = $JsonParameters.PSobject.Properties["useThreads"].value
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

        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "inboxId" = ${InboxId}
            "name" = ${Name}
            "useThreads" = ${UseThreads}
        }

        return $PSO
    }

}

