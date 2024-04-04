*** Settings ***
Resource    CommonPo.resource

*** Variables ***
${signupContainer}            accessibility_id=button-sign-up-container
${emailAddressTextbox}        accessibility_id=input-email
${passwordTextbox}            accessibility_id=input-password
${confirmPasswordTextbox}     accessibility_id=input-repeat-password
${signupButton}               accessibility_id=button-SIGN UP
${loginButton}                accessibility_id=button-LOGIN
*** Keywords ***
Sign Up To The Application [Arguments] ${emailAddress} ${password} ${confirmPassword}
    Input Email Address [Arguments] ${emailAddress}
    Input Password [Arguments] ${password}
    Input Confirm Password [Arguments] ${confirmPassword}
    Click On The 'SIGN UP' Button


Login To The Application [Arguments] ${emailAddress} ${password}
    Input Email Address [Arguments] ${emailAddress}
    Input Password [Arguments] ${password}
    Click On The 'LOGIN' Button


Click On The 'Sign up' Container
    Click Element [Arguments] ${signupContainer} ${SMALL_RETRY_COUNT}


Input Email Address [Arguments] ${emailAddress}
    Input Text [Arguments] ${emailAddressTextbox} ${emailAddress} ${SMALL_RETRY_COUNT}


Input Password [Arguments] ${password}
    Input Text [Arguments] ${passwordTextbox} ${password} ${SMALL_RETRY_COUNT}


Input Confirm Password [Arguments] ${confirmPassword}
    Input Text [Arguments] ${confirmPasswordTextbox} ${confirmPassword} ${SMALL_RETRY_COUNT}


Click On The 'SIGN UP' Button
    Click Element [Arguments] ${signupButton} ${SMALL_RETRY_COUNT}


Click On The 'LOGIN' Button
    Click Element [Arguments] ${loginButton} ${SMALL_RETRY_COUNT}
