<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : update
    Created on : Oct 14, 2014, 2:33:29 PM
    Author     : Sabina
--%>

<sql:update>
    UPDATE hypotheses
    SET body = "${param.body}"
    WHERE id = ${param.id}
</sql:update>

<!-- Don't do "request.getParameter" with potential null pointer exception IRL -->
<% response.sendRedirect("show.jsp?id=" + request.getParameter("id"));%>
