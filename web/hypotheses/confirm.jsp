<%-- 
    Document   : confirm
    Created on : Oct 14, 2014, 2:40:38 PM
    Author     : Sabina
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<html>
    <form action="delete.jsp" method="post">
        <p>Are you sure you want to delete hypothesis #${param.id}?</p>
        <input type="submit" value="Yes, delete this hypothesis" />
        <input type="hidden" name="id" value="${param.id}"/>
        <p><a href="../hypotheses/show?id=${param.assumption_id}">No, go back</a><p>
    </form>
</html>
