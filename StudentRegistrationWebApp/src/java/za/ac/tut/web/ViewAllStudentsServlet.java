/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author 223531482
 */
public class ViewAllStudentsServlet extends HttpServlet {
    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            viewAllStudents(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
            request.setAttribute("errMsg", e.getMessage());
            RequestDispatcher disp = request.getRequestDispatcher("error.jsp");
            disp.forward(request, response);
        }
        
        
    }

    private void viewAllStudents(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        List<Student> list = sfl.findAll();
        
        request.setAttribute("list", list);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_all_students_outcome.jsp");
        disp.forward(request, response);
        
    }

}
