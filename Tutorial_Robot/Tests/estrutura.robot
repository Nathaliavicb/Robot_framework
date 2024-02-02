*** Settings ***
Library        SeleniumLibrary




*** Variables ***
${variavel1}        teste1
${variavel2}        teste2
${variavel3}        teste3

*** Keywords ***
abrir site do google
     Open Browser        https://www.google.com.br/      firefox

fechar navegador 
    Close Browser

abrir site da globo 
    Open Browser        https://www.globo.com      firefox

*** Test Cases ***
Cenário 1: Teste de abrir site google
    [Tags]  regressivo
    abrir site do google
    fechar navegador
   
Cenário 2: Teste de abrir site da globo
    abrir site da globo 
    fechar navegador
