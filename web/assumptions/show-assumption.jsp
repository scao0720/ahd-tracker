<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
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
    <sql:query var="result" dataSource="${db}">
        SELECT title, body, created from assumptions
    </sql:query>
    <h4>Associated hypotheses</h4>
    <sql:query var="result" dataSource="${db}">
        SELECT id, title from hypotheses where assumption_id = ${param.id}
    </sql:query>

    <table border="1">
        <!-- column headers -->
        <tr>
            <th>ID</th>
            <th>Body</th> 
        </tr>
        <!-- column data -->
        <c:forEach var="row" items="${result.rowsByIndex}">
            <tr>
                <td><c:out value="${row[0]}" /></td>
            <td><a href="show-assumption.jsp?id=${row[0]}"><c:out value="${row[1]}" /></a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="add-assumption.jsp">Add new assumption</a>
</body>
</html>
