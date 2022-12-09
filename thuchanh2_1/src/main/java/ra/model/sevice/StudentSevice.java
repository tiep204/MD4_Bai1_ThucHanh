package ra.model.sevice;

import ra.model.entity.Student;

import java.util.List;

public interface StudentSevice {
    public List<Student> findAll();
    public Student findById(int studentId);
    public boolean save(Student st);
    public boolean updatee(Student st);
    public boolean delete(int studentId);
}
