*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Click Loyal Selection Drop Down
    set focus to element  ${Loyal Customers Selection Drop Down}
    click element  ${Loyal Customers Selection Drop Down}
Click Loyal Filters in Below Drop Down
    set focus to element  ${Loyal 60}
    click element   ${Loyal 60}
Mouse Over Elements
    [Arguments]  ${locator}
    mouse over  ${locator}
    sleep   5s
Click Lost Selection Drop Down
    set focus to element  ${Lost Customers Selection Drop Down}
    click element  ${Lost Customers Selection Drop Down}
Click Lost Filters in Below Drop Down
    set focus to element  ${Loyal 60}
    click element   ${Loyal 60}
Click Popualr Selection Drop Down
    set focus to element  ${Popular Food Drop Down}
    click element  ${Popular Food Drop Down}
Click popular Filters in Below Drop Down
    set focus to element  ${Popular 60}
    click element   ${Popular 60}
Click Trending Selection Drop Down Selection Drop Down
    set focus to element  ${Trending Drop Down}
    click element  ${Trending Drop Down}
Click Trending Filters in Below Drop Down
    set focus to element  ${Trending 60}
    click element   ${Trending 60}
Click BackButton
    set focus to element  ${Backbutton}
    click element  ${Backbutton}
Click Loyal Refresh Button
    set focus to element  ${Loyal Refresh}
    press key  ${Loyal Refresh}  \\13
Click Lost Refresh Button
    set focus to element  ${Lost Refresh}
    click element   ${Lost Refresh}
Click Popular Refresh Button
     set focus to element  ${Popular food Refresh}
    click element    ${Popular food Refresh}
Click Trending Refresh Button
     set focus to element  ${Trending Refresh}
    click element    ${Trending Refresh}
Click Loyal Detail Button
    set focus to element  ${Loyal Detail Button}
    click element    ${Loyal Detail Button}
Click Lost Detail Button
    set focus to element  ${Lost Details Button}
    click element    ${Lost Details Button}
Click Popular Detail Button
     set focus to element  ${Popular Details Button}
    click element    ${Popular Details Button}
Click Trending Detail Button
     set focus to element  ${Trending Details Button}
    click element    ${Trending Details Button}