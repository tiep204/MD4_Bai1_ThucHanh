package ra.model.daoImp;

import org.springframework.stereotype.Repository;
import ra.model.dao.StudentDAO;
import ra.model.entity.Student;
import ra.model.ulti.ConnectionDB;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
@Repository
public class StudentDAOImp implements StudentDAO {
    @Override
    public List<Student> findAll() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Student> listStudent = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call getAllStudent()}");
            ResultSet rs = callSt.executeQuery();
            listStudent = new ArrayList<>();
            while (rs.next()){
                Student st = new Student();
                st.setStudentId(rs.getInt("studentId"));
                st.setStudentName(rs.getString("studentName"));
                st.setAge(rs.getInt("age"));
                st.setSex(rs.getBoolean("sex"));
                st.setAddress(rs.getString("address"));
                st.setBirthDate(rs.getDate("birthdate"));
                st.setStatus(rs.getBoolean("studentStatus"));
                listStudent.add(st);
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return listStudent;
    }

    @Override
    public Student findById(int studentId) {
        Connection conn = null;
        CallableStatement callSt = null;
        Student st = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call getByIdStudent(?)}");
            callSt.setInt(1,studentId);
            ResultSet rs = callSt.executeQuery();
            st = new Student();
            if (rs.next()){
                st.setStudentId(rs.getInt("studentId"));
                st.setStudentName(rs.getString("studentName"));
                st.setAge(rs.getInt("age"));
                st.setSex(rs.getBoolean("sex"));
                st.setAddress(rs.getString("address"));
                st.setBirthDate(rs.getDate("birthdate"));
                st.setStatus(rs.getBoolean("studentStatus"));
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return st;
    }

    @Override
    public boolean save(Student st) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call insertStudentt(?,?,?,?,?,?)}");
            callSt.setString(1,st.getStudentName());
            callSt.setInt(2,st.getAge());
            callSt.setBoolean(3, st.isSex());
            callSt.setString(4,st.getAddress());
            callSt.setDate(5,new Date(st.getBirthDate().getTime()));
            callSt.setBoolean(6,st.isStatus());
            callSt.executeUpdate();
            result = true;
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return result;
    }

    @Override
    public boolean updatee(Student st) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call updateStudent(?,?,?,?,?,?,?)}");
            callSt.setInt(1,st.getStudentId());
            callSt.setString(2,st.getStudentName());
            callSt.setInt(3,st.getAge());
            callSt.setBoolean(4, st.isSex());
            callSt.setString(5,st.getAddress());
            callSt.setDate(6,new Date(st.getBirthDate().getTime()));
            callSt.setBoolean(7,st.isStatus());
            callSt.executeUpdate();
            result = true;
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return result;
    }

    @Override
    public boolean delete(int studentId) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call deleteStudent(?)}");
            callSt.setInt(1,studentId);
            callSt.executeUpdate();
            result = true;
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return result;
    }
}