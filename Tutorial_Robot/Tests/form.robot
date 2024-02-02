*** Settings ***
Library        SeleniumLibrary




*** Variables ***
${input_name}      //input[@id="name"]
${input_phone}     //input[@id="phone"]
${input_email}     //input[@id="email"]



*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://docs.google.com/forms/d/e/1FAIpQLSfoTJyJks-vqm1JQSS6mNMVL20mb2M_108q_iewyDECWlu5Rg/viewform      firefox

preencher campos
    Input Text ${input_name}    Nathalia
    Input Text ${input_phone}   27992727951
    Input Text ${input_email}   nat@gmail.com

clicar em Submit
    Click Element ${button_submit}

fechar navegador

    Close Browser

*** Test Cases ***
Cenario 1: Preencher formulário
    abrir navegador e acessar o site
    preencher campos
    clicar em Submit
    fechar navegador
