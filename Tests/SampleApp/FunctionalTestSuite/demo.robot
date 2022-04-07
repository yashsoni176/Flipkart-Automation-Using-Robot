*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${search_parameter}  Harman
${url}  https://www.google.com/
*** Test Cases ***
login page test case
    [Documentation]  Login for user
    [Tags]  user
    log  Hello

Registration page test case
    [Documentation]  Registration page for user
    [Tags]  user
    log  Hello World

Dashboard test case
    [Documentation]  Dashboard for user
    [Tags]  user
    log  Dash

Google test case
    [Documentation]  Simple Google Test
    Open Browser    ${url}  chrome
    search data
    Submit form
    Close Browser

*** Keywords ***
search data
    Input Text  name:q  ${search_parameter}
