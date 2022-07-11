*** Settings ***
Resource    ../../global/lib/generalActions.robot
Library    ../../global/lib/PythonLibraries/GeneralActionsPhyton.py
Resource   ../../scr/userInterface/opencartPage.robot

*** Keywords ***

#Abrir navegador
    #Create Webdriver    Chrome     executable_path=../robot/bin/chromedriver
    #Open Browser        ${url_open}     ${navegador}

Validar ingreso a la pagina 
    Contenga elemento la pagina    ${titulo_tutitulo}
    tomar evidencia    ${ruta}     ingreso.png 

Ingresar y validar el titulo Home
    Click Boton  ${btn_home}
    Contenga elemento la pagina  ${titulo_tutitulo}

Agregar primer producto
    Run Keyword And Ignore Error    Cargando tiempo corto
    Scroll Element Into View    ${_btn_anadir_primer_producto}
    Click Elemento    ${_btn_anadir_primer_producto}
    Run Keyword And Ignore Error    Cargando     

Agregar segundo producto
 
    Scroll Element Into View    ${_btn_anadir_segundo_producto}
    Click Elemento    ${_btn_anadir_segundo_producto}
    Run Keyword And Ignore Error    Cargando  
 
Seleccionar carrito
    Scroll Element Into View    ${btn_carrito_compras}   
    Click Elemento    ${btn_carrito_compras}
    Click Elemento    ${btn_checkout}
    tomar evidencia    ${ruta}     productos.png 

Hacer checkout
    Scroll Element Into View    ${rd_btn_checkout}
    Click Elemento    ${rd_btn_checkout}
    Click Elemento    ${_btn_netx_checkout}

Ingresar detalles facturacion
    Scroll Element Into View    ${btn_carrito_compras}   
    Click Elemento    ${btn_carrito_compras}
    Contenga elemento la pagina    ${titulo_checkout}
    Ingresar Texto    ${input_prim_nom}     test
    Ingresar Texto    ${input_apellido}     test
    Ingresar Texto    ${input_email}     test@gmail.com
    Ingresar Texto    ${input_telefono}     3112223344
    tomar evidencia    ${ruta}     detallesfacturauno.png 
    Ingresar Texto    ${input_direccion_uno}     carrera 2 test 1
    Ingresar Texto    ${input_cuidad}     BOGOTA
    Ingresar Texto    ${input_postal}     112211
    Seleccionar listado por nombre    ${lista_pais}    Colombia
    Click Elemento  //option[@value='720'][contains(.,'Amazonas')]
    tomar evidencia    ${ruta}     detallesfactura.png 
    Click Elemento  ${btn_continuar}

Ingresar datos metodo entrega
    Scroll Element Into View    ${rdb_metodopago}
    Ingresar Texto    ${input_metodo_entrega}     prueba
    Click Elemento  ${btn_continuar_met_entrega}

Ingresar datos metodo pago
    Click Elemento    ${check_terminos_condiciones} 
    Click Elemento    ${btn_continuar_met_entrega}
    tomar evidencia    ${ruta}     orden.png
    Click Elemento    ${btn_confirmar_pedido}

Validar pedido
    Contenga elemento la pagina    ${titulo_confirmacion_orden}
    tomar evidencia    ${ruta}     confirmacion_pedido.png 

    













