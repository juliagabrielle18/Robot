*** Settings ***
Library            SeleniumLibrary


*** Test Cases ***
Teste de cadastro
    abrir a pagina do serverest
    inserir nome
    inserir email
    inserir senha
    clicar no botão cadastrar

*** Keywords ***
abrir a pagina do serverest
    Open Browser         https://front.serverest.dev/cadastrarusuarios         chrome

inserir nome
    Input Text       id:nome        julia

inserir email
    Input Text    id:email   julia@teste.com

inserir senha
    Input Password   id:password     julia123

clicar no botão cadastrar
    Click Button          //button[@type='submit']
                    
    