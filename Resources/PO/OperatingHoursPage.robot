*** Settings ***
Library    SeleniumLibrary

*** Keywords ***



Click Operating Hours tab
    set focus to element    ${Opening Hours}
    click element    ${Opening Hours}

Activate Operating Hours For a Day
    [Arguments]  ${DayCheckBoxPath}
    scroll element into view  ${DayCheckBoxPath}
    set focus to element   ${DayCheckBoxPath}
    click element  ${DayCheckBoxPath}

Deactivate Operating Hours For a Day
    [Arguments]  ${DayCheckBoxPath}
    set focus to element   ${DayCheckBoxPath}
    select checkbox  ${DayCheckBoxPath}

Set Operating Hours For a DayPart
    [Arguments]  ${DayPartListPath}  ${DayPartPath}  ${OpenPath}  ${Open}  ${ClosePath}  ${Close}
    select option from list  ${DayPartListPath}  ${DayPartPath}
    press key  ${OpenPath}  ${Open}
    press key  ${ClosePath}  ${Close}



Set Operating Hours For a Day
    [Arguments]  ${DayCheckBoxPath}  ${DayPartListPath}  ${DayPartPath}  ${OpenPath}  ${Open}  ${ClosePath}  ${Close}
    Activate Operating Hours For a Day  ${DayCheckBoxPath}
    Set Operating Hours For a DayPart  ${DayPartListPath}  ${DayPartPath}  ${OpenPath}  ${Open}  ${ClosePath}  ${Close}






Add Day Part
    [Arguments]  ${AddDayPart}
    click element    ${AddDayPart}


Delete Day Part
    click element  //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[2]/div[4]/div/button/span/i


Click Submit Button in Hours Page
    set focus to element  ${Submit Hours}
    click element  ${Submit Hours}
