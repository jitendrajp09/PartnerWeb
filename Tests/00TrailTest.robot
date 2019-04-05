*** Settings ***
Documentation     A test suite with a single test for GQPartnersWeb
Library           SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  ../Resources/CustomLibrary/Csv.py

Suite Setup  Begin Web Test
Test Setup  Begin Test Setup
#Test Teardown  common.End Web Test

*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data}  read csv file  ${FilePath}
    [Return]  ${Data}

*** Test Cases ***
test

    set selenium speed  0.2
    test the subscription page  ${TestData}
    sleep  5