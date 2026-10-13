<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado de Cotización</title>
</head>
<body>
    <h2>Detalle de la Cotización</h2>
    <%
        String cliente = request.getParameter("cliente");
        String producto = request.getParameter("producto");
        String cantidad = request.getParameter("cantidad");
        String precio = request.getParameter("precio");

        String error = null;
        double subtotal = 0;
        double total = 0;
        int cantidadInt = 0;
        double precioDouble = 0;

        if (cliente == null || cliente.trim().isEmpty() ||
            producto == null || producto.trim().isEmpty() ||
            cantidad == null || cantidad.trim().isEmpty() ||
            precio == null || precio.trim().isEmpty()) {
            error = "Error: Todos los campos son obligatorios y no deben estar vacíos.";
        } else {
            cliente = cliente.trim();
            producto = producto.trim();

            try {
                cantidadInt = Integer.parseInt(cantidad.trim());
                precioDouble = Double.parseDouble(precio.trim());

                if (cantidadInt <= 0 || precioDouble < 0) {
                    error = "Error: La cantidad debe ser mayor a cero y el precio no puede ser negativo.";
                } else {
                    subtotal = cantidadInt * precioDouble;
                    total = subtotal;
                }
            } catch (NumberFormatException e) {
                error = "Error: La cantidad y el precio deben ser valores numéricos válidos.";
            }
        }
    %>

    <% if (error != null) { %>
        <p><%= error %></p>
        <br>
        <a href="index.jsp">Volver al formulario</a>
    <% } else { %>
        <p><strong>Cliente:</strong> <%= cliente.toUpperCase() %></p>
        <p><strong>Producto/Servicio:</strong> <%= producto %></p>
        <p><strong>Cantidad:</strong> <%= cantidadInt %></p>
        <p><strong>Precio Unitario:</strong> S/. <%= precioDouble %></p>
        <hr>
        <p><strong>Subtotal:</strong> S/. <%= subtotal %></p>
        <p><strong>Total a Pagar:</strong> S/. <%= total %></p>
        <br>
        <a href="index.jsp">Realizar otra cotización</a>
    <% } %>

</body>
</html>