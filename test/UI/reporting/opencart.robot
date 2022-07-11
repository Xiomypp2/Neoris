*** Settings ***
Library    SeleniumLibrary
Resource    ../../../global/config/config.robot
Resource    ../../../scr/task/opencartTask.robot
Resource    ../../../scr/question/opencartQuestions.robot


#Suite Setup    configuracion inicial
#Suite Teardown    Close All Browsers    

*** Test Cases ***
prueba automatizacion
    Abrir navegador      prueba automatizacion
    Agregar primer producto
    Agregar segundo producto
    Seleccionar carrito
    Hacer checkout
    Ingresamos detalles facturacion
    Ingresamos datos metodo pago
    Validamos pedido