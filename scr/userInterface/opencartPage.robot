*** Variables ***

${titulo_tutitulo}  //a[contains(.,'Your Store')]
${_btn_anadir_primer_producto}  (//span[@class='hidden-xs hidden-sm hidden-md'])[7]
${_btn_anadir_segundo_producto}  (//span[@class='hidden-xs hidden-sm hidden-md'])[8]
${titulo_presentado_home}  //h3[contains(.,'Featured')]
${btn_añadir_carrito_home_cam}  (//font[contains(.,'Añadir al carrito')])[8]
${titulo_cam}  (//font[contains(.,'Canon EOS 5D')])[6]
${lst_color}    //select[contains(@name,'option[226]')]
${btn_carrito_compras}  //button[@data-loading-text='Loading...']
${btn_checkout}  //strong[normalize-space()='Checkout']
${titulo_checkout}  //h1[contains(.,'Checkout')]
${rd_btn_checkout}  //input[contains(@value,'guest')]
${_btn_netx_checkout}  //input[contains(@value,'Continue')]
${input_prim_nom}  //input[contains(@name,'firstname')]
${input_apellido}  //input[contains(@name,'lastname')]
${input_email}  //input[contains(@id,'input-payment-email')]   
${input_telefono}  //input[contains(@name,'telephone')]
${input_direccion_uno}  //input[contains(@name,'address_1')]
${input_cuidad}  //input[contains(@name,'city')]
${input_postal}  //input[contains(@name,'postcode')]
${lista_pais}  //select[contains(@name,'country_id')]
${lista_region}  //select[contains(@name,'zone_id')]
${btn_continuar}  //input[contains(@id,'button-guest')]
${rdb_metodopago}  //input[contains(@name,'shipping_method')]
${input_metodo_entrega}  //textarea[contains(@name,'comment')]
${btn_continuar_met_entrega}  //input[contains(@id,'button-payment-method')]
${check_terminos_condiciones}  //input[contains(@name,'agree')]
${btn_confirmar_pedido}  //input[contains(@value,'Confirm Order')]
${titulo_confirmacion_orden}  //h1[contains(.,'Your order has been placed!')]







