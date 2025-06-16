*** Settings ***
Library            SeleniumLibrary


*** Test Cases ***
Teste de login
    abrir a pagina do saucedemo
    inserir username valido
    inserir senha válida
    clicar no botão login

*** Keywords ***
abrir a pagina do saucedemo
    Open Browser    https://www.saucedemo.com/    chrome

inserir username valido
    Input Text         id:user-name        standard_user

inserir senha válida
    Input Password        id:password        secret_sauce

clicar no botão login
    Click Button          id:login-button