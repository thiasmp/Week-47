import javax.print.DocFlavor;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        Connection connection = null;
        String JdbcUrl ="jdbc:mysql://localhost/world?"+"autoReconnect=true&useSSL=false";
        String username = "root";
        String password = "Abesnot1!";

        try
        {
            connection = DriverManager.getConnection(JdbcUrl, username, password);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        String sql = "select * from city where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
    }
}