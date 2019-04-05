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


TC_Fn_DB02
    [Documentation]   This test case is to test and verify the functionality of cards in it dashboard and buttons in it

   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.5
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Testing Functionality of Loyal Customers Card
   \   run keyword and continue on failure  Testing Functionality of Lost Customers Card
   \   run keyword and continue on failure  Testing Functionality of Popualr Food Card
   \   run keyword and continue on failure  Testing Functionality of Trending Card
