*** Variables ***
${url}=    https://tiendaaliadosqa.claro.com.co/auth/login
${Til_inicio}=    //h2[normalize-space()='Iniciar sesión']
${Til_cerrar}=    //span[contains(text(),'¡Hola')]
${btn_cerrarSeccion}    //button[normalize-space()='Cerrar sesión']
${numero}=    ""
${numero_Pedido}=    ""
${url2}=    https://tangibles.wcaas.net/auth/login