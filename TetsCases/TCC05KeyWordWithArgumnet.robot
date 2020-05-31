*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
#name of test case
Keyword Example With Argumnet
#two spaces is given bettwen attribute and key word and one space bettwen keyword
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
#Calling Key Word we can write code which will be repeative in Keywords and call it Enter UserName & Email using argumnet
    Enter UserName & Email  Romesh  romesh@gmail.com

    #Close Browser
*** Keywords ***
Enter UserName & Email
    [Arguments]  ${username}  ${email}
    Input Text  name:fld_username  ${username}
    Input Text  xpath://input[@name='fld_email']  ${email}
