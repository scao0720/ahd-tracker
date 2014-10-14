<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ahd"
                   user="root"  password=""/>

<%-- 
    Document   : delete
    Created on : Oct 14, 2014, 3:33:41 PM
    Author     : Sabina
--%>

<sql:update>
    DELETE FROM assumptions
    WHERE id = ${param.id}
</sql:update>
    <h2>You have successfully deleted the assumption.</h2>
    <a href="../index.jsp">Return to index</a>