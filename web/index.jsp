<%-- 
    Document   : index
    Created on : 14-abr-2021, 2:45:13
    Author     : hye
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Vacunas" %>
<%@page import="com.emergentes.modelo.GestorVacunas" %>
<%
    if(session.getAttribute("agenda") == null){
        GestorVacunas objeto1 = new GestorVacunas();
        
        objeto1.insertarVacunas(new Vacunas(1 , "juana","65.21","165", "SI"));
      objeto1.insertarVacunas(new Vacunas(2 , "ana","60","159", "NO"));
      objeto1.insertarVacunas(new Vacunas(3 , "yuly","65.21","165", "SI"));
        session.setAttribute("agenda", objeto1);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Lista de vacunas </h1>
         <table border="1">
             <tr>
               <th> 
             <h1>  PRIMER PARCIAL TEM - 174</h1>
                   <br>   
                   NOMBRE :: ELIANA COSME ASPI
                   <br>
                   CARNET :: 13731534</th>
            </tr>
             
         </table>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>   
                <th>Nombre</th>  
                <th>peso</th>  
                 <th>talla</th>  
                <th>vacuna</th>  
                <th></th>  
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.peso}</td>
                    <td>${item.talla}</td>
                    <td>${item.vacuna}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>  
            
        </table>
    </body>
</html>
