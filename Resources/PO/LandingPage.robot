*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Navigate to landing page
    go to  ${ENVIRONMENT}
Click Register Button
    click element  ${RegisterButtonPath}
Click Login Button
    click element  ${LoginButtonPath}
Click Forgot Password
    click element  ${ForgotPasswordBottonPath}
Click Email in Landiing page

Click Lets Go Button in Landiing page
    #set focus to element   ${LoginLetsGoPath}
    #click button  ${LoginLetsGoPath}
    press key  ${LoginLetsGoPath}  \\13

Validate Email In Login Page Using Real Data
    page should not contain  Email Required
    page should not contain  Email not valid
Validate Password In Login Page Using Real Data
    page should not contain  Password Required

Click Facebook Button
    set focus to element   ${Facebook Button}
    click element    ${Facebook Button}
    sleep  10s
Click FacebookLogin Button
    set focus to element   ${Facebook LogIn}
    click element    ${Facebook LogIn}


