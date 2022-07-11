*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary
Library    PythonLibraries/GeneralActionsPhyton.py
Library    DateTime

*** Variables ***
${_Sleep}    120s
${_SleepCorto}    3s



*** keywords ***
tomar evidencia
    [Arguments]     ${ruta}    ${nombre}
    Capture Page Screenshot    ${ruta}${nombre}
    ScreenCapLibrary.Set Screenshot Directory       ${ruta}

tomar captura elemento    
    [Arguments]     ${ruta}    ${nombre}    ${elemento}
    Capture Element Screenshot    ${elemento}    ${ruta}${nombre}


Presionar enter
    [Arguments]   ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Element should be visible   ${element}
    Set Focus To Element    ${element}
    SeleniumLibrary.Press Keys    ${element}    ENTER      

Ingresar Texto
    [Arguments]    ${element}    ${data}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Set Focus To Element    ${element}
    Input Text    ${element}    ${data}

Click Boton
    [Arguments]   ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Set Focus To Element    ${element}    
    SeleniumLibrary.Click Button    ${element}

Click Elemento
    [Arguments]   ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Set Focus To Element    ${element}
    SeleniumLibrary.Click Element    ${element}

Click Elemento Sleep Corto
    [Arguments]   ${element}
    Wait until element is visible    ${element}    ${_SleepCorto}
    Wait until element is enabled    ${element}    ${_SleepCorto}
    Set Focus To Element    ${element}
    SeleniumLibrary.Click Element    ${element}
    ${_SleepCorto}

Click Link
    [Arguments]   ${element}
    Scroll Element Into View    ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Set Focus To Element    ${element}
    SeleniumLibrary.Click Link    ${element}    

Doble Click Elemento
    [Arguments]   ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Element should be visible   ${element}
    Double Click Element    ${element}

Seleccionar listado por valor
    [Arguments]   ${element}    ${data}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Element should be visible   ${element}
    Select From List By Value    ${element}     ${data}

Seleccionar listado por nombre
    [Arguments]   ${element}    ${data}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Element should be visible   ${element}
    Select From List By Label    ${element}     ${data}

Boton de opcion
    [Arguments]   ${element}    ${element2}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Element should be visible   ${element}
    SeleniumLibrary.Select Radio Button    ${element}   ${element2}

Checkbox
    [Arguments]   ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    Wait until element is enabled    ${element}    ${_Sleep}
    Element should be visible   ${element}
    Click Button    ${element}

Scroll elemento por elemento
    [Arguments]  ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    Scroll Element Into View    ${element}
    Set Focus To Element    ${element}

Scroll elemento por cordenadas
    [Arguments]  ${element}
    Wait until element is visible    ${element}    ${_Sleep}
    ${x}=        Get Horizontal Position  ${element}
    ${y}=        Get Vertical Position    ${element}
    Execute Javascript  window.scrollTo(${x}, ${y})
    Sleep    1S

Scroll elemento por cordenadas sleep corto
    [Arguments]  ${element}
    Wait until element is visible    ${element}    ${_SleepCorto}
    ${x}=        Get Horizontal Position  ${element}
    ${y}=        Get Vertical Position    ${element}
    Execute Javascript  window.scrollTo(${x}, ${y})
    Sleep    1S


Scroll al final de la pagina
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1s


Scroll Tabulacion
    [Arguments]  ${tab}
    FOR    ${i}    IN RANGE    ${tab}
    SeleniumLibrary.Press Keys    NONE    TAB 
    END

Mouse sobre el elemento
    [Arguments]    ${element}
    Set Focus To Element    ${element}
    Mouse Over      ${element}

Contenga texto la pagina
    [Arguments]    ${text}
    Wait until page contains    ${text}     ${_Sleep}
    Page Should Contain     ${text}     ${_Sleep}

No contenga texto la pagina
    [Arguments]    ${text}
    Wait Until Page Does Not Contain    ${text}     ${_Sleep}
    Page Should Not Contain     ${text}     ${_Sleep}

Contenga elemento la pagina
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}     ${_Sleep}
    Wait Until Page Contains Element     ${element}     ${_Sleep}
    Set Focus To Element    ${element}    
    
No contenga elemento la pagina
    [Arguments]    ${element}
    Page Should Not Contain Element    ${element}
    

Validar error
    [Arguments]  ${element}  ${text}
    ${_validar_error}=    Get Text    ${element}
    Run Keyword And Expect Error    ${text}     ${_validar_error}


########## FUNCIONES B2B2C ############

Ingresamos la fecha de inicio y de fin
    Click Elemento      ${btn_fecha_inicio}
    ${fecha_inicio}=    fecha2meses
    ${Xpath} =      Catenate      //abbr[@aria-label='${fecha_inicio}']    
    FOR     ${i}    IN RANGE    12
        Click Elemento      ${btn_mes_prev}
        ${element_visible} =  Run Keyword and return status  Wait Until Element Is Visible    ${Xpath}  1s
        Exit For Loop If   ${element_visible}    
    END
    tomar evidencia  ${ruta}    FechaInicio.png
    Click Elemento   ${Xpath}

Ingresamos la fecha de inicio y de fin 2
    Click Elemento      ${btn_calendario_inicio}   
    FOR     ${i}    IN RANGE    2
        Click Elemento      ${btn_mes_prev}    
    END
    tomar evidencia  ${ruta}    FechaInicio.png
    Click Elemento   ${btn_dia_inicio}


Inicio Ventana correo 
    Execute Javascript    window.open()     #Abre una nueva ventana ​​en blanco
    Switch Window	locator=NEW		        #Cambiado a la segunda ventana
    Go To	https://yopmail.com/es			    #La segunda ventana navega al sitio de yopmail

Ventana principal
    Switch Window	MAIN

Direccionar ventana principal
    Switch Window	MAIN

