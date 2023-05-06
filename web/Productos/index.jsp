<%-- 
    Document   : index
    Created on : 5/05/2023
    Author     : MRoblesDev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    <body>
        <h1>Productos</h1>

        <p><a href="ProductosController?accion=nuevo">Nuevo Registro</a></p>

        <table border="1" width="80%">
            <thead>
            <th>Código</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Existencia</th>
            <th></th>
            <th></th>
        </thead>

        <tbody>
            <c:forEach var="producto" items="${lista}">
                <tr>
                    <td><c:out value="${producto.codigo}" /></td>
                    <td><c:out value="${producto.nombre}" /></td>
                    <td><c:out value="${producto.precio}" /></td>
                    <td><c:out value="${producto.existencia}" /></td>
                    <td><a href="ProductosController?accion=modificar&id=<c:out value="${producto.id}" />">Modificar</a></td>
                    <td><a href="ProductosController?accion=eliminar&id=<c:out value="${producto.id}" />">Eliminar</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
