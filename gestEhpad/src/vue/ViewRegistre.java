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
import javax.swing.border.EmptyBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

import org.jdatepicker.impl.JDatePanelImpl;
import org.jdatepicker.impl.JDatePickerImpl;
import org.jdatepicker.impl.UtilDateModel;

import controlleur.ControleEvenement;
import modele.Evenement;
import modele.Registre;
import utils.DateLabelFormatter;
import utils.DoubleLister;
import utils.TableModelEvenement;

public class ViewRegistre extends JPanel {
		
	/***
	 * filtrage: panel dans lequel sont contenus les éléments avec lequels on souhaite filtrer la liste des évènements, 
	 * on peut filtrer par date à laquelle l'évènement a été ajouté, par date de fin, par niveau d'importance, par déclarant, par résidents concernés
	 */
	JPanel filtrage;
	/***
	 * tableauRegistre: panel dans lequel est contenu la liste des évènements affichée pour ce registre
	 */
	JPanel tableauRegistre;
	
	JTable table;
	Evenement event;
	Registre registre;
	
	public ViewRegistre(Registre reg) {
		setLayout(null);
		setSize(1000,750);
		
		this.registre=reg;
			
		filtrage=new JPanel();
		filtrage.setLayout(null);
		filtrage.setBounds(0,0, 1000, 150);
		filtrage.setBackground(Color.darkGray);
			
		/***
		*  affichage DatePicker: on crée 2 variables pour le modèle du calendrier et ses propriétés, qu'on utilise pour créer le datePanel
		*/
		UtilDateModel modelDebut = new UtilDateModel();
		Properties d = new Properties();
		d.put("text.today", "Today");
		d.put("text.month", "Month");
		d.put("text.year", "Year");
		
		UtilDateModel modelFin = new UtilDateModel();
		Properties f = new Properties();
		f.put("text.today", "Today");
		f.put("text.month", "Month");
		f.put("text.year", "Year");
		/***
		 * @param model: modèle du calendrier
		 * @param p: les propriétés du modèle du calendrier
		 */
		JDatePanelImpl datePanelDebut = new JDatePanelImpl(modelDebut, d);
		JDatePanelImpl datePanelFin = new JDatePanelImpl(modelFin, f);
		
		/***
		 * Pour chaque calendrier que l'on souhaite créer, on déclare un nouveau JDatePicker
		 * @param datePanel: panel pour le calendrier
		 * @param new DateLabelFormatter: class créée spécifiquement pour le format que l'on souhaite donné au calendrier
		 */
		JLabel labDebut = new JLabel("Date début");
		JLabel labFin = new JLabel("Date fin");
		labDebut.setForeground(Color.white);
		JDatePickerImpl dateDebut = new JDatePickerImpl(datePanelDebut, new DateLabelFormatter());
		labDebut.setBounds(10, 75, 180, 25);
		labFin.setForeground(Color.white);
		dateDebut.setBounds(10, 100, 180, 25);
		JDatePickerImpl dateFin=new JDatePickerImpl(datePanelFin,new DateLabelFormatter());
		labFin.setBounds(210, 75, 180, 25);
		dateFin.setBounds(210,100,180,25);
		
		/***
		 * nvImportance: permet de choisir le niveau d'importance des évènement que l'on souhaite afficher
		 * @param:liste des importances.
		 */
		String[] importance= {"Niveau Importance","1","2","3"};
		
		JComboBox<String> nvImportance=new JComboBox<String>(importance);
		nvImportance.setBounds(10,25,180,25);
		
		
		
		/***
		 * selectDeclarant: permet de filtrer en affichant uniquement la liste du déclarant sélectionné
		 */
		int e=App.getEtablissement().getListEmployes().size();
		int cs=App.getEtablissement().getListChefServices().size();
		int da=App.getEtablissement().getListDirecteur().size();
		String[] id = new String [e+cs+da+1];
		id[0]="Déclarant";
		for (int i = 0; i<e;i++){
			id[i+1]=App.getEtablissement().getListEmployes().get(i).getIdentifiant();
		}
		for (int i=0;i<cs;i++) {
			id[i+e+1]=App.getEtablissement().getListChefServices().get(i).getIdentifiant();
		}
		for(int i=0;i<da;i++) {
			id[i+e+cs+1]=App.getEtablissement().getListDirecteur().get(i).getIdentifiant();
		}
		
		       
		JComboBox<String> selectDeclarant=new JComboBox<String>(id);
		selectDeclarant.setBounds(210,25,180,25);
		
		DoubleLister dl = new DoubleLister(400,0,600,200,App.getEtablissement().getListResident(),null);
		
		
		
		filtrage.add(labDebut);
		filtrage.add(dateDebut);
		filtrage.add(labFin);
		filtrage.add(dateFin);
		filtrage.add(nvImportance);
		filtrage.add(selectDeclarant);
		filtrage.add(dl);
		
		
		/***
		 * tableauRegistre: panel dans lequel se trouve la liste des évènements du registre.
		 */
		tableauRegistre=new JPanel();
		tableauRegistre.setLayout(null);
		tableauRegistre.setBounds(0, 150,1000,500);
		
		tableauRegistre.setBorder(new EmptyBorder(0, 0, 0, 0));
		tableauRegistre.setLayout(new BorderLayout(0, 0));
		
		JPanel panelInter =new JPanel();
		panelInter.setLayout(null);
		panelInter.setBounds(0, 0,1000,500);
		panelInter.setBackground(Color.yellow);
				
				
		String column[]={"Importance","Date","Déclarant","Titre","Voir+",};
		
		this.table = new JTable();
		
		table.setModel(new TableModelEvenement(reg.getListEvenements(),column));
		
		table.setBounds(0,0,1000,600);
		
		table.setRowSelectionInterval(0, 0);
		changeEventValue();
		
		JScrollPane scrollPane1 = new JScrollPane(table);
		scrollPane1.setBounds(0, 0,1000,600);
		
		panelInter.add(scrollPane1);
		
		JPanel boutonEven=new JPanel();
		boutonEven.setLayout(null);
		boutonEven.setBounds(0,650,1000,100);
		boutonEven.setBackground(Color.darkGray);
		
		JButton ajoutEvenement=new JButton("+nouvel évènement");
		ajoutEvenement.setBounds(400,20,200,25);
		
		ajoutEvenement.addActionListener(new ActionListener() {					
			@Override
			public void actionPerformed(ActionEvent e) {
				new ControleEvenement(null, false, registre.getService());
			}                	
		});
		
		boutonEven.add(ajoutEvenement);
		panelInter.add(scrollPane1);
		
	
		JButton readEvent =new JButton("Lire l'événement");
	    readEvent.addActionListener(new ActionListener() {					
			@Override
			public void actionPerformed(ActionEvent e) {
				new ControleEvenement(event, true, null);
			}                	
	    });
	   
	    JButton modifyEvent =new JButton("Modifier l'événement");
        modifyEvent.setBounds(100,20,150,25);
        readEvent.setBounds(750,20,150,25);
        boutonEven.add(readEvent);
        boutonEven.add(modifyEvent);
        
        modifyEvent.addActionListener(new ActionListener() {					
			@Override
			public void actionPerformed(ActionEvent e) {
				new ControleEvenement(event, false, registre.getService());
			}                	
        });


        tableauRegistre.add(panelInter);
  
        table.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
        	public void valueChanged(ListSelectionEvent lse) {
        		if (!lse.getValueIsAdjusting()) {
        			changeEventValue();
			    }
			}
		});		      
		  
        table.addMouseListener(new MouseAdapter() {
		      public void mousePressed(MouseEvent mouseEvent) {
		          JTable table =(JTable) mouseEvent.getSource();
		          Point point = mouseEvent.getPoint();
		          int row = table.rowAtPoint(point);
		          
		          changeEventValue();
		          
		          if (mouseEvent.getClickCount() == 2 && table.getSelectedRow() != -1) {
		        	  new ControleEvenement(event, true, null);
		          }
		      }
		  });
      
		        
		add(filtrage);
		add(tableauRegistre);
		add(boutonEven);
	}
	
	private void changeEventValue()
	{
		for(int i=0; i<registre.getListEvenements().size();i++) {
          if( (registre.getListEvenements().get(i).getDeclarant().getIdentifiant().equals( table.getModel().getValueAt(table.getSelectedRow(), 2)) )
                  && (registre.getListEvenements().get(i).getTitre().equals( table.getModel().getValueAt(table.getSelectedRow(), 3)) )
                  && (registre.getListEvenements().get(i).getDescription().equals( table.getModel().getValueAt(table.getSelectedRow(), 4)) )
                  ) {
              event=registre.getListEvenements().get(i);
          }
      }
	}
}

