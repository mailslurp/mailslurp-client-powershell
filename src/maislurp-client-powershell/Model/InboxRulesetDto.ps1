#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Action
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER Handler
No description available.
.PARAMETER Id
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER Scope
No description available.
.PARAMETER Target
No description available.
.OUTPUTS

InboxRulesetDto<PSCustomObject>
#>

function Initialize-InboxRulesetDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("BLOCK", "ALLOW", "FILTER_REMOVE")]
        [String]
        ${Action},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXCEPTION")]
        [String]
        ${Handler},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("RECEIVING_EMAILS", "SENDING_EMAILS")]
        [String]
        ${Scope},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Target}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxRulesetDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Action -eq $null) {
            throw "invalid value for 'Action', 'Action' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Handler -eq $null) {
            throw "invalid value for 'Handler', 'Handler' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($InboxId -eq $null) {
            throw "invalid value for 'InboxId', 'InboxId' cannot be null."
        }

        if ($Scope -eq $null) {
            throw "invalid value for 'Scope', 'Scope' cannot be null."
        }

        if ($Target -eq $null) {
            throw "invalid value for 'Target', 'Target' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "action" = ${Action}
            "createdAt" = ${CreatedAt}
            "handler" = ${Handler}
            "id" = ${Id}
            "inboxId" = ${InboxId}
            "scope" = ${Scope}
            "target" = ${Target}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxRulesetDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxRulesetDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxRulesetDto<PSCustomObject>
#>
function ConvertFrom-JsonToInboxRulesetDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxRulesetDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxRulesetDto
        $AllProperties = ("action", "createdAt", "handler", "id", "inboxId", "scope", "target")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'action' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "action"))) {
            throw "Error! JSON cannot be serialized due to the required property 'action' missing."
        } else {
            $Action = $JsonParameters.PSobject.Properties["action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "handler"))) {
            throw "Error! JSON cannot be serialized due to the required property 'handler' missing."
        } else {
            $Handler = $JsonParameters.PSobject.Properties["handler"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxId' missing."
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scope' missing."
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "target"))) {
            throw "Error! JSON cannot be serialized due to the required property 'target' missing."
        } else {
            $Target = $JsonParameters.PSobject.Properties["target"].value
        }

        $PSO = [PSCustomObject]@{
            "action" = ${Action}
            "createdAt" = ${CreatedAt}
            "handler" = ${Handler}
            "id" = ${Id}
            "inboxId" = ${InboxId}
            "scope" = ${Scope}
            "target" = ${Target}
        }

        return $PSO
    }

}
