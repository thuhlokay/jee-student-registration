/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Student;

/**
 *
 * @author 223531482
 */
@Local
public interface StudentFacadeLocal {

    void create(Student student);

    List<Student> findAll();
    
}
