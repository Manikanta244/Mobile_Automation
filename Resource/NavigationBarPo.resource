*** Settings ***
Resource    CommonPo.resource
*** Variables ***
${loginIcon}    accessibility_id=Login
*** Keywords ***
Navigate To Login Screen
    Click Element [Arguments] ${loginIcon} ${SMALL_RETRY_COUNT}
