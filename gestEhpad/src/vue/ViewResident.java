package vue;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Properties;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

import org.jdatepicker.impl.JDatePanelImpl;
import org.jdatepicker.impl.JDatePickerImpl;
import org.jdatepicker.impl.UtilDateModel;

import controlleur.ControleEvenement;
import controlleur.ControleResident;
import controlleur.Utils;
import modele.Resident;
import utils.DateLabelFormatter;
import utils.TableModelResident;

public class ViewResident extends JPanel {
	
	JPanel filtreResident;
	JPanel tableauResident;
	JTable table ;
	Resident resid;
	//TODO filtrage lors de la recherche de résident
	public ViewResident()
	{
		setLayout(null);
		setBounds(0, 0, 1000, 750);
		setBackground(Color.darkGray);

		filtreResident=new JPanel();
		tableauResident=new JPanel();
		 
		filtreResident.setLayout(null);
		filtreResident.setBounds(0, 0, 1000,150);
		filtreResident.setBackground(Color.gray);
		
	//jtextfield	
		JLabel nomLabel =new JLabel("Nom");
		JLabel prenomLabel =new JLabel("Prenom");
		JLabel numSecuLabel =new JLabel("Numero Secu");
		JLabel chambreLabel =new JLabel("Numero chambre");
		
		
		
		
		nomLabel.setBounds(10, 10, 100, 25);
		prenomLabel.setBounds(120, 10, 100, 25);
		numSecuLabel.setBounds(230, 10, 100, 25);
		chambreLabel.setBounds(340, 10, 100, 25);
		
		JTextField nom =new JTextField();
		JTextField prenom =new JTextField();
		JTextField numSecu =new JTextField();
		JTextField chambre =new JTextField();
		
		nom.setBounds(10, 40, 100, 25);
		prenom.setBounds(120, 40, 100, 25);
		numSecu.setBounds(230, 40, 100, 25);
		chambre.setBounds(340, 40, 100, 25);
		
		//JcomboBox
		JLabel textureLabel =new JLabel("Texture");
		JLabel allergieLabel =new JLabel("Allergies");
		JLabel pathologieLabel =new JLabel("Pathologie");
		
		textureLabel.setBounds(700, 10, 100, 25);
		allergieLabel.setBounds(850, 10, 100, 25);
		pathologieLabel.setBounds(850, 70, 100, 25);

		JComboBox<String> textureBox =new JComboBox<String>(Utils.getArray("Regime"));
		JComboBox<String> allergieBox = new JComboBox<String>(Utils.getArray("Allergie"));
		JComboBox<String> pathologieBox = new JComboBox<String>(Utils.getArray("Pathologie"));
		
		//TODO Controleur : Requete liste 
		textureBox.setBounds(700, 40, 100, 25);
		allergieBox.setBounds(850, 40, 100, 25);
		pathologieBox.setBounds(850, 100, 100, 25);

		JButton filtrer = new JButton("filtrer");
		filtrer.setLocation(450,120);
		filtrer.setSize(100,25);
		
		//datapicker
		JLabel calendrierLabel =new JLabel("Date de Naissance");
		calendrierLabel.setBounds(10, 80, 200, 25);
		UtilDateModel model = new UtilDateModel();
		Properties p = new Properties();
		p.put("text.today", "Today");
		p.put("text.month", "Month");
		p.put("text.year", "Year");
		JDatePanelImpl datePanel = new JDatePanelImpl(model, p);
		JDatePickerImpl dateNaissance = new JDatePickerImpl(datePanel, new DateLabelFormatter());
		dateNaissance.setBounds(10, 105, 200, 25);
	
		//champs texts
		filtreResident.add(nomLabel);
		filtreResident.add(nom);
		filtreResident.add(prenomLabel);
		filtreResident.add(prenom);
		filtreResident.add(numSecuLabel);
		filtreResident.add(numSecu);
		filtreResident.add(chambreLabel);
		filtreResident.add(chambre);
		
		//comboBox
		filtreResident.add(textureLabel);
		filtreResident.add(textureBox);
		filtreResident.add(allergieLabel);
		filtreResident.add(allergieBox);
		
		filtreResident.add(pathologieLabel);
		filtreResident.add(pathologieBox);
		
		//calendar
		filtreResident.add(calendrierLabel);
		filtreResident.add(dateNaissance);
		
		//button
		filtreResident.add(filtrer);

		//tableau resultat
		tableauResident.setLayout(null);
		tableauResident.setBounds(0, 150,1000,500);

		tableauResident.setBorder(new EmptyBorder(0, 0, 0, 0));
		tableauResident.setLayout(new BorderLayout(0, 0));
			
		JPanel panelInter =new JPanel();
		panelInter.setLayout(null);
		panelInter.setBounds(0, 0,1000,150);
		panelInter.setBackground(Color.darkGray);
		tableauResident.add(panelInter);
		
		String column[]={"NOM","PRENOM","DATE de Naissance","Numero SECU","chambre",};
		
        this.table = new JTable();
        table.setModel(new TableModelResident(App.getEtablissement().getListResident(), column));
        table.setBounds(0,0,1000,500);
        
        table.addMouseListener(new MouseAdapter() {
            public void mousePressed(MouseEvent mouseEvent) {
                JTable table =(JTable) mouseEvent.getSource();
                Point point = mouseEvent.getPoint();
                int row = table.rowAtPoint(point);
                
                Resident selection = null;
                for(Resident tmp : App.getEtablissement().getListResident())
                {
                	if(tmp.getNumSecu().equals(table.getModel().getValueAt(row, 3)))
                		selection = tmp;
                }
                
                if (mouseEvent.getClickCount() == 2 && table.getSelectedRow() != -1) {
                    new ControleResident(selection, false);
                }
                else
                {
                	resid = selection;
                }
            }
        });
        
      	JScrollPane scrollPane = new JScrollPane(table);
      	scrollPane.setBounds(0, 0,1000,550);
      	
        panelInter.add(scrollPane);
        
		this.add(filtreResident);
		this.add(tableauResident);
	
		JPanel boutonResident=new JPanel();
		JButton ajoutResident=new JButton("+nouveau résident");
		JButton ModifResident=new JButton("Modification");
		JButton AffichageResident=new JButton("Lecture fiche");
		
		boutonResident.setLayout(null);
		boutonResident.setBackground(Color.darkGray);
		
		boutonResident.setBounds(0,650,1000,100);
		ajoutResident.setBounds(400,20,200,25);
		ModifResident.setBounds(100,20,150,25);
		AffichageResident.setBounds(750,20,150,25);
		
		
		add(boutonResident);
		boutonResident.add(ajoutResident);
		boutonResident.add(ModifResident);
		boutonResident.add(AffichageResident);
		
		ajoutResident.addActionListener(new ActionListener() {					
			@Override
			public void actionPerformed(ActionEvent e) {
				new ControleResident(null, false);
			}                	
		});
		ModifResident.addActionListener(new ActionListener() {					
			@Override
			public void actionPerformed(ActionEvent e) {
				new ControleResident(resid, false);
			}                	
        });
		AffichageResident.addActionListener(new ActionListener() {					
			@Override
			public void actionPerformed(ActionEvent e) {
				new ControleResident(resid, true);
			}                	
	    });
	}
	
	
	public JTable getTable() {
		return table;
	}
	
}
