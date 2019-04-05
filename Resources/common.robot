*** Settings ***
Documentation  this is the suite holding common keywords
Library  SeleniumLibrary
Library  Process
Library  OperatingSystem
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/keywords.robot
Resource  ../GlobalVariables/Xpaths.robot
Resource  ../GlobalVariables/Variables.robot

*** Variables ***

*** Keywords ***

                            #test setups&teardowns
Page Wait
    sleep   5s

Begin Web Test
    open browser  about:blank  ${Browser}
    maximize browser window

Begin Test Setup
    Navigate to landing page
    Click Login Button
    Attempt Login  ${TestData}

End Web Test
    close browser

Setup For TS_UR01
    open browser  about:blank  ${Browser}
    maximize browser window

Test Setup TS_UR01
    Navigate to landing page
    Click Register Button

Setup For TS_BR03

    open browser  about:blank  ${Browser}
    maximize browser window

Teardown For TS_BR03
    Logout
Teardown For TS_UR01
    reload page
Setup For TS_MeM09

    sleep  5
    open browser  about:blank  ${Browser}
    maximize browser window

Teardown For TS_MeM09
    Logout

                            #freaquently used

Input text into elements
    [Arguments]  ${FieldPath}  ${String}
    scroll element into view  ${FieldPath}
    input text  ${FieldPath}  ${String}
Upper boundary validation for fixed maxlength
    [Arguments]  ${FieldPath}  ${lenght}
    element text should be  ${FieldPath}  ${lenght}
select option from list
    [Arguments]  ${ListPath}  ${ListItemPath}
    #wait until page contains element  ${listpath}
    scroll element into view  ${listpath}
    set focus to element  ${listpath}
    click element  ${listpath}
    set focus to element  ${ListItemPath}
    #wait until page contains element  ${ListItemPath}
    #scroll element into view  ${ListItemPath}
    click element  ${ListItemPath}
select Tags
    [Arguments]  ${ListPath}  ${ListItemPath1}  ${ListItemPath2}  ${ListItemPath3}  ${ListItemPath4}
    @{List}  create list  ${ListItemPath1}  ${ListItemPath2}  ${ListItemPath3}  ${ListItemPath4}
    :FOR  ${Item}  IN  @{List}
    \   click element  ${trail}
    \   set focus to element  ${listpath}
    \   click element  ${listpath}
    \   set focus to element  ${Item}
    \   click element  ${Item}

select Banners
    [Arguments]  ${Banner1}  ${Banner2}  ${Banner3}  ${Banner4}  ${Banner5}  ${Banner6}
    @{List}  create list  ${Banner1}  ${Banner2}  ${Banner3}  ${Banner4}  ${Banner5}  ${Banner6}
    set selenium speed  0.5
    :FOR  ${Item}  IN  @{List}
    \   click uploads&delivaryResource
    \   set focus to element    ${BannerChooseFile}
    \   run keyword unless  '${Item}' == '#BLANK'  Click Banner Choose File  ${Item}
    \   Click Banner Submit Button
    \   Click on Info&Hours tab
    \   click element   ${Info&HoursPath}

select Menuimages
    [Arguments]  ${Menu1}  ${Menu2}  ${Menu3}  ${Menu4}  ${Menu5}  ${Menu6}  ${Menu7}  ${Menu8}
    @{List}  create list  ${Menu1}  ${Menu2}  ${Menu3}  ${Menu4}  ${Menu5}  ${Menu6}  ${Menu7}  ${Menu8}
    set selenium speed  0.5
    :FOR  ${Item1}  IN  @{List}
    \   click uploads&delivaryResource
    \   run keyword unless  '${Item1}' == '#BLANK'  Click Menu Choose File  ${Item1}
    \   Click Menu Submit Button
    \   Click on Info&Hours tab
    \   click element   ${Info&HoursPath}

