<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Oct 12, 2014, 11:07:29 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>AHD Tracker</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h2>Sabina's AHD Tracker</h2>
        <div> List of assumptions
        </div>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ahd"
                           user="root"  password=""/>
        <sql:query var="result" dataSource="${db}">
            SELECT id, title from assumptions
        </sql:query>

        <table border="1">
            <!-- column headers -->
            <tr>
                <th>ID</th>
                <th>Title</th> 
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
