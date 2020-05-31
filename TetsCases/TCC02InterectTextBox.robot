*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
#name of test case
Robot FirstTestCase
#two spaces is given bettwen attribute and key word and one space bettwen keyword
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Set Selenium Speed  2seconds
    #Text Box
    Input Text  name:fld_username  Romesh
    Input Text  xpath://input[@name='fld_email']  testingworld@gmail.com
    #Drop Down
    Select From List By Index  name:sex  2
    Clear Element Text  name:fld_username
    #Drop Down
    Select From List By Value  name:sex  1
    #for Radio button we need to give group name first and Then Value
    Select Radio Button  add_type  office
    Select Check Box  name:terms
    #Drop Down
    Select From List By Label  name:sex  Female
    Click Button  xpath://input[@type='submit']
    Click Link  xpath://a[text()='Read Detail']
    #Close Browser