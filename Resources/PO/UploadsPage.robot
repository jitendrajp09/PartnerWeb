*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
click uploads&delivaryResource
    set focus to element    ${Uploads&Delivary}
    click element   ${Uploads&Delivary}
    sleep  5s
Click Logo Choose File
     set focus to element    ${LogoChooseFile}
     Choose File    ${LogoChooseFile}
Click Logo Submit Button
    set focus to element    ${LogoSubmit}
    click element    ${LogoSubmit}
    sleep   5s

Click Banner Choose File
    [Arguments]  ${BannerFilePath}
     set focus to element    ${BannerChooseFile}
     Choose File    ${BannerChooseFile}    ${BannerFilePath}

Click Banner Submit Button
    set focus to element    ${BannerSubmit}
    click element    ${BannerSubmit}
    sleep   5s
Click Banner Delete
    scroll element into view    ${BannerDeleteIcon}
    set focus to element  ${BannerDeleteIcon}
    click element   ${BannerDeleteIcon}
    set focus to element    ${DeleteYes}
    click element     ${DeleteYes}
    sleep  5s

Click Menu Choose File
    [Arguments]  ${MenuFilePath}
     set focus to element    ${MenuChooseFile}
     Choose File  ${MenuChooseFile}   ${MenuFilePath}
Click Menu Submit Button
    set focus to element    ${MenuSubmit}
    click element    ${MenuSubmit}
    sleep   5s
Click Menu Delete
    scroll element into view    ${MenuDeleteIcon}
    set focus to element  ${MenuDeleteIcon}
    click element   ${MenuDeleteIcon}
    set focus to element    ${MenuDelYes}
    click element     ${MenuDelYes}
    sleep  5s
Click Delivary Location Button
    set focus to element    ${Office Delivary}
    click element   ${Office Delivary}

Click Uploads Page Button
    set focus to element    ${UploadsPage}
    click element   ${UploadsPage}
Click Address
    set focus to element    ${NewLocAdd}
    click element   ${NewLocAdd}

Click City
    set focus to element    ${NewLoccity}
    click element   ${NewLoccity}
Click State
    set focus to element    ${NewLocState}
    click element   ${NewLocState}
Click Postal Code
    set focus to element    ${NewLocZip}
    click element   ${NewLocZip}
Click Pre Order
    set focus to element    ${NewLocPre}
    click element   ${NewLocPre}
Click Post Order
    set focus to element    ${NewLocPost}
    click element   ${NewLocPost}
Click Side Tooltip
    set focus to element    ${AddLocation ToolTip}
    click element   ${AddLocation ToolTip}
    sleep  5s
Click Delivary Submit Button
    set focus to element    ${NewLocSubmit}
    click element   ${NewLocSubmit}
Click Delivary Country Code
    select from list by value  ${RegisterCountryCodePath}   +91


