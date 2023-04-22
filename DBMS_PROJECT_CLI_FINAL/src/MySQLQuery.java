import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLQuery {
    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            System.out.println("Connecting to database...");
            String url = "jdbc:mysql://localhost:3306/OnlineRetailStore";
            String username = "root";
            String password = "$ql12345";
            conn = DriverManager.getConnection(url, username, password);

            // Execute a query
            System.out.println("Creating statement...");
            stmt = conn.createStatement();
            String sql = "Select productid, productname, productbrand, productprice from product LIMIT 15;";
            ResultSet rs = stmt.executeQuery(sql);
//            int count=0;
//            // Process the results
//            if(rs.next()){
//                count=rs.getInt("count(*)");
//            }
//
//            System.out.println(count);
            while (rs.next()) {
                int id = rs.getInt("productid");
                String name = rs.getString("productname");
                String email = rs.getString("productbrand");
                float price=rs.getFloat("productprice");
                System.out.println("ID: " + id + ", Name: " + name + ", Brand: " + email + ", Price = "+price);
            }
            rs.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close the statement and connection
            try {
                if (stmt != null)
                    stmt.close();
                if (conn != null)
                    conn.close();
                System.out.println("Statement and connection closed.");
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
