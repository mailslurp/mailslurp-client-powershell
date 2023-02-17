#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'maislurp-client-powershell' -name 'CommonActionsControllerApi' {
    Context 'New-NewEmailAddress' {
        It 'Test New-NewEmailAddress' {
            #$TestResult = New-NewEmailAddress -AllowTeamAccess "TEST_VALUE" -UseDomainPool "TEST_VALUE" -ExpiresAt "TEST_VALUE" -ExpiresIn "TEST_VALUE" -EmailAddress "TEST_VALUE" -InboxType "TEST_VALUE" -Description "TEST_VALUE" -Name "TEST_VALUE" -Tags "TEST_VALUE" -Favourite "TEST_VALUE" -VirtualInbox "TEST_VALUE" -UseShortAddress "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'New-RandomInbox' {
        It 'Test New-RandomInbox' {
            #$TestResult = New-RandomInbox -AllowTeamAccess "TEST_VALUE" -UseDomainPool "TEST_VALUE" -ExpiresAt "TEST_VALUE" -ExpiresIn "TEST_VALUE" -EmailAddress "TEST_VALUE" -InboxType "TEST_VALUE" -Description "TEST_VALUE" -Name "TEST_VALUE" -Tags "TEST_VALUE" -Favourite "TEST_VALUE" -VirtualInbox "TEST_VALUE" -UseShortAddress "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-DeleteEmailAddress' {
        It 'Test Invoke-DeleteEmailAddress' {
            #$TestResult = Invoke-DeleteEmailAddress -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-EmptyInbox' {
        It 'Test Invoke-EmptyInbox' {
            #$TestResult = Invoke-EmptyInbox -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Send-EmailSimple' {
        It 'Test Send-EmailSimple' {
            #$TestResult = Send-EmailSimple -SimpleSendEmailOptions "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
