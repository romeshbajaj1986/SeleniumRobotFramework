*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
#calling Resource File
Resource   ../Resources/Resources1.robot
Library    SeleniumLibrary
Documentation    it gives Details for the test case
#test timeout    60s
Library    ../ExtrenalFiles/UserKeyWords.py
*** Variables ***

*** Test Cases ***
#name of test case
BBD Frame Work
    [Documentation]    test case launch browser

    Given StartBrowser  https://www.facebook.com/login.php  Chrome
    when ConcatenateUserName  romesh  bajaj
    And CreateFolderAtRunTime
    Then CreateFolderByTakingArgumnet    test123

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