*** Settings ***
Documentation             Willys test
Library                   SeleniumLibrary
#Suite Setup               Begin Web Test
#Suite Teardown            End Web Test


*** Test Cases ***
User can access website
    [Documentation]               Hitta till webbsidan
    [Tags]                        Test 1
    Open browser                  about:blank   chrome
    Go to                         https://www.willys.se/
    Wait until Page Contains      Handla billig mat online
    Close browser
