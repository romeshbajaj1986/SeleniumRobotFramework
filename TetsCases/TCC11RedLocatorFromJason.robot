*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    ../ExtrenalFiles/Locators.py
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
#name of test case
Robot FirstTestCase
#two spaces is given bettwen attribute and key word and one space bettwen keyword
# Reding locator value from Json File using User Define Key Word Read Element Loacator
    ${UserName}  Read Element Loacator  Regestration.UserNameTextbox_name
    log  ${UserName}
    ${UseEmail}  Read Element Loacator  Regestration.email_Textbox_xpath
    log  ${UserName}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Set Selenium Speed  2seconds
    #Text Box
    Input Text  name:${UserName}  Romesh
    Input Text  xpath:${UseEmail}  testingworld@gmail.com
    #Drop Down
    Select From List By Index  name:sex  2
*** Keywords ***
Read Element Loacator
    [Arguments]  ${Jsonpath}
    ${Result}=  readlocatorfromJsonFile  ${Jsonpath}
    [Return]  ${Result}
