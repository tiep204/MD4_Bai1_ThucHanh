package ra.model.ulti;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/StudentMVC_DB";
    private static final String USER = "root";
    private static final String PASS = "dangtiep204";
    public static Connection openConnection(){
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL,USER,PASS);
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e2){
            e2.printStackTrace();
        }
        return conn;
    }
    public static void closeConnection(Connection conn , CallableStatement callSt){
        if(conn != null){
            try {
                conn.close();
            }catch (SQLException e){
                throw new RuntimeException(e);
            }
        }
        if(callSt!=null){
            try {
                callSt.close();
            }catch (SQLException ex11){
                throw new RuntimeException(ex11);
            }

        }
    }

}
