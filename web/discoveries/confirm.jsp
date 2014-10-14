<%-- 
    Document   : change
    Created on : Oct 14, 2014, 1:23:29 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <form action="delete.jsp" method="post">
        <p>Are you sure you want to delete discovery #${param.id}?</p>
        <input type="submit" value="Yes, delete this discovery" />
        <input type="hidden" name="id" value="${param.id}"/>
        <p><a href="../discoveries/show?id=${param.hypothesis_id}">No, go back</a><p>
    </form>
</html>