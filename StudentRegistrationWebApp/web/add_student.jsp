<%-- 
    Document   : add_student
    Created on : May 12, 2025, 4:33:08 PM
    Author     : 221910834
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add Student</h1>
        
        <p>
            Please enter the student details below:
        </p>
        <form action="AddStudentServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname"/></td>
                </tr>
                <tr>
                    <td>Email Address:</td>
                    <td><input type="email" name="email"/></td>
                </tr>
                <tr>
                    <td>Course Name:</td>
                    <td><input type="text" name="course"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD STUDENT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
