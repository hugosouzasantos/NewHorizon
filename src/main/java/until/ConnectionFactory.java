package until;

import java.sql.Connection;
import java.sql.DriverManager;

import horizon.dao.*;


public class ConnectionFactory {
	
	public static Connection getConnection() throws DAOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/newhorizon", "leoadm", "newhorizon321");
			return connection;
		} catch (Exception e) {
			e.printStackTrace();
			throw new DAOException(e.getMessage());
		}
	}
	

}
