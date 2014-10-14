<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : new-hypothesis-response
    Created on : Oct 12, 2014, 10:11:29 PM
    Author     : Sabina
--%>

<sql:update var="result">
    INSERT INTO hypotheses (body, created, assumption_id)
    VALUES ("${param.body}", now(),${param.assumption_id})
</sql:update>
<!-- Don't do "request.getParameter" with potential null pointer exception IRL -->
<% response.sendRedirect("../assumptions/show.jsp?id="+request.getParameter("assumption_id")); %>