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

NEW_CONTACT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains a recipient that has not been saved as a contact.

.PARAMETER MessageId
Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
.PARAMETER WebhookId
ID of webhook entity being triggered
.PARAMETER WebhookName
Name of the webhook being triggered
.PARAMETER EventName
Name of the event type webhook is being triggered for.
.PARAMETER ContactId
Contact ID
.PARAMETER GroupId
Contact group ID
.PARAMETER FirstName
Contact first name
.PARAMETER LastName
Contact last name
.PARAMETER Company
Contact company name
.PARAMETER PrimaryEmailAddress
Primary email address for contact
.PARAMETER EmailAddresses
Email addresses for contact
.PARAMETER Tags
Tags for contact
.PARAMETER MetaData
No description available.
.PARAMETER OptOut
Has contact opted out of emails
.PARAMETER CreatedAt
Date time of event creation
.OUTPUTS

WebhookNewContactPayload<PSCustomObject>
#>

function Initialize-WebhookNewContactPayload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS", "NEW_GUEST_USER")]
        [String]
        ${EventName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContactId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GroupId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Company},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PrimaryEmailAddress},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EmailAddresses},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MetaData},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${OptOut},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookNewContactPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($MessageId -eq $null) {
            throw "invalid value for 'MessageId', 'MessageId' cannot be null."
        }

        if ($WebhookId -eq $null) {
            throw "invalid value for 'WebhookId', 'WebhookId' cannot be null."
        }

        if ($EventName -eq $null) {
            throw "invalid value for 'EventName', 'EventName' cannot be null."
        }

        if ($ContactId -eq $null) {
            throw "invalid value for 'ContactId', 'ContactId' cannot be null."
        }

        if ($EmailAddresses -eq $null) {
            throw "invalid value for 'EmailAddresses', 'EmailAddresses' cannot be null."
        }

        if ($Tags -eq $null) {
            throw "invalid value for 'Tags', 'Tags' cannot be null."
        }

        if ($OptOut -eq $null) {
            throw "invalid value for 'OptOut', 'OptOut' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
            "eventName" = ${EventName}
            "contactId" = ${ContactId}
            "groupId" = ${GroupId}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "company" = ${Company}
            "primaryEmailAddress" = ${PrimaryEmailAddress}
            "emailAddresses" = ${EmailAddresses}
            "tags" = ${Tags}
            "metaData" = ${MetaData}
            "optOut" = ${OptOut}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookNewContactPayload<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookNewContactPayload<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookNewContactPayload<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookNewContactPayload {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookNewContactPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookNewContactPayload
        $AllProperties = ("messageId", "webhookId", "webhookName", "eventName", "contactId", "groupId", "firstName", "lastName", "company", "primaryEmailAddress", "emailAddresses", "tags", "metaData", "optOut", "createdAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'messageId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messageId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'messageId' missing."
        } else {
            $MessageId = $JsonParameters.PSobject.Properties["messageId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'webhookId' missing."
        } else {
            $WebhookId = $JsonParameters.PSobject.Properties["webhookId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'eventName' missing."
        } else {
            $EventName = $JsonParameters.PSobject.Properties["eventName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contactId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contactId' missing."
        } else {
            $ContactId = $JsonParameters.PSobject.Properties["contactId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddresses"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddresses' missing."
        } else {
            $EmailAddresses = $JsonParameters.PSobject.Properties["emailAddresses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) {
            throw "Error! JSON cannot be serialized due to the required property 'tags' missing."
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "optOut"))) {
            throw "Error! JSON cannot be serialized due to the required property 'optOut' missing."
        } else {
            $OptOut = $JsonParameters.PSobject.Properties["optOut"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookName"))) { #optional property not found
            $WebhookName = $null
        } else {
            $WebhookName = $JsonParameters.PSobject.Properties["webhookName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupId"))) { #optional property not found
            $GroupId = $null
        } else {
            $GroupId = $JsonParameters.PSobject.Properties["groupId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "company"))) { #optional property not found
            $Company = $null
        } else {
            $Company = $JsonParameters.PSobject.Properties["company"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "primaryEmailAddress"))) { #optional property not found
            $PrimaryEmailAddress = $null
        } else {
            $PrimaryEmailAddress = $JsonParameters.PSobject.Properties["primaryEmailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "metaData"))) { #optional property not found
            $MetaData = $null
        } else {
            $MetaData = $JsonParameters.PSobject.Properties["metaData"].value
        }

        $PSO = [PSCustomObject]@{
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
            "eventName" = ${EventName}
            "contactId" = ${ContactId}
            "groupId" = ${GroupId}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "company" = ${Company}
            "primaryEmailAddress" = ${PrimaryEmailAddress}
            "emailAddresses" = ${EmailAddresses}
            "tags" = ${Tags}
            "metaData" = ${MetaData}
            "optOut" = ${OptOut}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

