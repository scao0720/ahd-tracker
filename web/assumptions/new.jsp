<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : add-assumption
    Created on : Oct 12, 2014, 10:15:12 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new assumption</title>
    </head>
    <body>
        <h3>Add new assumption</h3>
       <form action="create.jsp" method="post">
       <table border="0">
            <tr>
                <td>Title:</td>
                <td><textarea name="title" rows="1" cols="20"></textarea></td>
            </tr>
            <tr>
                <td>Body:</td>
                <td><textarea name="body" rows="4" cols="20"></textarea>
                </td>
            </tr>
        </table>
        <input type="reset" value="Reset" /><input type="submit" value="Submit"/>
         </form>
        <p>
            <a href="../index.jsp">Go back</a></p>
    </body>
</html>