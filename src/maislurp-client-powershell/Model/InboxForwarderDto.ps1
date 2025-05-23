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

Inbox forwarder. Describes how an inbox will forward matching emails to designated recipients.

.PARAMETER Id
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER Name
Name of inbox forwarder
.PARAMETER Field
Which field to match against
.PARAMETER Match
Wild-card type pattern to apply to field
.PARAMETER ForwardToRecipients
Who to send forwarded email to
.PARAMETER CreatedAt
No description available.
.OUTPUTS

InboxForwarderDto<PSCustomObject>
#>

function Initialize-InboxForwarderDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("RECIPIENTS", "SENDER", "SUBJECT", "ATTACHMENTS")]
        [String]
        ${Field},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Match},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ForwardToRecipients},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxForwarderDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($Field -eq $null) {
            throw "invalid value for 'Field', 'Field' cannot be null."
        }

        if ($Match -eq $null) {
            throw "invalid value for 'Match', 'Match' cannot be null."
        }

        if ($ForwardToRecipients -eq $null) {
            throw "invalid value for 'ForwardToRecipients', 'ForwardToRecipients' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "inboxId" = ${InboxId}
            "name" = ${Name}
            "field" = ${Field}
            "match" = ${Match}
            "forwardToRecipients" = ${ForwardToRecipients}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxForwarderDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxForwarderDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxForwarderDto<PSCustomObject>
#>
function ConvertFrom-JsonToInboxForwarderDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxForwarderDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxForwarderDto
        $AllProperties = ("id", "inboxId", "name", "field", "match", "forwardToRecipients", "createdAt")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "field"))) {
            throw "Error! JSON cannot be serialized due to the required property 'field' missing."
        } else {
            $Field = $JsonParameters.PSobject.Properties["field"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "match"))) {
            throw "Error! JSON cannot be serialized due to the required property 'match' missing."
        } else {
            $Match = $JsonParameters.PSobject.Properties["match"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forwardToRecipients"))) {
            throw "Error! JSON cannot be serialized due to the required property 'forwardToRecipients' missing."
        } else {
            $ForwardToRecipients = $JsonParameters.PSobject.Properties["forwardToRecipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
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
            "id" = ${Id}
            "inboxId" = ${InboxId}
            "name" = ${Name}
            "field" = ${Field}
            "match" = ${Match}
            "forwardToRecipients" = ${ForwardToRecipients}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

