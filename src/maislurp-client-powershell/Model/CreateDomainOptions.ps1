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

Options for creating a domain to use with MailSlurp. You must have ownership access to this domain in order to verify it. Domains will not functionally currently until the domain has been verified. See https://www.mailslurp.com/guides/custom-domains for help.

.PARAMETER CreatedCatchAllInbox
Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID.
.PARAMETER Description
Optional description of the domain.
.PARAMETER Domain
The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain.
.OUTPUTS

CreateDomainOptions<PSCustomObject>
#>

function Initialize-CreateDomainOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CreatedCatchAllInbox},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => CreateDomainOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "createdCatchAllInbox" = ${CreatedCatchAllInbox}
            "description" = ${Description}
            "domain" = ${Domain}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateDomainOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateDomainOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateDomainOptions<PSCustomObject>
#>
function ConvertFrom-JsonToCreateDomainOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => CreateDomainOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateDomainOptions
        $AllProperties = ("createdCatchAllInbox", "description", "domain")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdCatchAllInbox"))) { #optional property not found
            $CreatedCatchAllInbox = $null
        } else {
            $CreatedCatchAllInbox = $JsonParameters.PSobject.Properties["createdCatchAllInbox"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        $PSO = [PSCustomObject]@{
            "createdCatchAllInbox" = ${CreatedCatchAllInbox}
            "description" = ${Description}
            "domain" = ${Domain}
        }

        return $PSO
    }

}

