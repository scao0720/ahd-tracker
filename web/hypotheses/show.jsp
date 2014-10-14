<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : show
    Created on : Oct 13, 2014, 11:59:09 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hypothesis</title>
    </head>
    <body>
        <h2>Hypothesis #${param.id}</h2>
        <sql:query var="result">
            SELECT body, created from hypotheses where id = ${param.id}
        </sql:query>
        <p>Created: ${result.getRows()[0].created}</p>
        <ul><li>${result.getRows()[0].body}</li>
        </ul>
        <p><a href="edit.jsp?id=${param.id}">Edit hypothesis</a> | <a href="confirm.jsp?id=${param.id}">Delete hypothesis</a></p>
        <br>
        <br>
        <br>
        <!-- Discoveries list -->
        <sql:query var="result">
            SELECT id, body from discoveries where hypothesis_id = ${param.id}
        </sql:query>
        <p><strong>Associated discoveries</strong></p>
        <ol>
            <c:forEach var="row" items="${result.rowsByIndex}">
                <li><a href="../discoveries/show.jsp?id=${row[0]}"><c:out value="${row[1]}" /></a></li>
                </c:forEach>
        </ol>
        <br>
        <p><a href="../discoveries/new.jsp?hypothesis_id=${param.id}">Add new discovery</a></p>
        <br>
        <!-- STILL BROKEN -->
        <p><a href="show.jsp?id="${param.assumption_id}">Go back</a></p>
    </body>
</html>

