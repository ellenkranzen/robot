*** Settings ***
Documentation             Willys test
Library                   SeleniumLibrary
#Suite Setup               Begin Web Test
#Suite Teardown            End Web Test


*** Test Cases ***
User can access website and search for a product
    [Documentation]               Hitta till webbsidan
    [Tags]                        Test 1
    Open browser                  about:blank   chrome
    Go to                         https://www.willys.se/
    Wait until Page Contains      Handla billig mat online
    Input Text                    id:selenium--search-items-input                   kiwi
    Press Keys                    xpath://*[@id="selenium--search-items-input"]     RETURN
    Press Keys                    xpath://*[@id="selenium--search-items-input"]     RETURN
    Wait until Page Contains      Sökord: kiwi
    Close browser

