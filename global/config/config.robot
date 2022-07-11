*** Settings ***
Resource    variables_opencart.robot
Resource    variables.robot
Resource    excel.module.robot

*** Variables ***

*** Keywords ***
configuracion inicial
    Set Selenium Speed    0.02
    Read Input Data inicial
    Check Input Data Row Count    

Abrir navegador
    [Arguments]     ${_nombreCarpeta}
    Open Browser    ${url_open}    ${navegador}    options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    #Execute JavaScript    window.scrollTo(0,500)
    Wait Until Element Is Visible   //input[contains(@type,'text')]  ${_Sleep}
    ${ruta}=    crear_carpeta    ${_nombreCarpeta}
    Set Test Variable    ${ruta}

cerrar sesion
    Scroll elemento por cordenadas    ${Til_cerrar}
    Click Elemento    ${Til_cerrar}
    tomar evidencia    ${ruta}    CerrarSecion.png
    Click Boton    ${btn_cerrarSeccion}   
    Wait until element is visible    ${Til_inicio}    ${_Sleep}
    Close Browser

cerrar sesion sin cerrar el navegador
    Scroll elemento por cordenadas    ${Til_cerrar}
    Click Elemento    ${Til_cerrar}
    tomar evidencia    ${ruta}    CerrarSecion.png
    Click Boton    ${btn_cerrarSeccion}   
    Wait until element is visible    ${Til_inicio}.

Abrir navegador Tangibles
    [Arguments]     ${_nombreCarpeta}
    Read Input Data
    Open Browser    ${url2}    ${_navegador}    options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Wait Until Element Is Visible    ${Til_inicio}    ${_Sleep}
    ${ruta}=    crear_carpeta    ${_nombreCarpeta}
    Set Test Variable    ${ruta}
   