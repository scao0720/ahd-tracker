<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : show
    Created on : Oct 14, 2014, 1:09:18 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discoveries</title>
    </head>
    <body>
        <h2>Discovery #${param.id}</h2>
        <sql:query var="result">
            SELECT body, created from discoveries where id = ${param.id}
        </sql:query>
        <p>Created: ${result.getRows()[0].created}</p>
        <ul><li>${result.getRows()[0].body}</li>
        </ul>
        <p><a href="edit.jsp?id=${param.id}">Edit assumption</a> | <a href="confirm.jsp?id=${param.id}">Delete assumption</a></p>
        <br>
        <!-- STILL BROKEN -->
        <p><a href="show.jsp?id="${param.hypothesis_id}">Go back</a></p>
    </body>
</html>
