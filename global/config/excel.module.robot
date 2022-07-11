*** Settings ***
Library    SeleniumLibrary      timeout=25.0
Library    DatabaseLibrary
Library    OperatingSystem
Library    ../lib/PythonLibraries/ExcelLibrary.py
Library    DateTime


*** Variables ***
${DATAFILE}    ../../test/Data/Data.xlsx

*** Keywords ***
Read Input Data inicial
    [Documentation]    _*SUMMARY:*_
    Open Excel Document    ${DATAFILE}     doc1    #Open Excel File
    #*********************************LOGIN**********************************
    ${_user_pagador}    Read Excel Cell    2   1    Login
    Set Suite Variable    ${_user_pagador}
    ${_Password_pagador}    Read Excel Cell    2    2     Login
    Set Suite Variable    ${_Password_pagador}
    ${_user_RepresentanteL}    Read Excel Cell    2    3     Login
    Set Suite Variable    ${_user_RepresentanteL}
    ${_Password_RepresentanteL}    Read Excel Cell    2    4     Login
    Set Suite Variable    ${_Password_RepresentanteL}
    ${_user_consulta}    Read Excel Cell    2    5     Login
    Set Suite Variable    ${_user_consulta}
    ${_Password_Consulta}    Read Excel Cell    2    6     Login
    Set Suite Variable    ${_Password_Consulta}
    ${_user_AdminTI}    Read Excel Cell    2    7     Login
    Set Suite Variable    ${_user_AdminTI}
    ${_Password_AdminTI}    Read Excel Cell    2    8     Login
    Set Suite Variable    ${_Password_AdminTI}
    ${_user_Autorizador}    Read Excel Cell    2    9     Login
    Set Suite Variable    ${_user_Autorizador}
    ${_Password_Autorizador}    Read Excel Cell    2    10     Login
    Set Suite Variable    ${_Password_Autorizador}
    ${_user_Tangibles}    Read Excel Cell    2    11     Login
    Set Suite Variable    ${_user_Tangibles}
    ${_Password_Tangibles}    Read Excel Cell    2    12     Login
    Set Suite Variable    ${_Password_Tangibles}
    #${_user_AdminTI2}    Read Excel Cell    2    11     Login
    #Set Suite Variable    ${_user_AdminTI2}	
    #${_Password_AdminTI2}    Read Excel Cell    2    12     Login
    #Set Suite Variable    ${_Password_AdminTI2}

    Save Excel Document    ${DATAFILE}         #Save Excel Document
    Close Current Excel Document    #Close Excel document
    Log to Console    ***lOGIN***
    Log to Console    ${_user_pagador}
    Log to Console    ${_Password_pagador}
    Log to Console    ${_user_RepresentanteL}
    Log to Console    ${_Password_RepresentanteL}
    Log to Console    ${_user_consulta}
    Log to Console    ${_Password_Consulta} 
    Log to Console    ${_user_AdminTI}
    Log to Console    ${_Password_AdminTI}
    Log to Console    ${_user_Autorizador}
    Log to Console    ${_Password_Autorizador}
    

Read Input Data
    [Documentation]    _*SUMMARY:*_
    #*********************************LOGIN**********************************
    Open Excel Document    ${DATAFILE}     doc1    #Open Excel File
    #*********************************RECARGA PASASATIEMPO**********************************
    ${_Iteracion}=    Read Excel Cell    ${index}    1     RecargaPasatiempo    
    Set Suite Variable    ${_Iteracion} 
    ${_navegador}=    Read Excel Cell    ${index}    2     RecargaPasatiempo    
    Set Suite Variable    ${_navegador}    
    ${region}    Read Excel Cell    ${index}    3     RecargaPasatiempo
    Set Suite Variable    ${region}
    ${num_orden}    Read Excel Cell    ${index}    4     RecargaPasatiempo
    Set Suite Variable    ${num_orden}
    ${destinoFactura}    Read Excel Cell    ${index}    5     RecargaPasatiempo
    Set Suite Variable    ${destinoFactura}
    ${destinoMercancia}    Read Excel Cell    ${index}    6     RecargaPasatiempo
    Set Suite Variable    ${destinoMercancia}
    ${valorRecarga}    Read Excel Cell    ${index}    7     RecargaPasatiempo
    Set Suite Variable    ${valorRecarga}
    ${comentario}    Read Excel Cell    ${index}    8     RecargaPasatiempo
    Set Suite Variable    ${comentario}
    ${region2}    Read Excel Cell    ${index}    9     RecargaPasatiempo
    Set Suite Variable    ${region2}
    ${num_orden2}    Read Excel Cell    ${index}    10     RecargaPasatiempo
    Set Suite Variable    ${num_orden2}
    ${destinoFactura2}    Read Excel Cell    ${index}    11     RecargaPasatiempo
    Set Suite Variable    ${destinoFactura2}
    ${destinoMercancia2}    Read Excel Cell    ${index}    12     RecargaPasatiempo
    Set Suite Variable    ${destinoMercancia2}
    ${valorRecarga2}    Read Excel Cell    ${index}    13     RecargaPasatiempo
    Set Suite Variable    ${valorRecarga2}
    ${comentario2}    Read Excel Cell    ${index}    14     RecargaPasatiempo
    Set Suite Variable    ${comentario2}
    
    ${NumeroTarjeta}    Read Excel Cell    ${index}    1     FormularioPagoTC
    Set Suite Variable    ${NumeroTarjeta}
    ${CVV}    Read Excel Cell    ${index}    2     FormularioPagoTC
    Set Suite Variable    ${CVV}
    ${MesVencimiento}    Read Excel Cell    ${index}    3     FormularioPagoTC
    Set Suite Variable    ${MesVencimiento}
    ${anoVencimiento}    Read Excel Cell    ${index}    4     FormularioPagoTC
    Set Suite Variable    ${anoVencimiento}
    ${NumCuotas}    Read Excel Cell    ${index}    5     FormularioPagoTC
    Set Suite Variable    ${NumCuotas}
    ${TelefonoC}    Read Excel Cell    ${index}    6     FormularioPagoTC
    Set Suite Variable    ${TelefonoC}
    ${NombreTarjeta}    Read Excel Cell    ${index}    7     FormularioPagoTC
    Set Suite Variable    ${NombreTarjeta}
    ${EstatusPedido}    Read Excel Cell    ${index}    1     HistoricoPedidos
    Set Suite Variable    ${EstatusPedido}
    ${EstatusPago}    Read Excel Cell    ${index}    2     HistoricoPedidos
    Set Suite Variable    ${EstatusPago}
    ${MetodoPago}    Read Excel Cell    ${index}    3     HistoricoPedidos
    Set Suite Variable    ${MetodoPago}
    ${NumeroPedido}    Read Excel Cell    ${index}    4     HistoricoPedidos
    Set Suite Variable    ${NumeroPedido}
    ${NombreUsuario}    Read Excel Cell    ${index}    1     UsuarioAdminTI
    Set Suite Variable    ${NombreUsuario}
    ${ApellidoUsu}    Read Excel Cell    ${index}    2     UsuarioAdminTI
    Set Suite Variable    ${ApellidoUsu}
    ${NumDocUsu}    Read Excel Cell    ${index}    3     UsuarioAdminTI
    Set Suite Variable    ${NumDocUsu}
    ${correoUsu}   Read Excel Cell    ${index}    4     UsuarioAdminTI
    Set Suite Variable    ${correoUsu}
    ${TelUsuario}   Read Excel Cell    ${index}    5     UsuarioAdminTI
    Set Suite Variable    ${TelUsuario}
    ${UsuarioRepreLeg}   Read Excel Cell    ${index}    1     Cartera
    Set Suite Variable    ${UsuarioRepreLeg}
    ${PassRepreLeg}   Read Excel Cell    ${index}    2     Cartera
    Set Suite Variable    ${PassRepreLeg}
    ${Opc_Transac}  Read Excel Cell    ${index}    3     Cartera
    Set Suite Variable    ${Opc_Transac}
    ${Opc_Region}   Read Excel Cell    ${index}    4     Cartera
    Set Suite Variable    ${Opc_Region}
    ${Opc_TipoCobro}   Read Excel Cell    ${index}    5     Cartera
    Set Suite Variable    ${Opc_TipoCobro}
    ${Opc_Producto}   Read Excel Cell    ${index}    6     Cartera
    Set Suite Variable    ${Opc_Producto}


    Save Excel Document    ${DATAFILE}         #Save Excel Document
    Close Current Excel Document    #Close Excel document
    Log to Console    ***DATOS EXCEL***  
    Log to Console    ${_Iteracion}
    Log to Console    ${_navegador}
    Log to Console    ${num_orden}
    Log to Console    ${destinoFactura}
    Log to Console    ${destinoMercancia}
    Log to Console    ${valorRecarga}
    Log to Console    ${comentario}
    

    Log to Console    ***DATOS EXCEL ACTUALIZADO*** 
    Log to Console    ${region2}
    Log to Console    ${num_orden2}
    Log to Console    ${destinoFactura2}
    Log to Console    ${destinoMercancia2}
    Log to Console    ${valorRecarga2}
    Log to Console    ${comentario2}


    Log to Console    ${CVV}
    Log to Console    ${NombreTarjeta}
    Log to Console    ${MesVencimiento}
    Log to Console    ${anoVencimiento}
    Log to Console    ${NumCuotas}
    Log to Console    ${TelefonoC}
    Log to Console    ${NombreTarjeta}
    Log to Console    **** Historico de Pedidos ****
    Log to Console    ${EstatusPedido}
    Log to Console    ${EstatusPago}
    Log to Console    ${MetodoPago}
    Log to Console    ${NumeroPedido}

   
Check Input Data Row Count
    Open Excel Document     ${DATAFILE}     doc1    #Open Excel File
    ${UsedRow}=    count_Row    RecargaPasatiempo    #Get used row count
    #Log to Console      ${UsedRow}      #Cuenta las Filas
    ${MaxRange}=    Set Variable    ${UsedRow}
    Log to Console    \nFila Excel termina en ${MaxRange}       #Asigna la variable UsedRow 
    ${MaxRange}=    Evaluate    ${MaxRange}+1
    #Log to Console    ${MaxRange}       #le da un mas 1 a la variable MaxRange
    Set Suite Variable    ${MaxRange}
    ${UsedRow}=    Evaluate    ${MaxRange}-3
    Set Suite Variable    ${UsedRow}
    Log to Console    Test cases a ejecutar: ${UsedRow}\n    #Log row count to console
    Save Excel Document     ${DATAFILE}    #Save Excel Document
    Close Current Excel Document


Record Execution
    [Arguments]     ${index}    ${pass_a_cambiar}
    Open Excel Document     ${DATAFILE}    doc1    #Open Excel File
    Write Excel Cell    2    4    ${pass_a_cambiar}     Login
    Save Excel Document    ${DATAFILE}   #Save Excel Document
    Close Current Excel Document    #Close Excel document