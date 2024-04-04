*** Settings ***
Resource         ../Resource/CommonPo.resource
Resource        ../Resource/NavigationBarPo.resource
Resource         ../Resource/LoginScreenPo.resource
Resource         ../Test_data//LoginConstants.robot
Resource         ../Test_data//AlertConstants.robot
Test Setup      Open Test Application
Test Teardown    Close Application


*** Test Cases ***
Verify That A User Can Login To The Application Using Valid Credentials
    [Tags]    Smoke
    Navigate To Login Screen
    Login To The Application [Arguments] ${EMAIL_ADDRESS} ${PASSWORD}
    Alert Title Should Be [Arguments] ${LOGIN_SUCCESS_ALERT_TITLE}
    Alert Message Should Be [Arguments] ${LOGIN_SUCCESS_ALERT_MESSAGE}
