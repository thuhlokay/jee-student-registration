/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author 221910834
 */
@MultipartConfig(maxFileSize = 16177215)
public class AddStudentServlet extends HttpServlet {
    
    @EJB
    StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Integer studentNumber = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        
        Part photoPart = request.getPart("photo");
        byte[] photoBytes = null;
        
        if(photoPart != null && photoPart.getSize() > 0){
            
            InputStream inputStream = photoPart.getInputStream();
            
            ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            
            int bytesRead;
            
            byte[] data = new byte[1024];
            
            while((bytesRead = inputStream.read(data, 0, data.length)) != -1){
                buffer.write(data, 0, bytesRead);
            }
            
            photoBytes = buffer.toByteArray();
        }
        
        Student student = createStudent(studentNumber, name, surname, email, course, photoBytes);
        sfl.create(student);
        
        request.getSession().setAttribute("student", student);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_student_outcome.jsp");
        disp.forward(request, response);
        
    }

    private Student createStudent(Integer studentNumber, String name, String surname, String email, String course, byte[] photo) {
        Student s = new Student();
        s.setId(Long.parseLong(studentNumber.toString()));
        s.setName(name);
        s.setSurname(surname);
        s.setEmail(email);
        s.setCourse(course);
        s.setPhoto(photo);
        
        return s;
    }

}
