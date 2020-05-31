*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used


*** Keywords ***
StartBrowser
    [Documentation]   It is use to give details like this key word is use to Open Browser
    [Arguments]  ${UserURL}  ${UserBrowser}
    #[timeout]    5s
#it is a user define keyword using exiting key word
    Open Browser  ${UserURL}  ${UserBrowser}
    Maximize Browser Window
    #Creating Variable title and storing current title
    ${Title}=  Get Title
    #Returning Title to log
    #log  ${Title}
    [Return]  ${Title}
StartMaximizeBrowser
    [Arguments]  ${UserURL}  ${UserBrowser}
    Open Browser  ${UserURL}  ${UserBrowser}
    Maximize Browser Window

Enter UserName & Email
    [Arguments]  ${username}  ${email}
    Input Text  name:fld_username  ${username}
    Input Text  xpath://input[@name='fld_email']  ${email}
Close Browser Window
    Close Browser

After Test Suite
#two spaces
    Log  AfterTestSuite

Before Test Suite
    Log  BeforeTestSuite