*** Settings ***
Documentation  This test scenario is to verify and test the Archived orders page
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py
Resource  ../Resources/Data/DataManager.robot
Library  String
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
*** Test Cases ***
TC_AOB_AO01
    [Documentation]  This test case is to verify and test the Archived orders button in the side menu and the archived orders page

   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Selecting Drop Down Filters

TC_Fn_AO02
    [Documentation]  This test case is to verify and test drop down button, search bar in archived order page
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Selecting Drop Down Filters
   \   run keyword and continue on failure  Search Element

TC_DT_AO03
  [Documentation]  This test case is to verify and test details button against each entry in archived order page
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Selecting Drop Down Filters
   \   run keyword and continue on failure  Click Order Drop Down Button
   \   run keyword and continue on failure  Click Cancel Button



