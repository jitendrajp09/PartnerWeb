*** Settings ***
Documentation  test case verifies Business Registration process and test all fields present in Business Registration page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py
Resource  ../Resources/Data/DataManager.robot
Library  String
Suite Setup  Setup For TS_BR03
Suite Teardown  End Web Test
*** Test Cases ***
TC_Sub_SB01
   [Documentation]  This test case is to test the subscription page
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  test the subscription page  ${SigninScenario}


