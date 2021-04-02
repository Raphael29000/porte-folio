package controlleur;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import javax.swing.JTextField;

import modele.Employe;
import vue.App;

public class ControleGestionEquipe {

	public ControleGestionEquipe(int idEquipe, ArrayList<Object> al, String csIdentifiant, JTextField jtf) throws SQLException {
		
		ArrayList<Integer> alIntPer = new ArrayList<Integer>();
		ArrayList<Integer> alIntEmp = new ArrayList<Integer>();
		String horaire = jtf.getText();
		int idChef = 0;
		int idChefPer = 0;
		String sql = "";
		int currentEquipe = idEquipe;
		
		for(Object o : al ) {
			alIntPer.add( ((Employe)(o)).getId());
			alIntEmp.add( Utils.returnIdinBdd( "employe", "idEmploye", String.valueOf(((Employe)(o)).getId()) ) );
		}
		
		idChefPer = Utils.returnIdinBdd("Personnel", "identifiant", csIdentifiant);
		idChef = Utils.returnIdinBdd("chef", "idPersonnel" , String.valueOf(idChefPer));
		
		App.getBDD().connect();
		
		ResultSet rs;
		if ( currentEquipe == 0 ) {
			sql = "INSERT INTO equipe (`idEquipe`, `horaireEquipe`, `idChef`, `idPersonnel`)\r\n"
					+ "VALUES\r\n"
					+ "(null, '"+ horaire +"', "+idChef+", "+idChefPer+"); select max(idEquipe) as max from equipe;";
			App.getBDD().setPreparedStatement(sql);
			rs = App.getBDD().getPreparedStatement().executeQuery();
			while(rs.next()) {
				currentEquipe = rs.getInt("max");
			}
		}else {
			sql = "UPDATE equipe SET\r\n"
					+ "`horaireEquipe` = '"+ horaire +"',\r\n"
					+ "`idChef` = "+ idChef +",\r\n"
					+ "`idPersonnel` = "+ idChefPer +" \r\n"
					+ "WHERE `idEquipe` = "+currentEquipe+";";
			App.getBDD().setPreparedStatement(sql);
			App.getBDD().getPreparedStatement().executeQuery();
		}
		
		
		int i = 0;
		for ( int idPer : alIntPer ) {
			sql = "UPDATE employe SET `idEquipe` = "+ currentEquipe +" WHERE `idEmploye` = "+ alIntEmp.get(i++) +" AND `idPersonnel` = "+idPer+";";
			App.getBDD().setPreparedStatement(sql);
			App.getBDD().getPreparedStatement().executeQuery();
		}
		
		
		boolean first = true;
		sql = "UPDATE employe SET `idEquipe` = null WHERE";
		for (int idPer : alIntPer) {
			if(!first) {
				sql += " OR";
				first = false;
			}
			sql += " idPersonnel = "+idPer;
			
		}
		sql += ";";
		if (sql.contains("idPersonnel")) {
			App.getBDD().setPreparedStatement(sql);
			App.getBDD().getPreparedStatement().executeQuery();
		}
		
		
		App.getBDD().disconnect();
		
		Utils.reloadAll();
		
	}
	
	
}
