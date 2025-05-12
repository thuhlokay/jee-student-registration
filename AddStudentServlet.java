/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
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
 * @author 221910834
 */
public class AddStudentServlet extends HttpServlet {
    
    @EJB
    StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long studentNumber = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        
        Student student = createStudent(studentNumber, name, surname, email, course);
        sfl.create(student);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_student_outcome.jsp");
        disp.forward(request, response);
        
    }

    private Student createStudent(Long studentNumber, String name, String surname, String email, String course) {
        Student s = new Student();
        s.setId(studentNumber);
        s.setName(name);
        s.setSurname(surname);
        s.setEmail(email);
        s.setCourse(course);
        
        return s;
    }

}
