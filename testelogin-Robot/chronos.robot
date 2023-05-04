*** Settings ***
Documentation       Robot Framework Sem Complicação

Library             SeleniumLibrary    timeout=3000


*** Variables ***
${url}          https://www.demoblaze.com
${navegador}    chrome


*** Test Cases ***
Chronos Test
    Open Browser    ${url}    ${navegador}
