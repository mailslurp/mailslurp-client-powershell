#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'maislurp-client-powershell' -name 'MissedEmailControllerApi' {
    Context 'Get-AllMissedEmails' {
        It 'Test Get-AllMissedEmails' {
            #$TestResult = Get-AllMissedEmails -Page "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE" -SearchFilter "TEST_VALUE" -Since "TEST_VALUE" -Before "TEST_VALUE" -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-AllUnknownMissedEmails' {
        It 'Test Get-AllUnknownMissedEmails' {
            #$TestResult = Get-AllUnknownMissedEmails -Page "TEST_VALUE" -Size "TEST_VALUE" -Sort "TEST_VALUE" -SearchFilter "TEST_VALUE" -Since "TEST_VALUE" -Before "TEST_VALUE" -InboxId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-MissedEmail' {
        It 'Test Get-MissedEmail' {
            #$TestResult = Get-MissedEmail -MissedEmailId "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Restore-MissedEmails' {
        It 'Test Restore-MissedEmails' {
            #$TestResult = Restore-MissedEmails
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Wait-ForNthMissedEmail' {
        It 'Test Wait-ForNthMissedEmail' {
            #$TestResult = Wait-ForNthMissedEmail -Index "TEST_VALUE" -InboxId "TEST_VALUE" -Timeout "TEST_VALUE" -Since "TEST_VALUE" -Before "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
