*** Settings ***
Documentation  test case verifies Business Registration process and test all fields present in Business Registration page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py
Resource  ../Resources/DataManager.robot
Library  String
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
*** Test Cases ***
Navigations
    [Documentation]  This test case is to verify and test the menu management page and menu upload process
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure   Navigate to landing page
   \   run keyword and continue on failure      Click Login Button
   \   run keyword and continue on failure      Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Navigations
