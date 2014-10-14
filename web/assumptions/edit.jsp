<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : edit
    Created on : Oct 14, 2014, 2:48:38 PM
    Author     : Sabina
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit existing assumption</title>
    </head>
    <body>
        <h3>Edit assumption</h3>
        <sql:query var="result">
            SELECT title, body from assumptions
            WHERE id = ${param.id}
        </sql:query>
        <form action="update.jsp" method="post">
            <input type="hidden" name="id" value="${param.id}"/>
            <table border="0">
                <tr>
                    <td>Title:</td>
                    <td><textarea name="title" rows="1" cols="20">${result.getRows()[0].title}</textarea></td>
                </tr>
                <tr>
                    <td>Body:</td>
                    <td><textarea name="body" rows="4" cols="20">${result.getRows()[0].body}</textarea>
                    </td>
                </tr>
            </table>
            <br>
            <div>
                <input type="reset" value="Reset" /><input type="submit" value="Submit" />
            </div>
        </form>
        <br>
        <a href="show.jsp?id=${param.id}">Go back</a>
    </body>
</html>