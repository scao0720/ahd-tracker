<%-- 
    Document   : add-hypothesis
    Created on : Oct 13, 2014, 5:22:56 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new hypothesis</title>
    </head>
    <body>
        <h3>Add new hypothesis</h3>
        <form action='create.jsp' method='post'>
            <input type="hidden" value="${param.assumption_id}"/>
            <div>
                <textarea name="body" rows="4" cols="20"></textarea>
            </div>
            <br>
            <div>
                <input type="reset" value="Reset" /><input type="submit" value="Submit" />
            </div>
        </form>
        <br>
        <!-- TODO-->
        <a href=".jsp">Go back</a>
    </body>
</html>

