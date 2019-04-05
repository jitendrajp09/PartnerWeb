*** Settings ***
Library    SeleniumLibrary
Resource  ../GlobalVariables/Xpaths.robot
Resource  ../Resources/common.robot
*** Keywords ***


Click profile tab in User Info Pannel
    click element  ${Profile button}

Click Change Password tab in User Info Pannel
    click element  ${Change Password Button}

Update First Name in User Profile
    [Arguments]  ${FirstName}
    input text  ${ProfileFirstName}  ${FirstName}

Update Last Name in User Profile
    [Arguments]  ${LastName}
    run keyword unless  '${LastName}' == '#BLANK'  input text  ${ProfileLastName}  ${LastName}

Update Email in User Profile
    [Arguments]  ${Email}
    run keyword unless  '${Email}' == '#BLANK'  input text  ${ProfileEmail}  ${Email}

Update Phone Number in User Profile
    [Arguments]  ${CountryCode}  ${PhoneNo}
    run keyword unless  '${PhoneNo}' == '#BLANK'  select option from list  ${ProfilePhoneCountryCode}  ${CountryCode}
    run keyword unless  '${PhoneNo}' == '#BLANK'  input text  ${ProfilePhone}  ${PhoneNo}

Click Submit Button in User Profile
    scroll element into view  ${ProfileSubmitButton}
    set focus to element  ${ProfileSubmitButton}
    click button  ${ProfileSubmitButton}

Enter old password
    [Arguments]  ${Password}
    input text  ${OldPassword}  ${Password}

Enter new password
    [Arguments]  ${NewPassword}
    input text  ${NewPasswordPath}  ${NewPassword}

Confirm new password
    [Arguments]  ${ConfirmPassword}
    input text  ${ConfirmNewPasswordPath}  ${ConfirmPassword}

Click Submit Button in Change Password
    scroll element into view  ${ChangePasswordSubmitButton}
    set focus to element  ${ChangePasswordSubmitButton}
    click button  ${ChangePasswordSubmitButton}

Update User Info in Profile
    [Arguments]  ${User Profile Credentials}
    run keyword and continue on failure  Update First Name in User Profile  ${User Profile Credentials[52]}
    Update Last Name in User Profile  ${User Profile Credentials[53]}
    #Update Email in User Profile  ${User Profile Credentials[0]}
    Update Phone Number in User Profile  ${Register+91}  ${User Profile Credentials[54]}
    Click Submit Button in User Profile

Change Password in User Profile
    [Arguments]  ${Change Password Credentials}
    Enter old password  ${Change Password Credentials[1]}
    Enter new password  ${Change Password Credentials[1]}
    Confirm new password  ${Change Password Credentials[1]}
    Click Submit Button in Change Password

