*** Settings ***
Documentation             Willys test
Resource                  /Users/ellenkranzen/PycharmProjects/test/Resources/keyword.robot
Library                   SeleniumLibrary
Suite Setup                Begin Web Test
Suite Teardown             End Web Test

*** Variables ***
${BROWSER}                chrome
${URL}                    http://www.willys.se/

*** Test Cases ***
User can access website
    [Documentation]               Hitta till webbsidan
    [Tags]                        Test 1
    Go to Web Page

User can search for a product
    [Documentation]               Sök på vara
    [Tags]                        Test 2
    Go to Web Page
    Search for Product            kiwi

User can search for another product
    [Documentation]               Sök på vara
    [Tags]                        Test 3
    Go to Web Page
    Search for Product            hundgodis
