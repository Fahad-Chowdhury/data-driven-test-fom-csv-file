*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_IN_EMAIL} =          xpath=//input[@ng-model='credentials.email']
${SIGN_IN_PASSWORD} =       xpath=//input[@ng-model='credentials.password']
${LOGIN_SUBMIT_BUTTON} =    Log In
${ENVIRONMENT} =  prod
${LOGIN_URL} =  profile/secure/login

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    Run Keyword If    '${Credentials[0]}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials[0]}
    Run Keyword If    '${Credentials[1]}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials[1]}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage[2]}

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN_IN_PASSWORD}