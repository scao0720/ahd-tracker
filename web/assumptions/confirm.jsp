<%-- 
    Document   : confirm
    Created on : Oct 14, 2014, 3:32:38 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <form action="delete.jsp" method="post">
        <p>Are you sure you want to delete assumption #${param.id}?</p>
        <input type="submit" value="Yes, delete this assumption" />
        <input type="hidden" name="id" value="${param.id}"/>
        <p><a href="show.jsp?id=${param.id}">No, go back</a></p>
    </form>
</html>