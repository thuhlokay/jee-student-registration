<%-- 
    Document   : view_all_students
    Created on : May 12, 2025, 4:40:20 PM
    Author     : 223531482
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Students Page</title>
    </head>
    <body>
        <h1>View All Students</h1>
        <p>
            Click the button bellow to view all students.
        </p>
        <form action="ViewAllStudentsServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="VIEW"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
