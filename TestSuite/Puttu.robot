*** Settings ***
Documentation    Testing Website
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/UserDefinedKeywords.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase
*** Variables ***

*** Test Cases ***

Verifying the new page loads
    [Documentation]    Testing if the new posts get created
    [Tags]    Functionality

    UserDefinedKeywords.Verifying the new post


Verifying if the post has launched
    [Documentation]    Testing if the back to posts works
    [Tags]    Functionality

    UserDefinedKeywords.Verifying the back to post

Verifying if the posts can be edited
    [Documentation]    Testing if the edit the posts works

    UserDefinedKeywords.Verifying the edit the post

Verifying if the destroy posts can be made
    [Documentation]    Testing if the edit the posts works

    UserDefinedKeywords.Verifying the destroy the post


Verifying if the posts are being made
    [Documentation]    Testing if the post1 is on the localhost

    UserDefinedKeywords.Verifying if the post1 Exists
