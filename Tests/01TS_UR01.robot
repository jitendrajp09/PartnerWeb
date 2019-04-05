*** Settings ***
Documentation  test case verifies User Registration process and test all fields present in register user page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Resource  ../Resources/Data/DataManager.robot
Library  String

Suite Setup     Setup For TS_UR01
Test Setup      Test Setup TS_UR01
Test Teardown   Teardown For TS_UR01
Suite Teardown  End Web Test

*** Test Cases ***
TC_LB_UR01
    [Documentation]   This test case is to test the user registration page under lower boundary conditions
    test the user registration page under lower boundary conditions

TC_UB_UR02
    [Documentation]  This test case is to test the user registration page under upper boundary conditions
    test the user registration page under upper boundary conditions

TC_MM_UR03
    [Documentation]  This test case is to test the user registration page under MIXED-MATCH conditions
    test the user registration page under mixed-match conditions

TC_RD_UR04
    [Tags]  d
    [Documentation]  This test case is to test the user registration page by filling the all fields with practical data within the boundary values
     ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
    set selenium speed  0.5
    :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
    \   run keyword and continue on failure  Navigate to landing page
    \  run keyword and continue on failure  Click Register Button
    \  run keyword and continue on failure  Register A New User  ${SigninScenario}
