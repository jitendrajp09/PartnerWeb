*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Click on Expansion Pannel
    set focus to element  ${Expansion Pannel}
    click element  ${Expansion Pannel}

Click on DashBoard tab
    set focus to element  ${DashBoard}
    click element  ${DashBoard}
    sleep  5s

Click on Info&Hours tab
    set focus to element  ${Info&HoursPath}
    click element  ${Info&HoursPath}
     sleep  5s

Click on Uploads&Delivary tab
    set focus to element  ${Uploads&Delivary}
    click element  ${Uploads&Delivary}
    sleep  5s
Click on Menu Management tab
    set focus to element  ${Menu Management}
    click element  ${Menu Management}
    sleep  5s

Click on Archived Orders tab
    set focus to element  ${Archived Orders}
    click element  ${Archived Orders}
    sleep  5s

Clicked on Archived Orders tab
    set focus to element  ${Archived Orders}
    click element  ${Archived Orders}
    sleep  5s

Click on Subscription Renewal tab
    set focus to element  ${Subscription Renewal}
    click element  ${Subscription Renewal}
    sleep  5s

Click on Lock Screen
    set focus to element  ${Lock Screen}
    click element  ${Lock Screen}
    sleep  5s