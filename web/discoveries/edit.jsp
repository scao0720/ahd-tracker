<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : change
    Created on : Oct 14, 2014, 1:40:29 PM
    Author     : Sabina
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit existing discovery</title>
    </head>
    <body>
        <h3>Edit discovery</h3>
        <sql:query var="result">
            SELECT body from discoveries
            WHERE id = ${param.id}
        </sql:query>
        <form action="update.jsp" method="post">
            <input type="hidden" name="id" value="${param.id}"/>
            <div>
                <textarea name="body" rows="4" cols="20">${result.getRows()[0].body}</textarea>
            </div>
            <br>
            <div>
                <input type="reset" value="Reset" /><input type="submit" value="Submit" />
            </div>
        </form>
        <br>
        <a href="show.jsp?id=${param.id}">Go back</a>
    </body>
</html>
