*** Settings ***
Resource  ../Resources/keywords.robot
Resource  ../Resources/common.robot
Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test

*** Test Cases ***

TC_EP_EP01
    [Documentation]  This test case is to tests the profile page
    set selenium speed  0.2
    Navigate to landing page
    Click Login Button
    Attempt Login  ${TestData}
    Test Expansion pannel and options in it  ${TestData}

