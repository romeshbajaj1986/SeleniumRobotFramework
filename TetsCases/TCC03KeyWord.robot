*** Settings ***
Library    SeleniumLibrary
#calling userKeyWords.py
Library    ../ExtrenalFiles/UserKeyWords.py
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings
*** Test Cases ***
#name of test case
Keyword Example TestCase
#two spaces is given bettwen attribute and key word and one space bettwen keyword
#Calling User Define Key word
    CreateFolderAtRunTime
    CreateFolderByTakingArgumnet    test123
    ConcatenateUserName  romesh  bajaj
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
#Calling Key Word we can write code which will be repeative in Keywords and call it Enter UserName & Email
    Enter UserName & Email
    Close Browser
*** Keywords ***
Enter UserName & Email
    Input Text  name:fld_username  Romesh
    Input Text  xpath://input[@name='fld_email']  testingworld@gmail.com
#creating key word using python function
CreateFolderAtRunTime
#give funtion name without brackets
    createfolder
    #using log shows we can cretae key word using python key word and robot keyword
    log  Python keyword and exiring key word
CreateFolderByTakingArgumnet
    [Arguments]  ${folderName}
    createfolderbytakingForderName  ${folderName}
    log    key word with argument
ConcatenateUserName
    [Arguments]  ${Fname}  ${Lname}
    #function value return Value is stored in ${ResultValue}
    ${ResultValue}=  concatenateestring  ${Fname}  ${Lname}
    log    ${ResultValue}