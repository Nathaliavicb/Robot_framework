***Settings***

Library     SeleniumLibrary

***Variables***
#Criando variável para armazenar o nome da musica
${nomeMusica}       Ariana Grande pov

#Variáveis de configuração
${URL}      https://www.youtube.com/
${Browser}      firefox

#Elementos
${input_pesquisa}       //input[@id="search"]
${button_pesquisa}      //button[@class="style-scope ytd-searchbox"]
${primeiro_elemento}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${verificação}          //ytd-topbar-logo-renderer[@id="logo"]



***Keywords***
Dado que eu acesso o site 
    Open Browser      ${URL}    ${Browser} 

Quando digito o nome da música
    Input Text      ${input_pesquisa}     ${nomeMusica}

E clico no botão buscar
    Wait Until Element Is Visible       ${button_pesquisa}       10
    Click Element           ${button_pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible       ${primeiro_elemento}    30
    Click Element       ${primeiro_elemento}

Então o video é executado
    Wait Until Element Is Visible   ${verificação}      30
    Element Should Be Visible   ${verificação} 
    #Log         "O video foi executado com sucesso"
    Sleep    3s
    Close Browser



**Test Cases**
Cenario 1: Executar video do site do youtube
    [Tags]  regressivo
    Dado que eu acesso o site 
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista 
    Então o video é executado