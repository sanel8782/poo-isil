<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Sistema de Cotizaciones</title>
</head>
<body>
    <h2>Sistema de Cotizaciones</h2>
    
    <form action="resultado.jsp" method="POST">
        <label>Nombre del Cliente:</label><br>
        <input type="text" name="cliente" required><br><br>

        <label>Nombre del Producto/Servicio:</label><br>
        <input type="text" name="producto" required><br><br>

        <label>Cantidad:</label><br>
        <input type="text" name="cantidad"><br><br>

        <label>Precio Unitario (S/.):</label><br>
        <input type="text" name="precio"><br><br>

        <button type="submit">Generar Cotización</button>
    </form>
</body>
</html>