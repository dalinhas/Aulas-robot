*** Settings ***
Documentation       Robot Framework Sem Complicação

Library             SeleniumLibrary    timeout=3000


*** Variables ***
${url}          https://www.demoblaze.com
${navegador}    chrome


*** Test Cases ***
Chronos Test
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Click Link    Laptops
    Wait Until Element Is Visible    Link=MacBook Pro
    Click Link    MacBook Pro
    Wait Until Element Is Visible    xpath=//div[2]//a
    Click Element    xpath=//div[2]//a
    Alert Should Be Present
