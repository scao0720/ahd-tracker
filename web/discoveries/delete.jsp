<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : remove
    Created on : Oct 14, 2014, 1:23:22 PM
    Author     : Sabina
--%>

<sql:query var="result">
    SELECT hypothesis_id from discoveries
    WHERE id = ${param.id}
</sql:query>
<sql:update>
    DELETE FROM discoveries
    WHERE id = ${param.id}
</sql:update>
    <h2>You have successfully deleted the discovery.</h2>
    <a href="../hypotheses/show.jsp?id=${result.getRows()[0].hypothesis_id}">Return to hypothesis</a>