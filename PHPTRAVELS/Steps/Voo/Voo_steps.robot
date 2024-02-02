*** Settings ***

Resource  ../../Resource/settings.resource
Resource  ../../Elements/Main_Elements.resource

*** Keywords ***

Quando eu realizo uma busca de um vôo ida e volta
    Wait Until Element Is Visible  ${Home.a_voos}           10
    Click Element                  ${Home.a_voos}
    Wait Until Element Is Visible  ${Voo.Input_IdaeVolta}  10
    Click Element                  ${Voo.Input_IdaeVolta}


E saindo de ${Texto}
    Wait Until Element Is Visible  ${Input_Ida}  10
    Input Text                     ${Input_Ida}  ${Texto}
    Press Keys                     ${Input_Ida}  ARROW_DOWN
    Press Keys                     ${Input_Ida}  ENTER 