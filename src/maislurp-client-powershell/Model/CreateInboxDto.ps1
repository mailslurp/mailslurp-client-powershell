#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Options for creating an inbox. An inbox has a real email address that can send and receive emails. Inboxes can be permanent or expire at a given time. They can use a custom email address (by verifying your own domain) or a randomly assigned email ending in either `mailslurp.com` or if `useDomainPool` is enabled then ending in a similar domains such as `mailslurp.xyz` (selected at random). 

.PARAMETER AllowTeamAccess
Grant team access to this inbox and the emails that belong to it for team members of your organization.
.PARAMETER Description
Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
.PARAMETER EmailAddress
A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
.PARAMETER ExpiresAt
Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
.PARAMETER ExpiresIn
Number of milliseconds that inbox should exist for
.PARAMETER Favourite
Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
.PARAMETER InboxType
HTTP or SMTP inbox
.PARAMETER Name
Optional name of the inbox. Displayed in the dashboard for easier search
.PARAMETER Tags
Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
.PARAMETER UseDomainPool
Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field.
.OUTPUTS

CreateInboxDto<PSCustomObject>
#>

function Initialize-CreateInboxDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AllowTeamAccess},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ExpiresIn},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Favourite},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HTTP_INBOX", "SMTP_INBOX")]
        [String]
        ${InboxType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseDomainPool}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => CreateInboxDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "allowTeamAccess" = ${AllowTeamAccess}
            "description" = ${Description}
            "emailAddress" = ${EmailAddress}
            "expiresAt" = ${ExpiresAt}
            "expiresIn" = ${ExpiresIn}
            "favourite" = ${Favourite}
            "inboxType" = ${InboxType}
            "name" = ${Name}
            "tags" = ${Tags}
            "useDomainPool" = ${UseDomainPool}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateInboxDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateInboxDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateInboxDto<PSCustomObject>
#>
function ConvertFrom-JsonToCreateInboxDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => CreateInboxDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateInboxDto
        $AllProperties = ("allowTeamAccess", "description", "emailAddress", "expiresAt", "expiresIn", "favourite", "inboxType", "name", "tags", "useDomainPool")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowTeamAccess"))) { #optional property not found
            $AllowTeamAccess = $null
        } else {
            $AllowTeamAccess = $JsonParameters.PSobject.Properties["allowTeamAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresIn"))) { #optional property not found
            $ExpiresIn = $null
        } else {
            $ExpiresIn = $JsonParameters.PSobject.Properties["expiresIn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "favourite"))) { #optional property not found
            $Favourite = $null
        } else {
            $Favourite = $JsonParameters.PSobject.Properties["favourite"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxType"))) { #optional property not found
            $InboxType = $null
        } else {
            $InboxType = $JsonParameters.PSobject.Properties["inboxType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useDomainPool"))) { #optional property not found
            $UseDomainPool = $null
        } else {
            $UseDomainPool = $JsonParameters.PSobject.Properties["useDomainPool"].value
        }

        $PSO = [PSCustomObject]@{
            "allowTeamAccess" = ${AllowTeamAccess}
            "description" = ${Description}
            "emailAddress" = ${EmailAddress}
            "expiresAt" = ${ExpiresAt}
            "expiresIn" = ${ExpiresIn}
            "favourite" = ${Favourite}
            "inboxType" = ${InboxType}
            "name" = ${Name}
            "tags" = ${Tags}
            "useDomainPool" = ${UseDomainPool}
        }

        return $PSO
    }

}

