*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    JSONLibrary 
Test Teardown    Close Browser   
*** Test Cases ***
Test chrome headless
    log     chrome headless
    Open Browser    url=https://www.google.com/    browser=headlesschrome
    Capture Page Screenshot    headless.png
    
Test chrome headless using options indirect
    log     chrome headless
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Log     ${chrome_options}
    Open Browser    url=https://www.google.com/    browser=chrome    options=${chrome_options}
    Capture Page Screenshot    headless1.png
    
Test chrome headless using options directly from robot
    log     chrome headless
    Open Browser    url=https://www.google.com/    browser=chrome    options=add_argument("--headless")
    Capture Page Screenshot    headless2.png
    
Test chrome headless using desired caps
    log     chrome headless
    ${opts}    Set Variable    {"browserName": "chrome","version": "","platform": "ANY","goog:chromeOptions": {"args": ["--headless","--use-fake-ui-for-media-stream"]}}
    ${opts}    Convert String to JSON    ${opts}
    &{myoptions}    Create Dictionary    args=--headless   
    Open Browser    url=https://www.google.com/    browser=chrome    desired_capabilities=${opts}
    Capture Page Screenshot    headless3.png