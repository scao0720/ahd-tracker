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
        <form action='create.jsp' method='post'>
            <input type="hidden" name="hypothesis_id" value="${param.hypothesis_id}"/>
            <div>
                <textarea name="body" rows="4" cols="20"></textarea>
            </div>
            <br>
            <div>
                <input type="reset" value="Reset" /><input type="submit" value="Submit" />
            </div>
        </form>
        <br>
        <a href="../hypotheses/show.jsp?id=${param.hypothesis_id}">Go back</a>
    </body>
</html>


