<%-- 
    Document   : view_all_students_outcome
    Created on : May 12, 2025, 5:26:48 PM
    Author     : 223531482
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Students Outcome Page</title>
    </head>
    <body>
        <h1>View All Students Outcome</h1>
        <%
            List<Student> list = (List<Student>)request.getAttribute("list");
        %>
        <p>
            Below is the Student List:
        </p>
        <table>
            <%
                for(int i = 0; i < list.size(); i++){
                    
                    Student s = list.get(i);
                    Long studNum = s.getId();
                    String name = s.getName();
                    String surname = s.getSurname();
                    String emailAddress = s.getEmailAddress();
                    String course = s.getCourse();
                
            %>
            <tr>
                <td>Student Number:</td>
                <td><%=studNum%></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td>Email Address:</td>
                <td><%=emailAddress%></td>
            </tr>
            <tr>
                <td>Course:</td>
                <td><%=course%></td>
            </tr>
            <br>
            <%
                }
            %>
        </table>
        <p>
            Please click <a href="menu.html">here</a> to go back to the main menu, or <a href="index.html">here</a> for the home page.
        </p>
        <
    </body>
</html>
