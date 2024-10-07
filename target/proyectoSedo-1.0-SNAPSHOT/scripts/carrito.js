/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


    var carritoVisible = false;

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', ready);
    } else {
        ready();
    }

    function ready() {
        var botonesEliminarItem = document.getElementsByClassName('btn-eliminar');
        for (var i = 0; i < botonesEliminarItem.length; i++) {
            var button = botonesEliminarItem[i];
            button.addEventListener('click', eliminarItemCarrito);
        }

        var botonesSumarCantidad = document.getElementsByClassName('sumar-cantidad');
        for (var i = 0; i < botonesSumarCantidad.length; i++) {
            var button = botonesSumarCantidad[i];
            button.addEventListener('click', sumarCantidad);
        }

        var botonesRestarCantidad = document.getElementsByClassName('restar-cantidad');
        for (var i = 0; i < botonesRestarCantidad.length; i++) {
            var button = botonesRestarCantidad[i];
            button.addEventListener('click', restarCantidad);
        }

        var botonesAgregarAlCarrito = document.getElementsByClassName('boton-item');
        for (var i = 0; i < botonesAgregarAlCarrito.length; i++) {
            var button = botonesAgregarAlCarrito[i];
            button.addEventListener('click', agregarAlCarritoClicked);
        }

        document.getElementsByClassName('btn-pagar')[0].addEventListener('click', pagarClicked);

        // Agregar un event listener para el cambio en la cantidad de productos en el carrito
        document.querySelector('.carrito-items').addEventListener('input', actualizarTotalCarrito);

        actualizarTotalCarrito();
    }

    function agregarAlCarritoClicked(event) {
        var button = event.target;
        var item = button.parentElement;
        var titulo = item.getElementsByClassName('titulo-item')[0].innerText;
        var precio = item.getElementsByClassName('precio-item')[0].innerText;
        var imagenSrc = item.getElementsByClassName('img-item')[0].src;

        agregarItemCarrito(titulo, precio, imagenSrc);
    }

    function agregarItemCarrito(titulo, precio, imagenSrc) {
        var carritoItems = document.getElementsByClassName('carrito-items')[0];
        var nombresItems = carritoItems.getElementsByClassName('carrito-item-titulo');

        for (var i = 0; i < nombresItems.length; i++) {
            if (nombresItems[i].innerText === titulo) {
                alert('Este producto ya está en el carrito');
                return;
            }
        }

        var carritoItem = document.createElement('div');
        carritoItem.classList.add('carrito-item');

        var carritoItemsNombre = document.createElement('span');
        carritoItemsNombre.classList.add('carrito-item-titulo');
        carritoItemsNombre.innerText = titulo;
        carritoItem.appendChild(carritoItemsNombre);

        var carritoItemsPrecio = document.createElement('span');
        carritoItemsPrecio.classList.add('carrito-item-precio');
        carritoItemsPrecio.innerText = precio;
        carritoItem.appendChild(carritoItemsPrecio);

        var carritoItemsImagen = document.createElement('img');
        carritoItemsImagen.classList.add('carrito-item-img');
        carritoItemsImagen.src = imagenSrc;
        carritoItem.appendChild(carritoItemsImagen);

        var carritoItemCantidad = document.createElement('div');
        carritoItemCantidad.classList.add('selector-cantidad');
        carritoItemCantidad.innerHTML =
                '<i class="fas fa-minus restar-cantidad"></i>' +
                '<input type="number" value="1" class="carrito-item-cantidad">' +
                '<i class="fas fa-plus sumar-cantidad"></i>';
        carritoItem.appendChild(carritoItemCantidad);

        var botonEliminar = document.createElement('span');
        botonEliminar.classList.add('btn-eliminar');
        botonEliminar.innerHTML = '<i class="fas fa-trash"></i>';
        carritoItem.appendChild(botonEliminar);

        carritoItems.appendChild(carritoItem);

        botonEliminar.addEventListener('click', eliminarItemCarrito);

        // Mostrar el carrito si tiene productos
        document.getElementsByClassName('carrito')[0].style.display = 'block';

        actualizarTotalCarrito();
    }

    function eliminarItemCarrito(event) {
        var buttonClicked = event.target;
        buttonClicked.parentElement.parentElement.remove();
        actualizarTotalCarrito();
    }

    function actualizarTotalCarrito() {
        var carritoItemContainer = document.getElementsByClassName('carrito-items')[0];
        var carritoItems = carritoItemContainer.getElementsByClassName('carrito-item');
        var total = 0;

        for (var i = 0; i < carritoItems.length; i++) {
            var item = carritoItems[i];
            var precioElemento = item.getElementsByClassName('carrito-item-precio')[0];
            var cantidadElemento = item.getElementsByClassName('carrito-item-cantidad')[0];
            var precio = parseFloat(precioElemento.innerText.replace('$', ''));
            var cantidad = cantidadElemento.value;
            total += precio * cantidad;
        }

        total = Math.round(total * 100) / 100;
        document.getElementsByClassName('carrito-total')[0].getElementsByClassName('total')[0].innerText = '$' + total;

        // Ocultar el carrito si está vacío
        var carritoItemContainer = document.getElementsByClassName('carrito-items')[0];
        if (carritoItemContainer.children.length === 0) {
            document.getElementsByClassName('carrito')[0].style.display = 'none';
        }
    }

    // Aumento en uno la cantidad del elemento seleccionado
    function sumarCantidad(event) {
        var buttonClicked = event.target;
        var selector = buttonClicked.parentElement;
        var cantidadActual = parseInt(selector.getElementsByClassName('carrito-item-cantidad')[0].value);
        cantidadActual++;
        selector.getElementsByClassName('carrito-item-cantidad')[0].value = cantidadActual;
        actualizarTotalCarrito();
    }

    // Resto en uno la cantidad del elemento seleccionado
    function restarCantidad(event) {
        var buttonClicked = event.target;
        var selector = buttonClicked.parentElement;
        var cantidadActual = parseInt(selector.getElementsByClassName('carrito-item-cantidad')[0].value);
        cantidadActual--;
        if (cantidadActual >= 1) {
            selector.getElementsByClassName('carrito-item-cantidad')[0].value = cantidadActual;
        }
        actualizarTotalCarrito();
    }

    function pagarClicked() {
        alert('Su Pedido fue Enviado con Exito, Gracias por su Compra!');
        var carritoItems = document.getElementsByClassName('carrito-items')[0];
        while (carritoItems.hasChildNodes()) {
            carritoItems.removeChild(carritoItems.firstChild);
        }
        actualizarTotalCarrito();
    }


