*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
#calling Resource File
Resource   ../Resources/Resources1.robot
Library    SeleniumLibrary
Documentation    it gives Details for the test case
Library    SeleniumLibrary
Resource   ../Resources/Resources1.robot

#test timeout    60s
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
#name of test case
First Test Case
    [Documentation]    test case launch browser
    [Setup]  StartMaximizeBrowser  ${URL}  ${Browser}
    [Teardown]  Close Browser Window
#Calling Key Word using argumnet
    Enter UserName & Email  Romesh  romesh@gmail.com

Second Test Case
    [Documentation]    test case launch browser
    [Setup]  StartMaximizeBrowser  ${URL}  ${Browser}
    [Teardown]  Close Browser Window
    Select Radio Button  add_type  office
    Select Check Box  name:terms