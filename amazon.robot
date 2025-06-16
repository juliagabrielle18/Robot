*** Settings ***
Library            SeleniumLibrary


*** Test Cases ***
Teste de cadastro
    abrir a pagina da amazon
    inserir um produto para pesquisar
    clicar em pesquisar


*** Keywords ***
abrir a pagina da amazon
    Open Browser    https://www.amazon.com.br/?&tag=hydrbrabk-20&ref=pd_sl_7rwd1q78df_e&adgrpid=155790195778&hvpone=&hvptwo=&hvadid=677606588104&hvpos=&hvnetw=g&hvrand=945150447164227623&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9198672&hvtargid=kwd-10573980&hydadcr=26346_11691057&gad_source=1     firefox

inserir um produto para pesquisar
    Input Text    id:twotabsearchtextbox     Alexa

clicar em pesquisar
    Click Element    id:nav-search-submit-button




