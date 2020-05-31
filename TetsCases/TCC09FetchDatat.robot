*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
*** Variables ***
#variable name starts with $ and two spaces is given bettwen attribute and key word and no "" or '' is used
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
#name of test case
Fetch Data
#two spaces is given bettwen attribute and key word and one space bettwen keyword
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Set Selenium Speed  2seconds
    #Text Box
    Input Text  name:fld_username  Romesh
    Input Text  xpath://input[@name='fld_email']  testingworld@gmail.com
    #will fetch page title
    ${PageTitle}  get title
    #will return selenium speed
    ${Speed}  get selenium speed
    log  ${Speed}
    log  ${PageTitle}
    # Fetch Value
    ${Value}  get value  xpath://input[@type='submit']
    log  ${Value}
    #Fetch Text
    ${Text}  get text  xpath://a[text()='Read Detail']
    log  ${Text}
    #fetch Value Down /from list
    Select From List By Index  name:sex  2
    ${ListValue}    get selected list value  name:sex
    ${ListText}  get selected list label  name:sex
    #fetch all value or item of list
    ${All Label}  get list items  name:sex
    log  ${ListValue}
    log  ${ListText}
    log  ${All Label}

    #Fetch URL of current page
    ${URL}  get location
    #To Fetch HTML
    ${HTML}=  get source
    #Fetch Attribute of an element,element details attribute name
    ${Attri}=  get element attribute  name:fld_username  class
    #Get count of element of particular locator will total number of element with class field
    ${Count}  get element count  class:field

    log  ${URL}
    log  ${HTML}
    log  ${Attri}
    log  ${Count}

    #Clear Element Text  name:fld_username
    #Drop Down
    #Select From List By Value  name:sex  1
    #for Radio button we need to give group name first and Then Value
    #Select Radio Button  add_type  office
    #Select Check Box  name:terms
    #Drop Down
    #Select From List By Label  name:sex  Female

    #Click Link  xpath://a[text()='Read Detail']
    #Close Browser