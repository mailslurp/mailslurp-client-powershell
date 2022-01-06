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

Basic Authentication options for webhooks. Will be used is present when calling webhook endpoints.

.PARAMETER Username
No description available.
.PARAMETER Password
No description available.
.OUTPUTS

BasicAuthOptions<PSCustomObject>
#>

function Initialize-BasicAuthOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => BasicAuthOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "password" = ${Password}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BasicAuthOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to BasicAuthOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BasicAuthOptions<PSCustomObject>
#>
function ConvertFrom-JsonToBasicAuthOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => BasicAuthOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BasicAuthOptions
        $AllProperties = ("username", "password")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "password" = ${Password}
        }

        return $PSO
    }

}

