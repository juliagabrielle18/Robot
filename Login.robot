*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login com usuário e senha corretos
    abrir a pagina do saucedemo
    inserir username valido
    inserir senha válida
    clicar no botão login

Login com usuário e senha incorretos
    abrir a pagina do saucedemo
    inserir username invalido
    inserir senha inválida
    clicar no botão login

Logout após login bem-sucedido
    abrir a pagina do saucedemo
    inserir username valido
    inserir senha válida
    clicar no botão login
    abrir menu lateral
    clicar no botão logout

*** Keywords ***
abrir a pagina do saucedemo
    Open Browser    https://www.saucedemo.com/    chrome

inserir username valido
    Input Text    id:user-name    standard_user

inserir senha válida
    Input Password    id:password    secret_sauce

inserir username invalido
    Input Text    id:user-name    error_user

inserir senha inválida
    Input Password    id:password    senha_incorreta

clicar no botão login
    Click Button    id:login-button

abrir menu lateral
    Click Element    id:react-burger-menu-btn

clicar no botão logout
    Click Element    id:logout_sidebar_link
