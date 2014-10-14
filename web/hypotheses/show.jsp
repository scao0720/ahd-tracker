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
        <h1>Hypothesis #${param.id}</h1>
    <sql:query var="result">
        SELECT body, created from hypotheses where id = ${param.id}
    </sql:query>
    <p><strong>${result.getRows()[0].title}</strong></p>
    <p>${result.getRows()[0].body}</p>
  
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
    <a href="../discoveries/new.jsp?hypothesis_id=${param.id}">Add new discovery</a>
</body>
</html>

