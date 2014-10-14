<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : show-assumption
    Created on : Oct 13, 2014, 11:10:38 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assumption</title>
    </head>
    <body>
        <h2>Assumption #${param.id}</h2>
        <sql:query var="result">
            SELECT title, body, created from assumptions where id = ${param.id}
        </sql:query>
        <p><strong>${result.getRows()[0].title}</strong></p>
        <p>Created: ${result.getRows()[0].created}</p>
        <ul><li>${result.getRows()[0].body}</li>
        </ul>
        <p><a href="edit.jsp?id=${param.id}">Edit assumption</a> | <a href="confirm.jsp?id=${param.id}">Delete assumption</a></p>
        <br>
        <!-- Hypotheses list -->
        <sql:query var="result">
            SELECT id, body from hypotheses where assumption_id = ${param.id}
        </sql:query>
        <p><strong>Associated hypotheses</strong></p>
        <ol>
            <c:forEach var="row" items="${result.rowsByIndex}">
                <li><a href="../hypotheses/show.jsp?id=${row[0]}"><c:out value="${row[1]}" /></a></li>
                </c:forEach>
        </ol>
        <p><a href="../hypotheses/new.jsp?assumption_id=${param.id}">Add new hypothesis</a></p>
        <br>
<p><a href="../index.jsp">Go back</a></p>
    </body>
</html>
