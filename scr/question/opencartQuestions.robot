*** Settings ***
Resource    ../../global/lib/generalActions.robot
Resource    ../actions/opencartAction.robot
Resource    ../../scr/userInterface/opencartPage.robot

*** Keywords ***

Validamos ingreso a la pagina
    Validar ingreso a la pagina 

Validamos pedido
    Validar pedido