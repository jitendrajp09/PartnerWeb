*** Settings ***
Documentation     A test suite with a single test for GQPartnersWeb
Library           SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py

Test Setup  common.Begin Web Test
#Test Teardown  common.End Web Test

*** Variables ***
*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data}  read csv file  ${FilePath}
    [Return]  ${Data}

*** Test Cases ***
TC_MU_MeM01
    [Documentation]     This test case is to verify and test the menu management page and menu upload process
    ${ValidSigninScenrios}  Get CSV Data  Resources/Data/NewUsers.csv
    set selenium speed   0.2
     Navigate to landing page
    Click Login Button
    Attempt Login  ${TestData}
    Attempt to Upload a Menu     ${TestData}