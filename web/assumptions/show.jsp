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
        <h1>Assumption #${param.id}</h1>
    <sql:query var="result">
        SELECT title, body, created from assumptions where id = ${param.id}
    </sql:query>
    <p><strong>${result.getRows()[0].title}</strong></p>
    <p>${result.getRows()[0].body}</p>
    
    <sql:query var="result">
        SELECT id, body from hypotheses where assumption_id = ${param.id}
    </sql:query>
    <table border="1">
        <!-- column headers -->
        <thead>
        <th>Associated hypotheses</th>
        <!-- column data -->
        <c:forEach var="row" items="${result.rowsByIndex}">
            <tr>
            <td><a href="../hypotheses/show.jsp?id=${row[0]}"><c:out value="${row[1]}" /></a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="../hypotheses/new.jsp?assumption_id=${param.id}">Add new hypothesis</a>
</body>
</html>
