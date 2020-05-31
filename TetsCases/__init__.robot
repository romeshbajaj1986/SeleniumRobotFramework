*** Settings ***
#For Folder Level
Suite Setup  Before Test Suite
Suite Teardown  After Test Suite
*** Variables ***


*** Keywords ***
After Test Suite
#two spaces
    Log  AfterTestSuite

Before Test Suite
    Log  BeforeTestSuite
