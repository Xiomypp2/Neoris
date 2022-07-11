@echo off
:menu
title Menu de Opciones
cls
echo.
echo.
echo                                    *************** MENU *****************
echo                                    *                                    *
echo                                    *      AUTOMATIZACION B2B2C          *
echo                                    *              NEORIS                *
echo                                    *                                    *
echo                                    **************************************
echo			"RECUERDA REVISAR LA DATA INGRESADA EN EL EXCEL ANTES DE EJECUTAR CUALQUIER FLUJO"
echo.
echo.
echo        1. - Iniciar Sesion 
echo        2. - Mi cuenta
echo        3. - Recarga
echo        4. - Regresion		
echo        5. - Abrir Excel "Data"
echo        S. - Salir
echo.
echo        ********************************************************************************************
echo.
echo.
echo.

set /p of= Por favor ingresar la opcion que requieres ejecutar: 

 if %of%==1 goto Iniciar_Sesion else goto incorrecto
 if %of%==2 goto Micuenta else goto incorrecto
 if %of%==3 goto Recarga else goto incorrecto
 if %of%==4 goto Regresion else goto incorrecto
 if %of%==5 goto Abrir_excel else goto incorrecto
 if %opcion%==S goto Salir else goto incorrecto
 if %opcion%==s goto Salir else goto incorrecto


:incorrecto
echo Ingresa un valor valido
pause
cls
goto menu 
 

************************************************************************************************************************

:Iniciar_Sesion
title Tags Iniciar Sesion
cls
start /d "C:\B2B2C\test\UI\" robot -d ..\reporting -i Iniciar_Sesion *.robot
goto opcionFin

************************************************************************************************************************
:opcionFin
set /p opcion= Escribe "V" Para regresar al Menu Principal o "S" para dar fin al programa o  "L"  si deseas Ver el Log del Flujo :  
 if %opcion%==v goto menu   else goto incorrecto1
 if %opcion%==V goto menu   else goto incorrecto1
 if %opcion%==S goto Salir  else goto incorrecto1
 if %opcion%==s goto Salir  else goto incorrecto1
 if %opcion%==l goto mirarlog   else goto incorrecto1
 if %opcion%==L goto mirarlog   else goto incorrecto1

************************************************************************************************************************

:incorrecto1
echo Ingresa un valor valido 
pause
cls
goto opcionFin

************************************************************************************************************************
:Salir
title Cerrando aplicacion!
exit

************************************************************************************************************************

:mirarlog
cls
cd C:\B2B2C\test\
start reporting
start /d "C:\B2B2C\test\reporting" report.html
goto menu

************************************************************************************************************************

:Micuenta
cls
title Tags Mi Cuenta
start /d "C:\B2B2C\test\UI\" robot -d ..\reporting -i MiCuenta *.robot
goto opcionFin

************************************************************************************************************************

:Recarga
cls
title Tags Racarga
start /d "C:\B2B2C\test\UI\" robot -d ..\reporting -i Recarga *.robot
goto opcionFin

************************************************************************************************************************

:Regresion
cls
title Tags Racarga
start /d "C:\B2B2C\test\UI\" robot -d ..\reporting -i Iniciar_Sesion -i MiCuenta -i Recarga *.robot
goto opcionFin

************************************************************************************************************************
 
:Abrir_excel
title  Abrir_excel 
start /d "C:\B2B2C\test\Data\" Data.xlsx
goto opcionExcel1
