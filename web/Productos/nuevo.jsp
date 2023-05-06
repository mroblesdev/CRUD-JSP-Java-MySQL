<%-- 
    Document   : nuevo
    Created on : 5/05/2023
    Author     : MRoblesDev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo producto</title>
    </head>
    <body>
        <h1>Nuevo registro</h1>

        <form action="ProductosController?accion=insertar" method="POST" autocomplete="off">
            <p>
                Código: <input type="text" id="codigo" name="codigo" required autofocus="true" />
            </p>

            <p>
                Nombre: <input type="text" id="nombre" name="nombre" required />
            </p>

            <p>
                Precio: <input type="text" id="precio" name="precio" required />
            </p>

            <p>
                Existencia <input type="text" id="existencia" name="existencia" required />
            </p>

            <button id="guardar" name="guardar" type="submit">Guardar</button>
        </form>
    </body>
</html>
