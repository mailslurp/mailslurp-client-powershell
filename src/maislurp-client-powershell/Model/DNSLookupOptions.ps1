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

Options for DNS query. 

.PARAMETER Hostname
List of record types you wish to query such as MX, DNS, TXT, NS, A etc.
.PARAMETER RecordTypes
List of record types you wish to query such as MX, DNS, TXT, NS, A etc.
.PARAMETER OmitFinalDNSDot
Optionally control whether to omit the final dot in full DNS name values.
.OUTPUTS

DNSLookupOptions<PSCustomObject>
#>

function Initialize-DNSLookupOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hostname},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("A", "NS", "MD", "MF", "CNAME", "SOA", "MB", "MG", "MR", "NULL", "WKS", "PTR", "HINFO", "MINFO", "MX", "TXT", "RP", "AFSDB", "X25", "ISDN", "RT", "NSAP", "NSAP_PTR", "SIG", "KEY", "PX", "GPOS", "AAAA", "LOC", "NXT", "EID", "NIMLOC", "SRV", "ATMA", "NAPTR", "KX", "CERT", "A6", "DNAME", "SINK", "OPT", "APL", "DS", "SSHFP", "IPSECKEY", "RRSIG", "NSEC", "DNSKEY", "DHCID", "NSEC3", "NSEC3PARAM", "TLSA", "SMIMEA", "HIP", "NINFO", "RKEY", "TALINK", "CDS", "CDNSKEY", "OPENPGPKEY", "CSYNC", "ZONEMD", "SVCB", "HTTPS", "SPF", "UINFO", "UID", "GID", "UNSPEC", "NID", "L32", "L64", "LP", "EUI48", "EUI64", "TKEY", "TSIG", "IXFR", "AXFR", "MAILB", "MAILA", "ANY", "URI", "CAA", "AVC", "DOA", "AMTRELAY", "TA", "DLV")]
        [String[]]
        ${RecordTypes},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${OmitFinalDNSDot}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DNSLookupOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Hostname -eq $null) {
            throw "invalid value for 'Hostname', 'Hostname' cannot be null."
        }

        if ($RecordTypes -eq $null) {
            throw "invalid value for 'RecordTypes', 'RecordTypes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "hostname" = ${Hostname}
            "recordTypes" = ${RecordTypes}
            "omitFinalDNSDot" = ${OmitFinalDNSDot}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DNSLookupOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to DNSLookupOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DNSLookupOptions<PSCustomObject>
#>
function ConvertFrom-JsonToDNSLookupOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DNSLookupOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DNSLookupOptions
        $AllProperties = ("hostname", "recordTypes", "omitFinalDNSDot")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'hostname' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hostname"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hostname' missing."
        } else {
            $Hostname = $JsonParameters.PSobject.Properties["hostname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recordTypes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recordTypes' missing."
        } else {
            $RecordTypes = $JsonParameters.PSobject.Properties["recordTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "omitFinalDNSDot"))) { #optional property not found
            $OmitFinalDNSDot = $null
        } else {
            $OmitFinalDNSDot = $JsonParameters.PSobject.Properties["omitFinalDNSDot"].value
        }

        $PSO = [PSCustomObject]@{
            "hostname" = ${Hostname}
            "recordTypes" = ${RecordTypes}
            "omitFinalDNSDot" = ${OmitFinalDNSDot}
        }

        return $PSO
    }

}

