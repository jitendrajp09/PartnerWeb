*** Settings ***
Documentation  test case verifies Business Registration process and test all fields present in Business Registration page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py
Resource  ../Resources/Data/DataManager.robot
Library  String

Suite Setup     Setup For TS_MeM09
Test Teardown   Teardown For TS_MeM09
Suite Teardown  End Web Test

*** Test Cases ***
TC_MU_MeM01
    [Documentation]     This test case is to verify and test the menu management page and menu upload process
    ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
    set selenium speed   0.2
    :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
    \   run keyword and continue on failure     Navigate to landing page
    \   run keyword and continue on failure     Click Login Button
    \   run keyword and continue on failure     Attempt Login    ${SigninScenario}
    \   run keyword and continue on failure     Attempt to Upload a Menu     ${SigninScenario}

TC_AMI-LB_MeM02
    [Documentation]     This test case is to test the add menu item button and fields in it under lower boundary conditions
    Navigate to landing page
    Click Login Button
    Attempt Login  ${TestData}
    test add menu item under lower boundary conditions

TC_AMI-UB_MeM03
    [Documentation]     This test case is to test the add menu item button and fields in it under upper boundary conditions
    Navigate to landing page
    Click Login Button
    Attempt Login  ${TestData}
    test add menu item under upper boundary conditions

TC_AMI-MM_MeM04
    [Documentation]     This test case is to test the add menu item button and fields in it under mixed-match conditions
    Navigate to landing page
    Click Login Button
    Attempt Login  ${TestData}
    test add menu item under mixed-match conditions

TC_AMI-Ma_MeM05
    [Documentation]     This test case is to test the add menu item button by filling only mandatory fields with data within the boundary values
    ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
    set selenium speed  0.5
    :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
    \   run keyword and continue on failure     Navigate to landing page
    \   run keyword and continue on failure    Click Login Button
    \   run keyword and continue on failure     Attempt Login     ${SigninScenario}
    \   run keyword and continue on failure     test add menu item by filling only mandatory fields with practical data within the boundary values  ${SigninScenario}



TC_AM-All_MeM06
    [Documentation]     This test case is to verify and test add menu item button by filling only mandatory fields with data within the boundary values
    ${ValidSigninScenrios}   DataManager.Get CSV Data  Resources/Data/NewUsers.csv
    set selenium speed   0.5
    :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
    \   run keyword and continue on failure   Navigate to landing page
    \   run keyword and continue on failure   Click Login Button
    \   run keyword and continue on failure   Attempt Login     ${SigninScenario}
    \   run keyword and continue on failure   Attempt to Add Menu a Item    ${SigninScenario}
