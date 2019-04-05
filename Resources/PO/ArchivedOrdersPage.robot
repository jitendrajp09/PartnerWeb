*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Click Selection Drop Down
    set focus to element  ${Selection Drop Down}
    click element  ${Selection Drop Down}
Click Month in Below Drop Down
    set focus to element  ${November 2018}
    click element   ${November 2018}
    sleep  5s

Search Element
     set focus to element   ${Search records}
     input text  ${Search records}  35.65
     sleep  2s
     page should contain  35.65
Click Order Drop Down Button
    set focus to element    ${Index3}
    click element  ${Index3}
    sleep  2s
Click Cancel Button
    set focus to element  ${Cancel Button}
    click element  ${Cancel Button}
