*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
#name of test case
TCC01Open_CloseBrowser
    Open Browser  ${URL}  ${Browser}
    Close Browser