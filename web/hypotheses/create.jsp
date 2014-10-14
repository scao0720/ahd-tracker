<%-- 
    Document   : new-hypothesis-response
    Created on : Oct 12, 2014, 10:11:29 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add assumption</title>
    </head>
    <body>
        <h3>Add assumption</h3>
        <form action='new-assumption-response.jsp' method='post'>
            <div>
                <label for='title'>Title:</label>
                <input type="text" name="title" value="" />
            </div>
            <br>
            <div>
            <label for='body'>Body:</label>
            <textarea name="body" rows="4" cols="20"></textarea>
            </div>
            <br>
            <div>
                <input type="reset" value="Reset" /><input type="submit" value="Submit" />
            </div>
        </form>
        <br>
        # TODO change back link to assumption page
        <a href="index.jsp">Go back</a>
    </body>
</html>