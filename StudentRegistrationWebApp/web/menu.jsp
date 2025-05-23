<%-- 
    Document   : menu
    Created on : May 23, 2025, 3:00:14 AM
    Author     : 223531482
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Dashboard</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }
            .header {
                background: #007BFF;
                color: white;
                padding: 15px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                box-shadow: 0 2px 6px rgba(0,0,0,0.2);
            }
            .header h1 {
                margin: 0;
                font-size: 24px;
            }
            .header a {
                color: white;
                text-decoration: none;
                font-weight: bold;
                padding: 8px 15px;
                border: 1px solid white;
                border-radius: 4px;
                transition: background-color 0.3s;
            }
            .header a:hover {
                background-color: rgba(255,255,255,0.2);
            }
            .container {
                display: flex;
                max-width: 1200px;
                margin: 30px auto;
                background: white;
                border-radius: 10px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.1);
                overflow: hidden;
            }
            .sidebar {
                flex: 1;
                background: #f9faff;
                padding: 30px 25px;
                border-right: 1px solid #e0e0e0;
            }
            .sidebar h2 {
                color: #007BFF;
                margin-bottom: 25px;
                font-size: 22px;
                border-bottom: 2px solid #007BFF;
                padding-bottom: 8px;
            }
            .sidebar p {
                margin: 20px 0;
                font-size: 16px;
            }
            .sidebar a {
                color: white;
                text-decoration: none;
                font-weight: 600;
                font-size: 16px;
                display: block;
                margin: 12px 0;
                padding-left: 10px;
                border-left: 3px solid transparent;
                transition: border-color 0.3s;
            }
            .sidebar a:hover {
                border-left: 3px solid #0056b3;
                text-decoration: none;
                color: whitesmoke;
            }
            .content {
                flex: 3;
                padding: 40px 30px;
                color: #333;
            }
            .content h2 {
                margin-top: 0;
                font-size: 28px;
                margin-bottom: 20px;
            }
            .welcome-text {
                font-size: 18px;
                line-height: 1.6;
            }
            .card {
                background: #f0f4ff;
                border-radius: 8px;
                padding: 20px;
                box-shadow: 0 1px 5px rgba(0,0,0,0.1);
                margin-top: 25px;
                font-size: 18px;
            }
            .footer {
                text-align: center;
                padding: 20px;
                background: #007BFF;
                color: white;
                font-size: 14px;
                margin-top: 20px;
            }
            .social-media {
                margin-top: 10px;
            }
            .social-media a {
                color: white;
                margin: 0 10px;
                font-size: 20px;
                text-decoration: none;
                vertical-align: middle;
                transition: color 0.3s;
            }
            .social-media a:hover {
                color: #d4d4d4;
            }
            .social-media span {
                margin-left: 6px;
                vertical-align: middle;
                font-size: 14px;
            }
            @media (max-width: 768px) {
                .container {
                    flex-direction: column;
                    margin: 20px;
                }
                .sidebar, .content {
                    flex: unset;
                    padding: 20px;
                }
                .sidebar {
                    border-right: none;
                    border-bottom: 1px solid #e0e0e0;
                }
            }
            .header-logout {
                color: white;
                background-color: #007BFF;
                text-decoration: none;
                font-weight: bold;
                padding: 8px 15px;
                border: 1px solid white;
                border-radius: 4px;
                transition: background-color 0.3s;
            }
            .header-logout:hover {
                background-color: rgba(255,255,255,0.2);
            }
            .action-link {
                color: white;
                display: block;
                background: #007BFF;
                text-decoration: none;
                padding: 12px 25px;
                border-radius: 5px;
                transition: background-color 0.3s;
                margin: 10px 0;
                width: fit-content;
                min-width: 200px;
                font-weight: bold;
                font-size: 16px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            }
            .action-link:hover {
                 background-color: #007BFF;
            }


        </style>
    </head>
    <body>
        <%
            String name = (String)request.getParameter("name");
            if(name == null){
                response.sendRedirect("index.html");
                return;
            }
        %>
        <div class="header">
            <h1>Welcome, <%=name%></h1>
            <form action="index.html">
                <input type="submit" class="header-logout" value="Logout">
            </form>
            <!--<a href="logoutServlet.do" method="POST" class="header-logout">Logout</a>-->
        </div>
        <div class="container">
        <div class="sidebar">
            <h2>Quick Actions</h2>
            <a href="add_student.jsp" class="action-link">Add Student</a>
            <a href="view_all_students.jsp" class="action-link">View Student</a>
            
            <div class="content">
                <h2>Dashboard Overview</h2>
                <p class="welcome-text">
                    Welcome to our Web. Here you can easily add students to a database, and view all students in the database. more functionality will be added.
                </p>
                <div class="card">
                    <h3>WE ARE YOUR SOLUTION</h3>
                    <p><strong>More functionality coming soon.</strong></p>
                    <!-- To add more functionality here -->
                </div>
            </div>
        </div>
        <div class="footer">
        &copy; 2025 KG Solutions | Contact Support: support@kgsolutions.co.za | Phone: 123-456-7890
        <div class="social-media">
            <a href="https://github.com/thuhlokay/jee-student-registration" target="_blank" aria-label="GitHub">
                <i class="fab fa-github"></i><span>GitHub</span>
            </a>
        </div>
    </div>
    </body>
</html>
