<%-- 
    Document   : add-discovery
    Created on : Oct 13, 2014, 5:23:06 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new discovery</title>
    </head>
    <body>
        <h3>Add new discovery</h3>
            <form action='response.jsp' method='post'>
        <div>
            <textarea name="body" rows="4" cols="20"></textarea>
        </div>
        <br>
        <div>
            <input type="reset" value="Reset" /><input type="submit" value="Submit" />
        </div>
    </form>
    <br>
    <a href="show-hypothesis.jsp">Go back</a>
</body>
</html>


