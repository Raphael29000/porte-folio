package controlleur;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

import modele.Evenement;
import modele.Personnel;
import modele.Resident;
import vue.App;
import vue.CreationEvenement;
import vue.ViewResident;


public class ControleGestionEvenement 
{	
	
	/**
	 * 
	 * @param e va permettre de recuperer les getters de CreationEvenement
	 * @param event va récuperer l'Evenement à modifier, si null création evenement
	 * @throws ParseException
	 * @throws SQLException
	 */
	
	public ControleGestionEvenement(CreationEvenement e,Evenement event ) throws ParseException, SQLException
	{
		
		String titreText = e.getTitreTexte().getText();
		String description = e.getDescriptionTexte().getText();
		String date = e.getDateLabel().getText();
		int indexRegistre = e.getSelectRegistre().getSelectedIndex();		
		String registre = e.getSelectRegistre().getItemAt(indexRegistre).toString();
		String importance = e.getSelectImportance().getSelectedItem().toString();
		int idevent=0;

		

		if(event==null)
			{
			idevent=0;
			}
		else 
		{
			idevent = Utils.returnIdinBdd("evenement", "descriptionEvent",event.getDescription());
		}
		
		ArrayList <Resident> listRes = new ArrayList<Resident>();
		


		for(int i=0 ; i<e.getDl().getList().size() ; i++) 
		{		
			listRes.add((Resident) e.getDl().getList().get(i));
			
		}
		System.out.println(listRes);
		
			if (titreText != "" && description != "" && date != ""&& registre != "" && importance != "") 
			{
				
				
			
				String strQuery=null;				
				App.getBDD().connect(); 				
				if (idevent !=0) 
				{

					event.setTitre(titreText);
					event.setDescription(description);
					event.setDateEmission(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date));
					event.setGravite(Integer.parseInt(importance));
					event.setListeResident(listRes);

		
					strQuery= "SELECT * FROM listresidentevent "
							+ "INNER JOIN evenement ON evenement.idEvenement=listresidentevent.idEvent "
							+ "INNER JOIN resident ON resident.idResident=listresidentevent.idResident"
							+ "WHERE idEvenement =" +idevent;
					


					strQuery = "UPDATE evenement SET graviteEvent = '" + event.getGravite() + "' , dateEmission = '" + date
									+  "' , titreEvent = '" + event.getTitre()
									+ "' , descriptionEvent = '"+event.getDescription()
									+ "' WHERE idEvenement = " + idevent + ";";
					
					App.getBDD().setPreparedStatement(strQuery);
					App.getBDD().getPreparedStatement().executeUpdate();
					

					strQuery = "DELETE FROM `listresidentevent` WHERE idEvent = "+idevent;						
					App.getBDD().setPreparedStatement(strQuery);
					App.getBDD().getPreparedStatement().executeUpdate();
					
					for(int j=0;j<listRes.size();j++) 
					{
						strQuery="INSERT INTO listresidentevent (idResident, idEvent) VALUES ('" 
								+ listRes.get(j).getId() + "', '" + idevent + "');";
						App.getBDD().setPreparedStatement(strQuery);
						App.getBDD().getPreparedStatement().executeUpdate();
						
					}	
					
				}
				else 
				{		

					String nomRegistre=(String) e.getSelectRegistre().getSelectedItem();
					for (int i=0; i<App.getEtablissement().getListRegistre().size();i++)
					{
						if (e.getSelectRegistre().getSelectedItem().equals(App.getEtablissement().getListRegistre().get(i).getService()))
						{
							nomRegistre=App.getEtablissement().getListRegistre().get(i).getService();
						}
					}

					int idRegistre = 0;
					strQuery = "SELECT idService FROM service WHERE nomService = '" + nomRegistre + "';";
					App.getBDD().setPreparedStatement(strQuery);
					ResultSet rs = App.getBDD().getPreparedStatement().executeQuery();
					while(rs.next()) {
					idRegistre = rs.getInt(1);
					}
					System.out.println("");
					
					



					strQuery = "INSERT INTO evenement (graviteEvent, dateEmission, titreEvent, descriptionEvent, idRegistre, idPersonnel) "
							+ "VALUES ('" + importance + "', '" + date +  "', '" +titreText + "', '" +description+"','"
							+ idRegistre+"','"+App.getConnected().getId()+"');";
					
					App.getBDD().setPreparedStatement(strQuery);
					App.getBDD().getPreparedStatement().executeUpdate();
					

					System.out.println();
					for(int j=0;j<listRes.size();j++) 
					{
						
						strQuery="INSERT INTO listresidentevent (idResident, idEvent) VALUES ('" 
								+ listRes.get(j).getId() + "', '" + Utils.returnIdinBdd("evenement", "dateEmission", date) + "');";		
						App.getBDD().connect();
						App.getBDD().setPreparedStatement(strQuery);
						App.getBDD().getPreparedStatement().executeUpdate();
						
					}					
				}

				String nomRegistre=(String) e.getSelectRegistre().getSelectedItem();
				for (int i=0; i<App.getEtablissement().getListRegistre().size();i++)
				{
					if (e.getSelectRegistre().getSelectedItem().equals(App.getEtablissement().getListRegistre().get(i).getService()))
					{
						nomRegistre=App.getEtablissement().getListRegistre().get(i).getService();
					}
				}
				

				int idRegistre = 0;
				strQuery = "SELECT idService FROM service WHERE nomService = '" + nomRegistre + "';";
				App.getBDD().setPreparedStatement(strQuery);
				ResultSet rs = App.getBDD().getPreparedStatement().executeQuery();
				while(rs.next()) {
				idRegistre = rs.getInt(1);
				}
				System.out.println("");
				
				
				App.getEtablissement().getListRegistre().get(idRegistre).getListEvenements().add(event);
				
				

				Utils.reloadAll();
				App.getBDD().disconnect();
				
				App.getContent().removeAll();
				App.getContent().add(new ViewResident());
				App.getContent().repaint();
				App.getContent().revalidate();	
			}
			else 
			{
				System.out.println("Un des champs est vide");
			}
		
	}
}