*** Settings ***
Documentation  this file contains all the keywords related to Subscription page
Library    SeleniumLibrary


*** Keywords ***
Choose Subscription Plan
    set focus to element   ${MINI}
    click element  ${MINI}
    sleep  5s
Click Subscription Check Box
    scroll element into view  ${PaymentCheckbox}
    set focus to element  ${PaymentCheckbox}
    click element  ${PaymentCheckbox}
Click Subscription Next
    set focus to element  ${BussinessNext}
    click element  ${BussinessNext}
Input Credit Card Details
    [Arguments]  ${CardNo}  ${Month}  ${CvvNo}
    set focus to element    ${Card}
    click element   ${Card}
    press key  ${Card}      ${CardNo}
    sleep  5s
    set focus to element    ${Month1}
    click element   ${Month1}
    press key  ${Month1}    ${Month}
    sleep  5s
    set focus to element    ${CVV}
    click element   ${CVV}
    input password  ${CVV}       ${CvvNo}
    #sleep  5s
Submit Credit Card Details
    set focus to element    ${SubmitPayment}
    click element  ${SubmitPayment}
