*** Settings ***
Resource  ../Resources/PO/UserRegistrationPage.robot
Resource  ../Resources/PO/BusinessRegistrationPage.robot
Resource  ../Resources/PO/SubscriptionPage.robot
Resource  ../Resources/PO/SideMenu.robot
Resource  ../Resources/PO/UserInfoPage.robot
Resource  ../Resources/PO/OperatingHoursPage.robot
Resource  ../Resources/PO/UploadsPage.robot
Resource  ../Resources/PO/ArchivedOrdersPage.robot
Resource  ../Resources/PO/DashboardPage.robot
Resource  ../Resources/PO/MenuManagementPage.robot
Resource  ../Resources/common.robot
Resource  ../GlobalVariables/BoundaryVariables.robot
Resource  ../GlobalVariables/Xpaths.robot
*** Keywords ***
                            #USER REGISTRATION PAGE KEYWORDS
test the user registration page under lower boundary conditions
    Click Email
    Click Background
    sleep  1s
    Check For Email Error Message
    sleep  1s
    Click Phone
    sleep  1s
    Click Background
    sleep  1s
    Check For Phone Error Message
    sleep  1s
    Click Password
    Click Background
    sleep  1s
    Check For Password Error Message
    sleep  1s
    Check if Get Started Button is Disabled
    sleep  1s
    Click Get Started Button
test the user registration page under upper boundary conditions
    Input text into elements  ${RegisterEmailPath}  ${Upper Boundary String}
    sleep  1s
    Validate Email Under Upper boundary Condition
    sleep  1s
    #Click Country
    #sleep  1s
    Input text into elements  ${RegisterphonePath}  ${Numbers}
    sleep  1s
    Validate Phone Under Upper boundary Condition
    sleep  1s
    Input text into elements  ${RegisterPasswordPath}  ${Upper Boundary String}
    sleep  1s
    Validate Password Under Upper boundary Condition
    sleep  1s
    Check if Get Started Button is Disabled
    sleep  1s
    Click Get Started Button
test the user registration page under mixed-match conditions
    Input text into elements  ${RegisterEmailPath}  ${Mixed Match String}
    sleep  1s
    Validate Email Under Mixed-match Condition
    sleep  1s
    Input text into elements  ${RegisterphonePath}  ${Numbers}
    sleep  1s
    Validate Phone Under Mixed-match Condition
    sleep  1s
    Input text into elements  ${RegisterPasswordPath}  ${Mixed Match String}
    sleep  1s
    Validate Password Under Mixed-match Condition
    sleep  1s
    Check if Get Started Button is Disabled
    sleep  1s
    Click Get Started Button
test the user registration page by filling the all fields with practical data within the boundary values
    Input text into elements  ${RegisterEmailPath}  &{UserRegData1}[Email]
    sleep  1s
    Validate Email Using Real Data
    sleep  1s
    Input text into elements  ${RegisterphonePath}  &{UserRegData1}[Phone]
    sleep  1s
    Validate Phone Using Real Data
    sleep  1s
    Input text into elements  ${RegisterPasswordPath}  &{UserRegData1}[Password]
    sleep  1s
    Validate Password Using Real Data
    sleep  1s
    Check if Get Started Button is Enabled
    sleep  1s
    Click Get Started Button
Register A New User
    [Arguments]  ${Signup Credentials}
    run keyword unless  '${Signup Credentials[0]}' == '#BLANK'  Input text into elements  ${RegisterEmailPath}  ${Signup Credentials[0]}
    sleep  1s
    #Validate Email Using Real Data
    #sleep  1s
    run keyword unless  '${Signup Credentials[1]}' == '#BLANK'  Input text into elements  ${RegisterPasswordPath}  ${Signup Credentials[1]}
    sleep  1s
    #Validate Password Using Real Data
    #sleep  1s
    select option from list  ${RegisterCountryCodePath}  ${Register+91}
    sleep  1s
    run keyword unless  '${Signup Credentials[2]}' == '#BLANK'  Input text into elements  ${RegisterphonePath}  ${Signup Credentials[2]}
    sleep  1s
    #Validate Phone Using Real Data
    #sleep  1s
    Check if Get Started Button is Enabled
    sleep  1s
    Click Get Started Button
    wait until page contains element  ${BusinessPageValid}  10

Attempt to Login
    Input text into elements  ${LoginEmailPath}  &{Test_Logins}[Email]
    Validate Email In Login Page Using Real Data
    Input text into elements  ${LoginPasswordPath}  &{Test_Logins}[Password]
    Validate Password In Login Page Using Real Data
    Click Lets Go Button in Landiing page
    sleep  5
    #wait until page contains element  ${BusinessPageValid}  10


Attempt Login
    [Arguments]  ${Login Credentials}
    run keyword unless  '${Login Credentials[0]}' == '#BLANK'  Input text into elements  ${LoginEmailPath}  ${Login Credentials[0]}
    Validate Email In Login Page Using Real Data
    run keyword unless  '${Login Credentials[1]}' == '#BLANK'  Input text into elements  ${LoginPasswordPath}  ${Login Credentials[1]}
    Validate Password In Login Page Using Real Data
    Click Lets Go Button in Landiing page
    sleep  5
    #wait until page contains element  ${BusinessPageValid}  10

                        #BUSINESS REGISTRATION KEYWORDS

test the business registration page under lower boundary conditions
    #wait until element is visible  ${ShortNamePath}
    sleep  10s
    Click Legal Name
    Click Background In Business Page
    Check For Legal Name Message
    Click Short Name
    Click Background In Business Page
    Check For Short Name Error Message
    Click Sales Tax in Business Page
    Click Background In Business Page
    #Check For Sales Tax Error Message
    Click Total Tables in Business Page
    Click Background In Business Page
    #Check For Total Tables Error Message
    Click Total Occupancy in Business Page
    Click Background In Business Page
    #Check For Total Occupancy Error Message
    Click Address in Business Page
    Click Background In Business Page
    Check For Address Error Message
    Click City in Business Page
    Click Background In Business Page
    Check For City Error Message
    Click State in Business Page
    Click Background In Business Page
    Check For State Error Message
    Click Postal Code in Business Page
    Click Background In Business Page
    Check For Postal Code Error Message
    Click Country in Business Page
    Click Background In Business Page
    Check For Country Error Message
    Click WorkPhone in Business Page
    Click Background In Business Page
    #Check For WorkPhone Error Message
    Click Website in Business Page
    Click Background In Business Page
    Check For Website Error Message
    Check if Submit Button In Business Page is Disabled
test the business registration page under upper boundary conditions
    sleep    5s
    Input text into elements  ${LegalNamePath}  ${Upper Boundary String}
    Validate Legal Name Under Upper boundary Condition
    Set Focus To Element  ${ShortNamePath}
    Input text into elements  ${ShortNamePath}  ${Upper Boundary String}
    Validate Short Name Under Upper boundary Condition
    Set Focus To Element  ${SalesTaxPath}
    Input text into elements  ${SalesTaxPath}  110000000
    Validate Sales Tax Under Upper boundary Condition
    Set Focus To Element  ${TotalTablesPath}
    Input text into elements  ${TotalTablesPath}  999999999999
    Validate Total Tables Under Upper boundary Condition
    Set Focus To Element  ${TotalOccupancyPath}
    Input text into elements  ${TotalOccupancyPath}  ${Numbers}
    Validate Total Occupancy Under Upper boundary Condition
    Set Focus To Element    ${AddressPath}
    Input text into elements  ${AddressPath}  ${Upper Boundary String}
    Validate Address Under Upper boundary Condition
    Input text into elements  ${CityPath}  ${Upper Boundary String}
    Validate City Under Upper boundary Condition
    Input text into elements  ${statePath}  ${Upper Boundary String}
    Validate State Under Upper boundary Condition
    Input text into elements  ${PostalCodePath}  ${Upper Boundary String}
    Validate Postal Code Under Upper boundary Condition
    Input text into elements  ${CountryPath}  ${Upper Boundary String}
    Validate Country Under Upper boundary Condition
    Set Focus To Element    ${WorkPhonePath}
    Input text into elements  ${WorkPhonePath}  ${Numbers}
    Validate WorkPhone Under Upper boundary Condition
    Input text into elements  ${WebsitePath}  ${Upper Boundary String}
    Validate Website Under Upper boundary Condition

    Check if Submit Button In Business Page is Disabled
test the business registration page under mixed-match conditions
     sleep    5s
    Input text into elements  ${LegalNamePath}  ${Mixed Match String}
    Validate Legal Name Under Mixed-match Condition
    Set Focus To Element  ${ShortNamePath}
    Input text into elements  ${ShortNamePath}  ${Mixed Match String}
    Validate Short Name Under Mixed-match Condition
    Set Focus To Element  ${SalesTaxPath}
    Input text into elements  ${SalesTaxPath}  ${Mixed Match String}
    Validate Sales Tax Under Mixed-match Condition
    Set Focus To Element  ${TotalTablesPath}
    Input text into elements  ${TotalTablesPath}  ${Mixed Match String}
    Validate Total Tables Under Mixed-match Condition
    Set Focus To Element  ${TotalOccupancyPath}
    Input text into elements  ${TotalOccupancyPath}  ${Mixed Match String}
    Validate Total Occupancy Under Mixed-match Condition
    Set Focus To Element  ${AddressPath}
    Input text into elements  ${AddressPath}  ${Mixed Match String}
    Validate Address Under Mixed-match Condition
    Set Focus To Element  ${CityPath}
    Input text into elements  ${CityPath}  ${Mixed Match String}
    Validate City Under Mixed-match Condition
    Set Focus To Element  ${StatePath}
    Input text into elements  ${StatePath}  ${Mixed Match String}
    Validate State Under Mixed-match Condition
    Set Focus To Element  ${PostalCodePath}
    Input text into elements  ${PostalCodePath}  ${Mixed Match String}
    Validate Postal Code Under Mixed-match Condition
    Set Focus To Element  ${CountryPath}
    Input text into elements  ${CountryPath}  ${Mixed Match String}
    Validate Country Under Mixed-match Condition
    Set Focus To Element  ${WorkPhonePath}
    Input text into elements  ${WorkPhonePath}  ${Mixed Match String}
    Validate WorkPhone Under Mixed-match Condition
    Set Focus To Element  ${WebsitePath}
    Input text into elements  ${WebsitePath}  ${Mixed Match String}
    Validate Website Under Mixed-match Condition
    Check if Submit Button In Business Page is Disabled
test the business registration page by filling only mandatory fields with practical data within the boundary values
    [Arguments]  ${Business Creation Credentials}
    sleep  5s
    run keyword unless  '${Business Creation Credentials[3]}' == '#BLANK'  Input text into elements  ${LegalNamePath}  ${Business Creation Credentials[3]}
    Set Focus To Element  ${ShortNamePath}
    run keyword unless  '${Business Creation Credentials[4]}' == '#BLANK'  Input text into elements  ${ShortNamePath}  ${Business Creation Credentials[4]}
    select option from list  ${CategoryPath}  ${Food&DrinkPath}
    select option from list  ${SubCategoryPath}  ${RestaurantPath}
    select option from list  ${TypePath}  ${IndianTypePath}
    select option from list  ${AveragePath}  ${15MinPath}
    scroll element into view  ${TagsPath}
    select Tags  ${TagsPath}  ${BarbecuePath}  ${AfghaniPath}  ${BangladeshiPath}  ${BrewPubPath}
    Set Focus To Element  ${SalesTaxPath}
    run keyword unless  '${Business Creation Credentials[5]}' == '#BLANK'  Input text into elements  ${SalesTaxPath}  ${Business Creation Credentials[5]}
    Set Focus To Element  ${AddressPath}
    run keyword unless  '${Business Creation Credentials[8]}' == '#BLANK'  Input text into elements  ${AddressPath}  ${Business Creation Credentials[8]}
    Set Focus To Element  ${CityPath}
    run keyword unless  '${Business Creation Credentials[9]}' == '#BLANK'  Input text into elements  ${CityPath}  ${Business Creation Credentials[9]}
    Set Focus To Element  ${StatePath}
    run keyword unless  '${Business Creation Credentials[10]}' == '#BLANK'  Input text into elements  ${StatePath}  ${Business Creation Credentials[10]}
    Set Focus To Element  ${PostalCodePath}
    run keyword unless  '${Business Creation Credentials[11]}' == '#BLANK'  Input text into elements  ${PostalCodePath}  ${Business Creation Credentials[11]}
    Set Focus To Element  ${CountryPath}
    run keyword unless  '${Business Creation Credentials[12]}' == '#BLANK'  Input text into elements  ${CountryPath}  ${Business Creation Credentials[12]}
    #check if submit button in business page is enabled
    click submit button in business page
test the business registration page by filling all fields with practical data within the boundary values
    #alert should be present  Bussiness doesn't exist for  this user  10
    sleep  5s
    Input text into elements  ${LegalNamePath}  &{BusinessRegData1}[LegalName]
    Set Focus To Element  ${ShortNamePath}
    Input text into elements  ${ShortNamePath}  &{BusinessRegData1}[ShortName]
    select option from list  ${CategoryPath}  ${Food&DrinkPath}
    select option from list  ${SubCategoryPath}  ${RestaurantPath}
    select option from list  ${TypePath}  ${IndianTypePath}
    select option from list  ${AveragePath}  ${15MinPath}
    #scroll element into view  ${TagsPath}
    scroll element into view  ${TagsPath}
    select Tags  ${TagsPath}  ${BarbecuePath}  ${AfghaniPath}  ${BangladeshiPath}  ${BrewPubPath}
    Set Focus To Element  ${SalesTaxPath}
    Input text into elements  ${SalesTaxPath}  &{BusinessRegData1}[SalesTax]
    Set Focus To Element  ${TotalTablesPath}
    Input text into elements  ${TotalTablesPath}  &{BusinessRegData1}[TotalTables]
    Set Focus To Element  ${TotalOccupancyPath}
    Input text into elements  ${TotalOccupancyPath}  &{BusinessRegData1}[TotalOccupancy]
    Set Focus To Element  ${AddressPath}
    Input text into elements  ${AddressPath}  &{BusinessRegData1}[Address]
    Set Focus To Element  ${CityPath}
    Input text into elements  ${CityPath}  &{BusinessRegData1}[City]
    Set Focus To Element  ${StatePath}
    Input text into elements  ${StatePath}  &{BusinessRegData1}[State]
    Set Focus To Element  ${PostalCodePath}
    Input text into elements  ${PostalCodePath}  &{BusinessRegData1}[PostalCode]
    Set Focus To Element  ${CountryPath}
    Input text into elements  ${CountryPath}  &{BusinessRegData1}[Country]
    Set Focus To Element   ${WorkPhoneCountryCodePath}
    select option from list  ${WorkPhoneCountryCodePath}  ${+91}
    Input text into elements  ${WorkPhonePath}  &{BusinessRegData1}[WorkPhone]
    Input text into elements  ${WebsitePath}  &{BusinessRegData1}[Website]
    sleep  2
    check if submit button in business page is enabled
    click submit button in business page  ${BusinessSubmitPath}

Test Business Creation
    [Arguments]  ${Business Creation Credentials}
    sleep  15
    Click on Info&Hours tab
    sleep  5
    run keyword unless  '${Business Creation Credentials[3]}' == '#BLANK'  Input text into elements  ${LegalNamePath}  ${Business Creation Credentials[3]}
    Set Focus To Element  ${ShortNamePath}
    run keyword unless  '${Business Creation Credentials[4]}' == '#BLANK'  Input text into elements  ${ShortNamePath}  ${Business Creation Credentials[4]}
    select option from list  ${CategoryPath}  ${Food&DrinkPath}
    select option from list  ${SubCategoryPath}  ${RestaurantPath}
    select option from list  ${TypePath}  ${IndianTypePath}
    select option from list  ${AveragePath}  ${15MinPath}
    scroll element into view  ${TagsPath}
    select Tags  ${TagsPath}  ${BarbecuePath}  ${AfghaniPath}  ${BangladeshiPath}  ${BrewPubPath}
    sleep  1
    select Tags  ${TagsPath}  ${BarbecuePath}  ${AfghaniPath}  ${BangladeshiPath}  ${BrewPubPath}
    Set Focus To Element  ${SalesTaxPath}
    run keyword unless  '${Business Creation Credentials[5]}' == '#BLANK'  Input text into elements  ${SalesTaxPath}  ${Business Creation Credentials[5]}
    Set Focus To Element  ${TotalTablesPath}
    run keyword unless  '${Business Creation Credentials[6]}' == '#BLANK'  Input text into elements  ${TotalTablesPath}  ${Business Creation Credentials[6]}
    Set Focus To Element  ${TotalOccupancyPath}
    run keyword unless  '${Business Creation Credentials[7]}' == '#BLANK'  Input text into elements  ${TotalOccupancyPath}  ${Business Creation Credentials[7]}
    Set Focus To Element  ${AddressPath}
    run keyword unless  '${Business Creation Credentials[8]}' == '#BLANK'  Input text into elements  ${AddressPath}  ${Business Creation Credentials[8]}
    Set Focus To Element  ${CityPath}
    run keyword unless  '${Business Creation Credentials[9]}' == '#BLANK'  Input text into elements  ${CityPath}  ${Business Creation Credentials[9]}
    Set Focus To Element  ${StatePath}
    run keyword unless  '${Business Creation Credentials[10]}' == '#BLANK'  Input text into elements  ${StatePath}  ${Business Creation Credentials[10]}
    Set Focus To Element  ${PostalCodePath}
    run keyword unless  '${Business Creation Credentials[11]}' == '#BLANK'  Input text into elements  ${PostalCodePath}  ${Business Creation Credentials[11]}
    Set Focus To Element  ${CountryPath}
    run keyword unless  '${Business Creation Credentials[12]}' == '#BLANK'  Input text into elements  ${CountryPath}  ${Business Creation Credentials[12]}
    Set Focus To Element   ${WorkPhoneCountryCodePath}
    select option from list  ${WorkPhoneCountryCodePath}  ${+91}
    run keyword unless  '${Business Creation Credentials[14]}' == '#BLANK'  Input text into elements  ${WorkPhonePath}  ${Business Creation Credentials[14]}
    run keyword unless  '${Business Creation Credentials[15]}' == '#BLANK'  Input text into elements  ${WebsitePath}  ${Business Creation Credentials[15]}
    sleep  2
    check if submit button in business page is enabled
    click submit button in business page
    sleep  2


Attempt Business Creation
    [Arguments]  ${Business Creation Credentials}
    #alert should be present  Bussiness doesn't exist for  this user  10
    sleep  5s
    run keyword unless  '${Business Creation Credentials[3]}' == '#BLANK'  Input text into elements  ${LegalNamePath}  ${Business Creation Credentials[3]}
    Set Focus To Element  ${ShortNamePath}
    run keyword unless  '${Business Creation Credentials[4]}' == '#BLANK'  Input text into elements  ${ShortNamePath}  ${Business Creation Credentials[4]}
    select option from list  ${CategoryPath}  ${Food&DrinkPath}
    select option from list  ${SubCategoryPath}  ${RestaurantPath}
    select option from list  ${TypePath}  ${IndianTypePath}
    select option from list  ${AveragePath}  ${15MinPath}
    scroll element into view  ${TagsPath}
    select Tags  ${TagsPath}  ${BarbecuePath}  ${AfghaniPath}  ${BangladeshiPath}  ${BrewPubPath}
    Set Focus To Element  ${SalesTaxPath}
    run keyword unless  '${Business Creation Credentials[5]}' == '#BLANK'  Input text into elements  ${SalesTaxPath}  ${Business Creation Credentials[5]}
    Set Focus To Element  ${TotalTablesPath}
    run keyword unless  '${Business Creation Credentials[6]}' == '#BLANK'  Input text into elements  ${TotalTablesPath}  ${Business Creation Credentials[6]}
    Set Focus To Element  ${TotalOccupancyPath}
    run keyword unless  '${Business Creation Credentials[7]}' == '#BLANK'  Input text into elements  ${TotalOccupancyPath}  ${Business Creation Credentials[7]}
    Set Focus To Element  ${AddressPath}
    run keyword unless  '${Business Creation Credentials[8]}' == '#BLANK'  Input text into elements  ${AddressPath}  ${Business Creation Credentials[8]}
    Set Focus To Element  ${CityPath}
    run keyword unless  '${Business Creation Credentials[9]}' == '#BLANK'  Input text into elements  ${CityPath}  ${Business Creation Credentials[9]}
    Set Focus To Element  ${StatePath}
    run keyword unless  '${Business Creation Credentials[10]}' == '#BLANK'  Input text into elements  ${StatePath}  ${Business Creation Credentials[10]}
    Set Focus To Element  ${PostalCodePath}
    run keyword unless  '${Business Creation Credentials[11]}' == '#BLANK'  Input text into elements  ${PostalCodePath}  ${Business Creation Credentials[11]}
    Set Focus To Element  ${CountryPath}
    run keyword unless  '${Business Creation Credentials[12]}' == '#BLANK'  Input text into elements  ${CountryPath}  ${Business Creation Credentials[12]}
    Set Focus To Element   ${WorkPhoneCountryCodePath}
    run keyword unless  '${Business Creation Credentials[13]}' == '#BLANK'  select option from list  ${WorkPhoneCountryCodePath}  ${+91}
    run keyword unless  '${Business Creation Credentials[14]}' == '#BLANK'  Input text into elements  ${WorkPhonePath}  ${Business Creation Credentials[14]}
    run keyword unless  '${Business Creation Credentials[15]}' == '#BLANK'  Input text into elements  ${WebsitePath}  ${Business Creation Credentials[15]}
    sleep  2
    check if submit button in business page is enabled
    click submit button in business page
    #wait until page contains element   ${MINI}

                                #User Info

Test Expansion pannel and options in it
    [Arguments]  ${Expansion pannel Credentials}
    sleep  5
    Click on Expansion Pannel
    Click profile tab in User Info Pannel
    run keyword and continue on failure  Update User Info in Profile  ${Expansion pannel Credentials}
    sleep  5
    Click Change Password tab in User Info Pannel
    run keyword and continue on failure  Change Password in User Profile  ${Expansion pannel Credentials}



                                #Subscription

test the subscription page
    [Arguments]  ${Signup Credentials}
    sleep  10
    set focus to element  ${Subscription Renewal}
    click element       ${Subscription Renewal}
    sleep  2
    Choose Subscription Plan
    wait until page contains  Payment Terminal
    sleep  5
    input text  ${SubscriptionLastNamePath}  tester
    Click Subscription Check Box
    Click Subscription Next
    click element  ${CardDetails}
    #scroll element into view  xpath=//*[@id="wizardProfile"]/form/div[1]
    Input Credit Card Details  ${Signup Credentials[16]}  ${Signup Credentials[17]}  ${Signup Credentials[18]}
    Submit Credit Card Details
    sleep  5s

Attempt Subscription
    [Arguments]  ${Subscription Credentials}
    sleep  5s
    Click on Subscription Renewal tab
    sleep  2
    Choose Subscription Plan
    wait until page contains  Payment Terminal
    sleep  5s
    input text  ${SubscriptionLastNamePath}  tester
    Click Subscription Check Box
    Click Subscription Next
    run keyword unless  '${Subscription Credentials[16]}' == '#BLANK'  Input Credit Card Details  ${Subscription Credentials[16]}  ${Subscription Credentials[17]}  ${Subscription Credentials[18]}
    Submit Credit Card Details


Attempt to Upload a Menu
      [Arguments]  ${Menu Credentials}
        sleep  5s
       Click on Menu Management tab
       Click Menu Upload Button
       run keyword unless  '${Menu Credentials[19]}' == '#BLANK'  Upload a Menu     ${Menu Credentials[19]}
       Click Menu Close Icon
       Click Menu Upload Button
       run keyword unless  '${Menu Credentials[19]}' == '#BLANK'  Upload a Menu     ${Menu Credentials[19]}
       Click Menu Upload Icon
       sleep  5s
       Click Menu Preview Submit Button
       sleep  2s

test add menu item under lower boundary conditions
    Click on Menu Management tab
    Click Add Menu Item button
    sleep  1
    Click Item Name
    Validate Item Name Under Lower boundary Condition
    Click Item Display Sequence
    Validate Item Display Sequence Under Lower boundary Condition
    Click Item Price
    Validate Item Price Under Lower boundary Condition
    Click Description
    Validate Description Under Lower boundary Condition
    Click Category Display Sequence
    Validate Category Display Sequence Under Lower boundary Condition
    Click Calories
    Validate Calories Under Lower boundary Condition
    Click Ingredients
    Validate Ingredients Under Lower boundary Condition
    #Check if Submit Button In add menu item is Disabled

test add menu item under upper boundary conditions
    sleep  2
    Click on Menu Management tab
    Click Add Menu Item button
    sleep  1s
    Input text into elements  ${Item Name}  ${Upper Boundary String}
    Validate Item Name Under Upper boundary Condition
    Input text into elements  ${Item Display Sequence}  ${upper boundary number}
    Validate Item Display Sequence Under Upper boundary Condition
    Input text into elements  ${Item Price}  ${upper boundary number}
    Validate Item Price Under Upper boundary Condition
    Input text into elements  ${Description}  ${Upper Boundary String}
    Validate Description Under Upper boundary Condition
    Input text into elements  ${Category Display Sequence}  ${upper boundary number}
    Validate Category Display Sequence Under Upper boundary Condition
    Input text into elements  ${Calories}  ${Numbers}
    Validate Calories Under Upper boundary Condition
    Input text into elements  ${Ingredients}  ${Upper Boundary String}
    Validate Ingredients Under Upper boundary Condition
    #Check if Submit Button In add menu item is Disabled

test add menu item under mixed-match conditions
    sleep  5s
    Click on Menu Management tab
    Click Add Menu Item button
    sleep  1s
    Input text into elements  ${Item Name}  ${Mixed Match String}
    Validate Item Name Under mixed match Condition
    Input text into elements  ${Item Display Sequence}  ${Numbers}
    Validate Item Display Sequence Under mixed match Condition
    Input text into elements  ${Item Price}  ${Upper Boundary String}
    Validate Item Price Under mixed match Condition
    Input text into elements  ${Description}  ${Mixed Match String}
    Validate Description Under mixed match Condition
    Input text into elements  ${Category Display Sequence}  ${Numbers}
    Validate Category Display Sequence Under mixed match Condition
    Input text into elements  ${Calories}  ${Numbers}
    Validate Calories Under Upper boundary Condition
    Input text into elements  ${Ingredients}  ${Mixed Match String}
    Validate Ingredients Under mixed match Condition
    #Check if Submit Button In add menu item is Disabled

test add menu item by filling only mandatory fields with practical data within the boundary values
    [Arguments]  ${Menu Item Credentials}
       sleep   5s
       Click on Menu Management tab
       Click Add Menu Item button
       sleep  1s
       run keyword unless  '${Menu Item Credentials[20]}' == '#BLANK'  Input text into elements      ${Item Name}     ${Menu Item Credentials[20]}
       run keyword unless  '${Menu Item Credentials[21]}' == '#BLANK'  Input text into elements      ${Item Display Sequence}     ${Menu Item Credentials[21]}
       run keyword unless  '${Menu Item Credentials[22]}' == '#BLANK'  Input text into elements      ${ItemPrice}     ${Menu Item Credentials[22]}
       select option from list   ${ItemCategory}     ${Soups}
       run keyword unless  '${Menu Item Credentials[24]}' == '#BLANK'  Input text into elements      ${Category Display Sequence}    ${Menu Item Credentials[24]}
       select option from list      ${MenuType}     ${Lunch}
       select option from list      ${Classification}    ${Vegetarian}
       select option from list      ${In stock}     ${Yes}
       Check if Submit Button In add menu item is Enabled
       Click Menu Item Submit button


Attempt to Add Menu a Item
     [Arguments]  ${Menu Item Credentials}
       sleep   5s
       Click on Menu Management tab
       Click Add Menu Item button
       sleep  1s
       run keyword unless  '${Menu Item Credentials[20]}' == '#BLANK'  Input text into elements      ${Item Name}     ${Menu Item Credentials[20]}
       run keyword unless  '${Menu Item Credentials[21]}' == '#BLANK'  Input text into elements      ${Item Display Sequence}     ${Menu Item Credentials[21]}
       run keyword unless  '${Menu Item Credentials[22]}' == '#BLANK'  Input text into elements      ${ItemPrice}     ${Menu Item Credentials[22]}
       run keyword unless  '${Menu Item Credentials[23]}' == '#BLANK'  Input text into elements      ${Description}     ${Menu Item Credentials[23]}
       select option from list   ${ItemCategory}     ${Salads}
       run keyword unless  '${Menu Item Credentials[24]}' == '#BLANK'  Input text into elements      ${Category Display Sequence}    ${Menu Item Credentials[24]}
       run keyword unless  '${Menu Item Credentials[25]}' == '#BLANK'  Input text into elements      ${Calories}    ${Menu Item Credentials[25]}
       run keyword unless  '${Menu Item Credentials[26]}' == '#BLANK'  Input text into elements      ${Ingredients}    ${Menu Item Credentials[26]}
       select option from list      ${MenuType}     ${Brunch}
       select option from list      ${Classification}    ${Vegetarian}
       select option from list      ${In stock}     ${Yes}
       set focus to element     ${MenuImageUpload}
       run keyword unless  '${Menu Item Credentials[27]}' == '#BLANK'  choose file    ${MenuImageUpload}     ${Menu Item Credentials[27]}
       Click Menu Item Submit button





                                        #Operating Hours

Test Operating Hours for the resturant
    [Arguments]  ${OperatingHours Credentials}
    set selenium speed  0.3
    sleep  5s
    Click on Info&Hours tab
    Click Operating Hours tab
    sleep  3s
    #1
    Activate Operating Hours For a Day  ${SundayCheckBox}
    Set Operating Hours For a DayPart  ${SundayDayPart1}    ${Sundaybf}  ${SundayOpen1}  ${OperatingHours Credentials[28]}   ${SundayClose1}   ${OperatingHours Credentials[29]}
    Add Day Part  ${SunAddDayPart}
    Set Operating Hours For a DayPart  ${SundayDayPart2}    ${Sundayln}  ${SundayOpen2}  ${OperatingHours Credentials[28]}   ${SundayClose2}   ${OperatingHours Credentials[29]}
    Add Day Part  ${SunAddDayPart}
    Set Operating Hours For a DayPart  ${SundayDayPart3}    ${Sundaydn}  ${SundayOpen3}  ${OperatingHours Credentials[28]}   ${SundayClose3}   ${OperatingHours Credentials[29]}


    #2
    #scroll element into view  ${Opening Hours}
    Activate Operating Hours For a Day  ${MondayCheckBox}
    Set Operating Hours For a DayPart  ${MondayDayPart1}    ${Mondaybf}   ${MondayOpen1}   ${OperatingHours Credentials[28]}   ${MondayClose1}   ${OperatingHours Credentials[29]}
    Add Day Part  ${MonAddDayPart}
    Set Operating Hours For a DayPart  ${MondayDayPart2}    ${Mondayln}   ${MondayOpen2}   ${OperatingHours Credentials[28]}   ${MondayClose2}   ${OperatingHours Credentials[29]}
    Add Day Part  ${MonAddDayPart}
    Set Operating Hours For a DayPart  ${MondayDayPart3}    ${Mondaydn}   ${MondayOpen3}   ${OperatingHours Credentials[28]}   ${MondayClose3}   ${OperatingHours Credentials[29]}

    #3
    Activate Operating Hours For a Day  ${TuesdayCheckBox}
    Set Operating Hours For a DayPart  ${TuesdayDayPart1}   ${Tuesdaybf}  ${TuesdayOpen1}   ${OperatingHours Credentials[28]}   ${TuesdayClose1}   ${OperatingHours Credentials[29]}
    Add Day Part  ${TueAddDayPart}
    Set Operating Hours For a DayPart  ${TuesdayDayPart2}   ${Tuesdayln}  ${TuesdayOpen2}   ${OperatingHours Credentials[28]}   ${TuesdayClose2}   ${OperatingHours Credentials[29]}
    Add Day Part  ${TueAddDayPart}
    Set Operating Hours For a DayPart  ${TuesdayDayPart3}   ${Tuesdaydn}  ${TuesdayOpen3}   ${OperatingHours Credentials[28]}   ${TuesdayClose3}   ${OperatingHours Credentials[29]}

    #4
    Activate Operating Hours For a Day  ${WednesdayCheckBox}
    Set Operating Hours For a DayPart  ${WednesdayDayPart1}  ${Wednesdaybf}  ${WednesdayOpen1}  ${OperatingHours Credentials[28]}   ${WednesdayClose1}  ${OperatingHours Credentials[29]}
    Add Day Part  ${WedAddDayPart}
    Set Operating Hours For a DayPart  ${WednesdayDayPart2}  ${Wednesdayln}  ${WednesdayOpen2}  ${OperatingHours Credentials[28]}   ${WednesdayClose2}  ${OperatingHours Credentials[29]}
    Add Day Part  ${WedAddDayPart}
    Set Operating Hours For a DayPart  ${WednesdayDayPart3}  ${Wednesdaydn}  ${WednesdayOpen3}  ${OperatingHours Credentials[28]}   ${WednesdayClose3}  ${OperatingHours Credentials[29]}

    #5
    Activate Operating Hours For a Day  ${ThursdayCheckBox}
    Set Operating Hours For a DayPart  ${ThursdayDayPart1}  ${Thursdaybf}  ${ThursdayOpen1}  ${OperatingHours Credentials[28]}   ${ThursdayClose1}   ${OperatingHours Credentials[29]}
    Add Day Part  ${ThuAddDayPart}
    Set Operating Hours For a DayPart  ${ThursdayDayPart2}  ${Thursdayln}  ${ThursdayOpen2}  ${OperatingHours Credentials[28]}   ${ThursdayClose2}   ${OperatingHours Credentials[29]}
    Add Day Part  ${ThuAddDayPart}
    Set Operating Hours For a DayPart  ${ThursdayDayPart3}  ${Thursdaydn}  ${ThursdayOpen3}  ${OperatingHours Credentials[28]}   ${ThursdayClose3}   ${OperatingHours Credentials[29]}

    #6
    Activate Operating Hours For a Day  ${FridayCheckBox}
    Set Operating Hours For a DayPart  ${FridayDayPart1}    ${Fridaybf}    ${FridayOpen1}    ${OperatingHours Credentials[28]}   ${FridayClose1}      ${OperatingHours Credentials[29]}
    Add Day Part  ${FriAddDayPart}
    Set Operating Hours For a DayPart  ${FridayDayPart2}    ${Fridayln}    ${FridayOpen2}    ${OperatingHours Credentials[28]}   ${FridayClose2}      ${OperatingHours Credentials[29]}
    Add Day Part  ${FriAddDayPart}
    Set Operating Hours For a DayPart  ${FridayDayPart3}    ${Fridaydn}    ${FridayOpen3}    ${OperatingHours Credentials[28]}   ${FridayClose3}      ${OperatingHours Credentials[29]}

    #7
    Activate Operating Hours For a Day  ${SaturdayCheckBox}
    Set Operating Hours For a DayPart  ${SaturdayDayPart1}  ${Saturdaybf}  ${SaturdayOpen1}  ${OperatingHours Credentials[28]}   ${SaturdayClose1}   ${OperatingHours Credentials[29]}
    Add Day Part  ${SatAddDayPart}
    Set Operating Hours For a DayPart  ${SaturdayDayPart2}  ${Saturdayln}  ${SaturdayOpen2}  ${OperatingHours Credentials[28]}   ${SaturdayClose2}   ${OperatingHours Credentials[29]}
    Add Day Part  ${SatAddDayPart}
    Set Operating Hours For a DayPart  ${SaturdayDayPart3}  ${Saturdaydn}  ${SaturdayOpen3}  ${OperatingHours Credentials[28]}   ${SaturdayClose3}   ${OperatingHours Credentials[29]}
    Click Submit Button in Hours Page
    sleep  5s



Enter Operating Hours for the resturant
    [Arguments]  ${Operating Hours Credentials}
    sleep  5s
    Click on Info&Hours tab
    Click Operating Hours tab
    sleep  3s
    Activate Operating Hours For a Day  ${SundayCheckBox}
    #1
    Set Operating Hours For a DayPart  ${SundayDayPart1}    ${Sundaybf}  ${SundayOpen1}  ${OperatingHours Credentials[28]}  ${SundayClose1}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${SundayDayPart2}    ${Sundayln}  ${SundayOpen2}  ${OperatingHours Credentials[28]}  ${SundayClose2}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${SundayDayPart3}    ${Sundaydn}  ${SundayOpen3}  ${OperatingHours Credentials[28]}  ${SundayClose3}   ${OperatingHours Credentials[29]}
    #2

    Activate Operating Hours For a Day  ${MondayCheckBox}
    Set Operating Hours For a DayPart  ${MondayDayPart1}    ${Mondaybf}   ${MondayOpen1}   ${OperatingHours Credentials[28]}  ${MondayClose1}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${MondayDayPart2}    ${Mondayln}   ${MondayOpen2}   ${OperatingHours Credentials[28]}  ${MondayClose2}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${MondayDayPart3}    ${Mondaydn}   ${MondayOpen3}   ${OperatingHours Credentials[28]}  ${MondayClose3}   ${OperatingHours Credentials[29]}
    #3
    Activate Operating Hours For a Day  ${TuesdayCheckBox}
    Set Operating Hours For a DayPart  ${TuesdayDayPart1}   ${Tuesdaybf}  ${TuesdayOpen1}   ${OperatingHours Credentials[28]}  ${TuesdayClose1}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${TuesdayDayPart2}   ${Tuesdayln}  ${TuesdayOpen2}   ${OperatingHours Credentials[28]}  ${TuesdayClose2}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${TuesdayDayPart3}   ${Tuesdaydn}  ${TuesdayOpen3}   ${OperatingHours Credentials[28]}  ${TuesdayClose3}   ${OperatingHours Credentials[29]}
    #4
    Activate Operating Hours For a Day  ${WednesdayCheckBox}
    Set Operating Hours For a DayPart  ${WednesdayDayPart1}  ${Wednesdaybf}  ${WednesdayOpen1}  ${OperatingHours Credentials[28]}  ${WednesdayClose1}  ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${WednesdayDayPart2}  ${Wednesdayln}  ${WednesdayOpen2}  ${OperatingHours Credentials[28]}  ${WednesdayClose2}  ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${WednesdayDayPart3}  ${Wednesdaydn}  ${WednesdayOpen3}  ${OperatingHours Credentials[28]}  ${WednesdayClose3}  ${OperatingHours Credentials[29]}
    #5
    Activate Operating Hours For a Day  ${ThursdayCheckBox}
    Set Operating Hours For a DayPart  ${ThursdayDayPart1}  ${Thursdaybf}  ${ThursdayOpen1}  ${OperatingHours Credentials[28]}  ${ThursdayClose1}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${ThursdayDayPart2}  ${Thursdayln}  ${ThursdayOpen2}  ${OperatingHours Credentials[28]}  ${ThursdayClose2}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${ThursdayDayPart3}  ${Thursdaydn}  ${ThursdayOpen3}  ${OperatingHours Credentials[28]}  ${ThursdayClose3}   ${OperatingHours Credentials[29]}
    #6
    Activate Operating Hours For a Day  ${FridayCheckBox}
    Set Operating Hours For a DayPart  ${FridayDayPart1}    ${Fridaybf}    ${FridayOpen1}    ${OperatingHours Credentials[28]}  ${FridayClose1}      ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${FridayDayPart2}    ${Fridayln}    ${FridayOpen2}    ${OperatingHours Credentials[28]}  ${FridayClose2}      ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${FridayDayPart3}    ${Fridaydn}    ${FridayOpen3}    ${OperatingHours Credentials[28]}  ${FridayClose3}      ${OperatingHours Credentials[29]}
    #7
    Activate Operating Hours For a Day  ${SaturdayCheckBox}
    Set Operating Hours For a DayPart  ${SaturdayDayPart1}  ${Saturdaybf}  ${SaturdayOpen1}  ${OperatingHours Credentials[28]}  ${SaturdayClose1}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${SaturdayDayPart2}  ${Saturdayln}  ${SaturdayOpen2}  ${OperatingHours Credentials[28]}  ${SaturdayClose2}   ${OperatingHours Credentials[29]}
    run keyword unless  '${Operating Hours Credentials}' == '#BLANK'  Add Day Part
    Set Operating Hours For a DayPart  ${SaturdayDayPart1}  ${Saturdaydn}  ${SaturdayOpen3}  ${OperatingHours Credentials[28]}  ${SaturdayClose3}   ${OperatingHours Credentials[29]}
    Click Submit Button in Hours Page





Enter Logo Credentials
    [Arguments]  ${Logo Credentials}
    sleep   5s
    click uploads&delivaryResource
    run keyword unless  '${Logo Credentials[30]}' == '#BLANK'  choose file  ${LogoChooseFile}  ${Logo Credentials[30]}
    Click Logo Submit Button



Enter Banner Credentials
     [Arguments]  ${Banner Credentials}
     sleep   5s
     select Banners  ${Banner Credentials[31]}  ${Banner Credentials[32]}   ${Banner Credentials[33]}   ${Banner Credentials[34]}  ${Banner Credentials[35]}    ${Banner Credentials[36]}
     sleep  5s
     click uploads&delivaryResource
     Click Banner Delete



Enter Menu Images Credentials
    [Arguments]  ${MenuImages Credentials}
     sleep   5s
     select Menuimages  ${MenuImages Credentials[37]}  ${MenuImages Credentials[38]}  ${MenuImages Credentials[39]}   ${MenuImages Credentials[40]}  ${MenuImages Credentials[41]}  ${MenuImages Credentials[42]}  ${MenuImages Credentials[43]}  ${MenuImages Credentials[44]}
     sleep  5s
     click uploads&delivaryResource
     Click Banner Delete


Enter Menu Images
    [Arguments]  ${MenuImages Credentials}
    sleep  5s
    click uploads&delivaryResource
    set focus to element    ${MenuChooseFile}
    run keyword unless  '${MenuImages Credentials[37]}' == '#BLANK'  choose file  ${MenuChooseFile}   ${MenuImages Credentials[37]}
    Click Menu Submit Button

Enter Office Delivary Credentials
    [Arguments]  ${Delivary Credentials}
    sleep  5s
    Click on Uploads&Delivary tab
    Click Delivary Location Button
    sleep  2s
    run keyword unless  '${Delivary Credentials[45]}' == '#BLANK'  Input Text  ${NewLocAdd}   ${Delivary Credentials[45]}
    run keyword unless  '${Delivary Credentials[46]}' == '#BLANK'  Input Text  ${NewLoccity}    ${Delivary Credentials[46]}
    run keyword unless  '${Delivary Credentials[47]}' == '#BLANK'  Input Text  ${NewLocState}    ${Delivary Credentials[47]}
    run keyword unless  '${Delivary Credentials[48]}' == '#BLANK'  Input Text  ${NewLocZip}   ${Delivary Credentials[48]}
    select option from list  ${NewCouPath}  ${Register+91}
    run keyword unless  '${Delivary Credentials[49]}' == '#BLANK'  Input Text  ${NewLocPhn}    ${Delivary Credentials[49]}
    set focus to element    ${NewLocPre}
    run keyword unless  '${Delivary Credentials[50]}' == '#BLANK'  press key  ${NewLocPre}     ${Delivary Credentials[50]}
    run keyword unless  '${Delivary Credentials[51]}' == '#BLANK'  press key  ${NewLocPost}    ${Delivary Credentials[51]}
    set focus to element  ${NewLocSubmit}
    click element     ${NewLocSubmit}
    sleep  5s

Enter New Office Delivary Credentials
    [Arguments]  ${Delivary Credentials}
    sleep  5s
    Click on Uploads&Delivary tab
    Click Delivary Location Button
    Click Side Tooltip
    sleep  2s
    set focus to element    ${NewLocAdd}
    run keyword unless  '${Delivary Credentials[52]}' == '#BLANK'  Input Text  ${NewLocAdd}   ${Delivary Credentials[52]}
    set focus to element   ${NewLoccity}
    sleep  1m
    run keyword unless  '${Delivary Credentials[46]}' == '#BLANK'  Input Text  ${NewLoccity}    ${Delivary Credentials[46]}
    run keyword unless  '${Delivary Credentials[47]}' == '#BLANK'  Input Text  ${NewLocState}    ${Delivary Credentials[47]}
    run keyword unless  '${Delivary Credentials[48]}' == '#BLANK'  Input Text  ${NewLocZip}   ${Delivary Credentials[48]}
    select option from list  ${NewCouPath}  ${Register+91}
    run keyword unless  '${Delivary Credentials[49]}' == '#BLANK'  Input Text  ${NewLocPhn}    ${Delivary Credentials[49]}
    set focus to element    ${NewLocPre}
    run keyword unless  '${Delivary Credentials[50]}' == '#BLANK'  press key  ${NewLocPre}     ${Delivary Credentials[50]}
    run keyword unless  '${Delivary Credentials[51]}' == '#BLANK'  press key  ${NewLocPost}    ${Delivary Credentials[51]}
    set focus to element  ${NewLocSubmit}
    click element     ${NewLocSubmit}
    sleep  5s



DashBoard
    click element   ${DashBoard}
Logout
    sleep  2
    scroll element into view  ${Profile}
    set focus to element  ${Profile}
    click element  ${Profile}
    sleep  2
    scroll element into view  ${Signout}
    set focus to element  ${Signout}
    click element  ${Signout}
Navigations
    sleep   5s
    Click on DashBoard tab
    Click on Info&Hours tab
    Click on Uploads&Delivary tab
    Click on Menu Management tab
    Click on Archived Orders tab
    Click on Subscription Renewal tab
    Click on Lock Screen

Selecting Drop Down Filters
    sleep  5s
    Click on Archived Orders tab
    Click Selection Drop Down
    Click Month in Below Drop Down

Dashboard Cards
    sleep   5s
    Mouse Over Elements  ${Loyal Customers}
    Mouse Over Elements  ${Lost Customers}
    Mouse Over Elements  ${Popular food}
    Mouse Over Elements  ${Trending food}

Testing Functionality of Loyal Customers Card
    sleep  5s
    select option from list  ${Loyal Customers Selection Drop Down}   ${Loyal 60}
    Mouse Over Elements  ${Loyal Customers}
    Click Loyal Detail Button
    sleep  5s
    click element  ${Backbutton}
    Mouse Over Elements  ${Loyal Customers}
    Click Loyal Refresh Button

Testing Functionality of Lost Customers Card
    sleep  5s
    select option from list  ${Lost Customers Selection Drop Down}   ${Loyal 60}
    Mouse Over Elements  ${Lost Customers}
    Click Lost Detail Button
    Mouse Over Elements  ${Lost Customers}
    Click Lost Refresh Button

Testing Functionality of Popualr Food Card
    sleep  5s
    select option from list  ${Popular Food Drop Down}   ${Loyal 60}
    Mouse Over Elements  ${Popular food}
    Click Popular Detail Button
    sleep  5s
    Click BackButton
    Mouse Over Elements  ${Popular food}
    Click Popular Refresh Button

Testing Functionality of Trending Card
    sleep  5s

    select option from list  ${Trending Drop Down}   ${Loyal 60}
    Mouse Over Elements  ${Trending food}
    Click Trending Detail Button
    sleep  5s
    Click BackButton
    Mouse Over Elements  ${Trending food}

Facebook Login
     sleep  5s
     #Click Facebook Button
     Input Text  ${Facebook Email}  &{Test_FBLogins}[Email]
     Input Password  ${Facebook Password}  &{Test_FBLogins}[Password]
     sleep  5s
     Click FacebookLogin Button