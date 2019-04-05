*** Settings ***
Documentation  this file contains all the keywords related to Business Registration page
Library    SeleniumLibrary



*** Keywords ***
Click Background In Business Page 2
    [Arguments]  ${locator}
    press key  ${locator}  \\09
Click Background In Business Page
    scroll element into view    ${BusinessPageValid}
    set focus to element    ${BusinessPageValid}
    click element  ${BusinessPageValid}
Click Legal Name
    set focus to element  ${LegalNamePath}
    click element  ${LegalNamePath}
Check For Legal Name Message
    wait until page contains  Please Enter Business Name
Click Short Name
    set focus to element  ${ShortNamePath}
    click element  ${ShortNamePath}
Check For Short Name Error Message
    wait until page contains  Please Enter Business Short Name
Click Address in Business Page
    set focus to element  ${AddressPath}
    click element  ${AddressPath}
Check For Address Error Message
    wait until page contains  Please Enter Business Address
Click City in Business Page
    set focus to element  ${CityPath}
    click element  ${CityPath}
Check For City Error Message
    wait until page contains  Please Enter City
Click State in Business Page
    set focus to element  ${StatePath}
    click element  ${StatePath}
Check For State Error Message
    wait until page contains  Please Enter State
Click Postal Code in Business Page
    set focus to element  ${PostalcodePath}
    click element  ${PostalcodePath}
Check For Postal Code Error Message
    wait until page contains  Please Enter Postal
Click Country in Business Page
    set focus to element  ${CountryPath}
    click element  ${CountryPath}
Check For Country Error Message
    wait until page contains  Please Enter Country
Click WorkPhone in Business Page
    set focus to element  ${Work PhonePath}
    click element  ${Work PhonePath}
Check For WorkPhone Error Message
    wait until page contains  Phone number is required
Click Business Email in Business Page
    set focus to element  ${BusinessEmailPath}
    click element  ${BusinessEmailPath}
Check For Business Email Error Message
    wait until page contains  Email is required
Click Website in Business Page
    set focus to element  ${WebsitePath}
    click element  ${WebsitePath}
Check For Website Error Message
    page should not contain  Website is required
Click Category in Business Page
    set focus to element     ${CategoryPath}
    click element  ${CategoryPath}
Click Sub Category
    set focus to element    ${SubCategoryPath}
    click element  ${SubCategoryPath}
Click Type
    set focus to element    ${TypePath}
    click element  ${TypePath}
Click Avg Prep
    set focus to element    ${AveragePath}
    click element  ${AveragePath}
Click Tags
    set focus to element    ${TagsPath}
    click element  ${TagsPath}
Click Sales Tax in Business Page
    set focus to element  ${SalesTaxPath}
    click element  ${SalesTaxPath}
Check For Sales Tax Error Message
    wait until page contains  Please enter a tax rate
Click Total Tables in Business Page
    set focus to element  ${TotalTablesPath}
    click element  ${TotalTablesPath}
Check For Total Tables Error Message
    page should not contain  Total Tables is required
Click Total Occupancy in Business Page
    set focus to element  ${TotalOccupancyPath}
    click element  ${TotalOccupancyPath}
Check For Total Occupancy Error Message
    page should not contain  Total Occupancy is required
Click Submit Button In Business Page
    scroll element into view  ${BusinessSubmitPath}
    set focus to element  ${BusinessSubmitPath}
    click button  ${BusinessSubmitPath}
Check if Submit Button In Business Page is Disabled
    element should be disabled  ${BusinessSubmitPath}
Check if Submit Button In Business Page is Enabled
    element should be enabled  ${BusinessSubmitPath}

                                #UPPER BOUNDARY VALIDATIONS

Validate Legal Name Under Upper boundary Condition
    Click Background In Business Page
    element attribute value should be  ${LegalNamePath}  maxlength  30
    #Upper boundary validation for fixed maxlength  css=#mat-hint-0  30 / 30
    #element should contain  ${EmailValid2}  Please enter valid email
Validate Short Name Under Upper boundary Condition
    Click Background In Business Page
    element attribute value should be  ${ShortNamePath}  maxlength  20
    #Upper boundary validation for fixed maxlength  argument1(locator)  argument2(length)
    page should contain  *We display in customer side coupons & banners
    #element should contain  ${EmailValid2}  Please enter valid email
Validate Address Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${AddressPath}  maxlength
Validate City Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${CityPath}  maxlength
Validate State Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${StatePath}  maxlength
Validate Postal Code Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${PostalCodePath}  maxlength
Validate Country Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${CountryPath}  maxlength
Validate WorkPhone Under Upper boundary Condition
    Click Background In Business Page
    element attribute value should be  ${WorkPhonePath}  maxlength  10
    page should contain  Please enter valid phone number
    #element should contain  ${PhoneValid2}  Please enter valid phone number
Validate Website Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${WebsitePath}  maxlength
    page should contain  Please enter a valid website
Validate Sales Tax Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${SalesTaxPath}  maxlength
    page should contain  Tax Rate must be within 0 - 100%
Validate Total Tables Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${TotalTablesPath}  maxlength
    #element text should be  ${TotalTablesPath}  99
Validate Total Occupancy Under Upper boundary Condition
    Click Background In Business Page
    element should not contain  ${TotalOccupancyPath}  maxlength
    #element text should be  ${TotalOccupancyPath}  999

                                          #MIXED-MATCH VALIDAIONS

Validate Legal Name Under Mixed-match Condition
    Click Background In Business Page 2  ${legalnamepath}
Validate Short Name Under Mixed-match Condition
    Click Background In Business Page 2  ${ShortNamePath}
    page should contain  *We display in customer side coupons & banners
Validate Address Under Mixed-match Condition
    Click Background In Business Page 2  ${AddressPath}
Validate City Under Mixed-match Condition
    Click Background In Business Page 2  ${CityPath}
Validate State Under Mixed-match Condition
    Click Background In Business Page 2  ${StatePath}
Validate Postal Code Under Mixed-match Condition
    Click Background In Business Page
Validate Country Under Mixed-match Condition
    Click Background In Business Page
Validate WorkPhone Under Mixed-match Condition
    Click Background In Business Page
    page should contain  Please enter valid phone number
    #element should contain  ${PhoneValid2}  Please enter valid phone number
Validate Website Under Mixed-match Condition
    Click Background In Business Page
    page should contain  Please enter a valid website
Validate Sales Tax Under Mixed-match Condition
    Click Background In Business Page
    page should contain  Please enter a tax rate
Validate Total Tables Under Mixed-match Condition
    Click Background In Business Page
    #element text should be  99
Validate Total Occupancy Under Mixed-match Condition
    Click Background In Business Page
    #element text should be  999

                                    #REAL DATA
Validate Legal Name Using Real Data
    Click Background In Business Page
Validate Short Name Using Real Data
    Click Background In Business Page
    page should contain  *We display in customer side coupons & banners
Validate Address Using Real Data
    Click Background In Business Page
Validate City Using Real Data
    Click Background In Business Page
Validate State Using Real Data
    Click Background In Business Page
Validate Postal Code Using Real Data
    Click Background In Business Page
Validate Country Using Real Data
    Click Background In Business Page
Validate WorkPhone Using Real Data
    Click Background In Business Page
    page should not contain  Please enter valid phone number
    page should not contain  Phone number is required
    #element should contain  ${PhoneValid2}  Please enter valid phone number
Validate Website Using Real Data
    Click Background In Business Page
    page should not contain  Please enter a valid website
Validate Sales Tax Using Real Data
    Click Background In Business Page
    page should contain  Please enter a tax rate
    page should not contain  Tax Rate must be within 0 - 100%
Validate Total Tables Using Real Data
    Click Background In Business Page
    #element text should be  99
Validate Total Occupancy Using Real Data
    Click Background In Business Page
    #element text should be  999