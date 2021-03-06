*** Settings ***
Test Template    Login with invalid credentials should fail
*** Keywords ***
Login with invalid credentials should fail
    [Arguments]        ${argv1}        ${argv2}
    log to console          got the args:${argv1}, and ${argv2}
*** Variables ***
${VALID PASSWORD}        admin
${VALID USER}            admin
${varx}                  0
*** Test Cases ***                USERNAME         PASSWORD
Invalid User Name                 invalid          ${VALID PASSWORD}
Invalid Password                  ${VALID USER}    invalid
Invalid User Name and Password    invalid          invalid
Empty User Name                   ${EMPTY}         ${VALID PASSWORD}
Empty Password                    ${VALID USER}    ${EMPTY}
Empty User Name and Password      ${EMPTY}         ${EMPTY}
log the var                       ${EMPTY}         ${varx}
check the commit effect           commit           effect
