*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
#calling Resource File
Resource   ../Resources/Resources1.robot
Library    SeleniumLibrary
Documentation    it gives Details for the test case
#test timeout    60s
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
#name of test case
TC06KeywordsinResourceFile
    [Documentation]    test case launch browser
   # [Timeout]    2mins 8s
#calling Keyword which return value
    ${Res}=  StartBrowser  ${URL}  ${Browser}
    log  ${Res}
#Calling Key Word using argumnet
    Enter UserName & Email  Romesh  romesh@gmail.com

    #Close Browser
