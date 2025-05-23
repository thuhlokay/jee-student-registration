<%-- 
    Document   : add_student_outcome
    Created on : May 12, 2025, 5:14:37 PM
    Author     : 221910834
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Added Successfully</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 100px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #007BFF;
            font-size: 26px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            margin-bottom: 15px;
        }
        .dashboard-link {
            display: inline-block;
            margin-top: 20px;
            background-color: #007BFF;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .dashboard-link:hover {
            background-color: #0056b3;
        }
        @media (max-width: 600px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <%
        Student student = (Student)session.getAttribute("student");
        String name = student.getName();
        String surname = student.getSurname();
    %>

    <div class="container">
        <h1>Student Added Successfully</h1>
        <p>The student <strong><%=name%></strong> <strong><%=surname%></strong> has been added to the database successfully.</p>
        <a class="dashboard-link" href="StartServlet.do?name=<%=name%>">Back to Dashboard</a>
    </div>
</body>
</html>
