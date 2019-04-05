*** Settings ***
Documentation  this file contains all the keywords related to User Registration page
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
Click Email
    click element  ${RegisterEmailPath}
Check For Email Error Message
    wait until page contains  Email is required
Click Phone
    click element  ${RegisterPhonePath}
Click Country Code
    select from list by value  ${RegisterCountryCodePath}   +91
Check For Phone Error Message
    wait until page contains  Phone number is required
Click Password
    click element  ${RegisterPasswordPath}
Check For Password Error Message
    wait until page contains  Password is required
Click Get Started Button
    #click button  ${Get Started Button}
    click element  ${RegisterGet Started ButtonPath}
Check if Get Started Button is Disabled
    element should be disabled  ${RegisterGet Started ButtonPath}
Check if Get Started Button is Enabled
    element should be enabled  ${RegisterGet Started ButtonPath}
Click Background
    set focus to element  ${RegisterBackgroundPath}
    click element  ${RegisterBackgroundPath}
Validate Email Under Upper boundary Condition
    Click Background
    element should not contain  ${RegisterEmailPath}  maxlength
    #element should contain  ${EmailValid2}  Please enter valid email
    page should contain  Please enter valid email
Validate Phone Under Upper boundary Condition
    Click Background
    element attribute value should be  ${RegisterPhonePath}  maxlength  10
    #element should contain  ${PhoneValid2}  Please enter valid phone number
    page should contain  Please enter valid phone number
Validate Password Under Upper boundary Condition
    Click Background
    element should not contain  ${RegisterPasswordPath}  maxlength
    #element should contain  ${PasswordValid2}
    page should contain  Your password must be at least 8 to 10 characters, include a number, an uppercase letters, and a lowercase letter.


            #MIXED MATCH VALIDITATIONS
Validate Email Under Mixed-match Condition
    Click Background
    #element should contain  ${EmailValid2}  Please enter valid email
    page should contain  Please enter valid email
Validate Phone Under Mixed-match Condition
    Click Background
    page should not contain element  ${RegisterPhoneValid2Path}
Validate Password Under Mixed-match Condition
    Click Background
    page should not contain element  ${RegisterPasswordValidPath}
    page should not contain element  ${RegisterPasswordValid2Path}
                #PRACTICAL DATA
Validate Email Using Real Data
    Click Background
    page should not contain  Email is required
    page should not contain  Please enter valid email
Validate Phone Using Real Data
    Click Background
    page should not contain  Phone number is required
    page should not contain  Please enter valid Phone number

Validate Password Using Real Data
    Click Background
    page should not contain element  ${RegisterPasswordValidPath}
    page should not contain element  ${RegisterPasswordValid2Path}
