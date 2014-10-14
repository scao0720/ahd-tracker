<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : response.jsp
    Created on : Oct 13, 2014, 10:51:27 PM
    Author     : Sabina
--%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>
<sql:update var="result">
    INSERT INTO assumptions (title, body, created)
    VALUES ("${param.title}", "${param.body}", now())
</sql:update>

<% response.sendRedirect("index.jsp"); %>