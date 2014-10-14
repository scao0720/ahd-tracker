<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : delete
    Created on : Oct 14, 2014, 3:29:49 PM
    Author     : Sabina
--%>

<sql:query var="result">
    SELECT assumption_id from hypotheses
    WHERE id = ${param.id}
</sql:query>
<sql:update>
    DELETE FROM hypotheses
    WHERE id = ${param.id}
</sql:update>
    <h2>You have successfully deleted the hypothesis.</h2>
    <a href="../assumptions/show.jsp?id=${result.getRows()[0].assumption_id}">Return to assumption</a>