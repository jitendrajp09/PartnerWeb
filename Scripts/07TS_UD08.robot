*** Settings ***
Documentation    This test scenario is to test and verify the layout of uploads&delivery page
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py
Resource  ../Resources/Data/DataManager.robot

Library  String
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
*** Test Cases ***
TC_LG_UD01
    [Documentation]     This test case is to Verify the layout of the uploads tab and test Logo upload process in uploads&delivery page

   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
  \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Enter Logo Credentials  ${SigninScenario}
TC_BN_UD02
    [Documentation]  This test case is to test Banner upload process in uploads&delivery page
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Enter Banner Credentials     ${SigninScenario}

TC_MI_UD03
    [Documentation]  This test case is to test Menu Item upload process in uploads&delivery page
   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.2
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
   \   run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
   \   run keyword and continue on failure  Enter Menu Images Credentials    ${SigninScenario}
TC_All_UD07
    [Documentation]  This test case is to verify the office delivery tab, test submit and + button by only filling all the fields with data within the boundary values

   ${ValidSigninScenrios}  DataManager.Get CSV Data  Resources/Data/NewUsers.csv
   set selenium speed  0.5
   :FOR  ${SigninScenario}  IN  @{ValidSigninScenrios}
  \    run keyword and continue on failure  Navigate to landing page
   \   run keyword and continue on failure  Click Login Button
   \   run keyword and continue on failure  Attempt Login  ${SigninScenario}
  # \   run keyword and continue on failure  Enter Office Delivary Credentials  ${SigninScenario}
   \   run keyword and continue on failure  Enter New Office Delivary Credentials   ${SigninScenario}

