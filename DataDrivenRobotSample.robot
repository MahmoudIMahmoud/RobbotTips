*** Settings ***
Test Template    Login with invalid credentials should fail
*** Keywords ***
Login with invalid credentials should fail
    [Arguments]        ${argv1}        ${argv2}
    log to console          got the args:${argv1}, and ${argv2}
*** Variables ***
${VALID PASSWORD}        admin
${VALID USER}            admin

*** Test Cases ***                USERNAME         PASSWORD
Invalid User Name                 invalid          ${VALID PASSWORD}
Invalid Password                  ${VALID USER}    invalid
Invalid User Name and Password    invalid          invalid
Empty User Name                   ${EMPTY}         ${VALID PASSWORD}
Empty Password                    ${VALID USER}    ${EMPTY}
Empty User Name and Password      ${EMPTY}         ${EMPTY}
    
*** Test Cases ***
Invalid Password
    [Template]    Login with invalid credentials should fail
    invalid          ${VALID PASSWORD}
    ${VALID USER}    invalid
    invalid          whatever
    ${EMPTY}         ${VALID PASSWORD}
    ${VALID USER}    ${EMPTY}
    ${EMPTY}         ${EMPTY}
