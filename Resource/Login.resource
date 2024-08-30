*** Settings ***
Resource    ../TestData/config.txt
Library    SeleniumLibrary
*** Variables ***
${user}    id:user-name
${pass}    id:password
${signin}    xpath://input[@id='login-button']
*** Keywords ***
Open Homepage
    [Arguments]    ${username}    ${password}
    Open Browser        ${url}    chrome
    Maximize Browser Window
    Fill the login form    ${username}    ${password}

Fill the login form
    [Arguments]    ${username}    ${password}
    Input Text      ${user}     ${username}
    Wait Until Element Is Visible    ${pass}
    Input Text      ${pass}    ${password}