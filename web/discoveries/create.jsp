<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : new-discovery-response
    Created on : Oct 13, 2014, 5:22:42 PM
    Author     : Sabina
--%>

<sql:update var="result">
    INSERT INTO discoveries (body, created, hypothesis_id)
    VALUES ("${param.body}", now(),${param.hypothesis_id})
</sql:update>
<!-- Don't do "request.getParameter" with potential null pointer exception IRL -->
<% response.sendRedirect("../hypotheses/show.jsp?id="+request.getParameter("hypothesis_id")); %>