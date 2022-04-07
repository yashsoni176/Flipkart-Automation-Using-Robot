*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_flipkart}  Flipkart
${url}  https://www.google.com/

*** Test Cases ***

Google search page test case
    [Documentation]  Google search
    [Tags]  Google
    start testcase
    input text  name:q  ${search_flipkart}
    submit form
    click element  class:LC20lb

Flipkart Product search
    [Documentation]  Searching products on Flipkart page
    [Tags]  Flipkart
    sleep  2s
    click button  class:_2KpZ6l
    flipkart search
    sleep  2s


flipkart product Selection
    [Documentation]  Product Selection
    [Tags]  Flipkart
    click Element  xpath=//html/body/div/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s

Flipkart Product Buy
    [Documentation]  Product Purchase
    [Tags]  Flipkart
    switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    click element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep   2s

Flipkart user login
    [Documentation]  Product Purchase
    [Tags]  Flipkart
    input text  class:_2IX_2-  test@gmail.com
    click button  class:_2KpZ6l
    sleep  5s
    stop testcase

*** Keywords ***
start testcase
    Open Browser  ${url}  chrome
    maximize browser window

stop testcase
    Close Browser

flipkart search
    input text  name:q  Iphone 13
    click button  class:L0Z3Pu