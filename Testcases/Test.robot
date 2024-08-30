*** Settings ***
Documentation   Homepage
Library    DataDriver       file=${CURDIR}${/}../TestData/Test_data.xlsx    sheet_name=data
Resource        ../Resource/Login.resource
Test Template    Homepage login
*** Test Cases ***
Login Homepage

*** Keywords ***
Homepage login
    [Arguments]    ${username}    ${password}
    Open Homepage    ${username}    ${password}
