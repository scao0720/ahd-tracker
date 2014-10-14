<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>
<%-- 
    Document   : update
    Created on : Oct 14, 2014, 1:56:08 PM
    Author     : Sabina
--%>
<sql:query var="result">
    SELECT hypothesis_id from discoveries
    WHERE id = ${param.id}
</sql:query>
<sql:update>
    UPDATE discoveries
    SET body = "${param.body}"
    WHERE id = ${param.id}
</sql:update>

<!-- Don't do "request.getParameter" with potential null pointer exception IRL -->
<% response.sendRedirect("../discoveries/show.jsp?id=" + request.getParameter("hypothesis_id"));%>