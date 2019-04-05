*** Settings ***
Documentation  test case verifies Business Registration process and test all fields present in Business Registration page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py
Resource  ../Resources/Data/DataManager.robot
Library  String
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test

*** Test Cases ***
TC_OHT_IH01
   [Documentation]  This test case is to test the operating hours page
   Navigate to landing page
   Click Login Button
   Attempt Login  ${TestData}
   Test Operating Hours for the resturant  ${TestData}

TC_OHT_IH02
   [Documentation]  This test case is to test the operating hours page
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Enter Operating Hours for the resturant  ${SigninScenario}


