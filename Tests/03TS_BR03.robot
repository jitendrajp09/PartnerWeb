*** Settings ***
Documentation  test case verifies Business Registration process and test all fields present in Business Registration page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Resource  ../Resources/Data/DataManager.robot

Suite Setup  Setup For TS_BR03
Test Setup  Begin Test Setup
Test Teardown  Teardown For TS_BR03
Suite Teardown  End Web Test

*** Variables ***


*** Test Cases ***
TC_LB_BR01
   [Documentation]  This test case is to test the Business registration page under lower boundary conditions
    Click on Info&Hours tab
    sleep  5
    test the business registration page under lower boundary conditions
    sleep  2s

TC_UB_BR02
    [Documentation]  This test case is to test the Business registration page under upper boundary conditions
    Click on Info&Hours tab
    sleep  5
    set selenium speed  0.3
    test the business registration page under upper boundary conditions
    sleep  2s

TC_MM_BR03
    [Documentation]  This test case is to test the Business registration page under mixed-match conditions
    Click on Info&Hours tab
    sleep  5
    test the business registration page under mixed-match conditions
    sleep  2s

TC_Ma_BR04
    [Documentation]  This test case is to test the Business registration page by filling mandatory fields only
    Click on Info&Hours tab
    sleep  5
    set selenium speed  0.3
    test the business registration page by filling only mandatory fields with practical data within the boundary values  ${TestData}
    sleep  2s
TC_All_BR05
   [Documentation]  This test case is to test the Business registration page by filling all fields
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Attempt Business Creation  ${SigninScenario}