package ra.model.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.model.dao.StudentDAO;
import ra.model.entity.Student;
import ra.model.sevice.StudentSevice;

import java.util.List;
@Service
public class StudentServiceImp implements StudentSevice {
    @Autowired
    private StudentDAO studentDAO;
    @Override
    public List<Student> findAll() {
        return studentDAO.findAll();
    }

    @Override
    public Student findById(int studentId) {
        return studentDAO.findById(studentId);
    }

    @Override
    public boolean save(Student st) {
        return studentDAO.save(st);
    }

    @Override
    public boolean updatee(Student st) {
        return studentDAO.updatee(st);
    }

    @Override
    public boolean delete(int studentId) {
        return studentDAO.delete(studentId);
    }
}
