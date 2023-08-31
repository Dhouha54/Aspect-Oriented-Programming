package Controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionBD {
	public Connection connexion;
	public Statement instruction; 
	public ResultSet res;

	

	public ConnectionBD() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			System.out.println("Driver ok");
			Connection connexion = DriverManager.getConnection("jdbc:mysql://localhost/ii2gl", "root", "2110"); 
			System.out.println("connexion ok");
			
			instruction = connexion.createStatement();
			} catch (ClassNotFoundException ex) {
			System.err.println("Probleme de pilote"); 
			}
			catch (SQLException ex) {
				System.err.println("Base de données non trouvée"); 
				
			}
		
	}
	public void lire(String req ) {
		try {
			res = instruction.executeQuery(req);
			/*int i = 0 ;
			while (res.next() ) {
				int num = res.getInt("id");
				String ch = res.getString("names");
				System.out.println("ligne" + i + ":" + num + "," + ch);
				i++ ;}*/
			}catch (SQLException ex ) {
				System.out.println("resuete incorrecte)" + res) ;
			}
		
		}
	public void MiseAJour(String req) {
		try {
			instruction.executeUpdate(req);
		}
		catch(SQLException ex) {
			System.err.println("Requete incorrecte "+req);
		}
	}
	
	public static void main(String[] args) {
		ConnectionBD conn = new ConnectionBD();
		//conn.lire("select * from student");
	}
}