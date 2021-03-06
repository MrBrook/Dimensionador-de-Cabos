package br.com.gui;

import br.com.database.dao.CabosDAO;
import br.com.database.dao.CapacidadeCorrenteDAO;
import br.com.database.dao.FatorCorrecaoDAO;
import br.com.database.dao.ResistenciaReatanciaCabosDAO;
import br.com.dimensionador.Circuito;

import java.awt.BorderLayout;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;
import java.awt.Font;
import java.awt.Choice;
import java.awt.Label;
import java.awt.Button;
import java.awt.event.*;
import java.sql.Connection;
import java.util.ArrayList;

public class PrincipalTela extends JFrame {

	public static ArrayList<Circuito> c = new  ArrayList<Circuito>();
	static ArrayList<String> linhas = new ArrayList<>();
	private CapacidadeCorrenteDAO capacidadeCorrenteDAO = new CapacidadeCorrenteDAO();
	private FatorCorrecaoDAO fatorCorrecaoDAO = new FatorCorrecaoDAO();
	private FatorCorrecaoDAO correcaoDAO = new FatorCorrecaoDAO();
	private ResistenciaReatanciaCabosDAO resistenciaReatanciaCabosDAO = new ResistenciaReatanciaCabosDAO();
	private CabosDAO cabosDAO = new CabosDAO();
	private static Controle controle = new Controle();

	private JPanel contentPane;
	private JTable table;
	private JTextField textField;
	private JTextField textField_1;

	JTabbedPane Abas = new JTabbedPane(JTabbedPane.TOP);

	public PrincipalTela(Connection conexao) throws Exception {



		setTitle("Cable Sizer");
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1000, 538);

		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);

		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.CENTER);
		panel.setLayout(null);

		menus(panel,controle,conexao);
		painelAbas(panel,false,controle, conexao);
		painelInformacao(panel,controle,0);

		boolean t = true;
		if(t){
			painelShow(panel);
			t = false;
		}

	}

	public  void menus(JPanel panel,Controle controle,Connection conexao){
		JMenuBar menuBar = new JMenuBar();
		setJMenuBar(menuBar);

		JMenu mnNew = new JMenu("New");
		menuBar.add(mnNew);

		JMenu mnNewMenu = new JMenu("Project");
		mnNew.add(mnNewMenu);

		JMenuItem mntmCircuit = new JMenuItem("Circuit");
		mnNewMenu.add(mntmCircuit);

		JMenuItem mntmExit = new JMenuItem("Exit");
		mntmExit.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				dispose();
			}
		});
		mnNew.add(mntmExit);

		JMenu mnToos = new JMenu("Toos");
		menuBar.add(mnToos);

		JMenuItem mntmReport = new JMenuItem("Report PDF");
		mnToos.add(mntmReport);

		JMenu mnHelp = new JMenu("Help");
		menuBar.add(mnHelp);

		JMenuItem mntmAbout = new JMenuItem("About");
		mntmAbout.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null,"Lucas Ribeiro \nlucas.ribeiro@alulos.ifsuldeminas.edu.br\n-1.666");
			}
		});
		mnHelp.add(mntmAbout);

		mntmCircuit.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(!controle.getCircuito()){
					try {
						new SubTela(controle).setVisible(true);

					} catch (InterruptedException e1) {
						e1.printStackTrace();
					}
					painelInformacao(panel,controle, 0);
					panel.repaint();
				}else {
					JOptionPane.showMessageDialog(panel,"Salve o Arquivo!!");
				}

			}
		});

	}

	public void painelAbas(JPanel panel, boolean flag, Controle controle, Connection conexao){

		JPanel panel_Configuration = new JPanel();
		panel_Configuration.setBounds(10, 11, 374, 356);
		panel.add(panel_Configuration);
		panel_Configuration.setLayout(new BorderLayout(0, 0));


		panel_Configuration.add(Abas, BorderLayout.CENTER);

		JPanel pICapacidade = new JPanel();
		Abas.addTab("Current capacity", null, pICapacidade, null);
		pICapacidade.setLayout(null);

		Choice cK1 = new Choice();
		cK1.setBounds(218, 47, 83, 20);
		cK1.add("Environment");
		cK1.add("Ground");
		pICapacidade.add(cK1);

		Choice choice_1 = new Choice();
		choice_1.setBounds(98, 47, 43, 20);
		for(int i=10;i<=80;i+=5) choice_1.add(""+i);

		pICapacidade.add(choice_1);

		Label label = new Label("Temperature correction factor");
		label.setBounds(96, 10, 179, 22);
		pICapacidade.add(label);

		JLabel label_1 = new JLabel("________________________________________");
		label_1.setBounds(39, 82, 317, 14);
		pICapacidade.add(label_1);

		Label label_2 = new Label("Correction factor for soil thermal resistivity");
		label_2.setBounds(49, 102, 252, 22);
		pICapacidade.add(label_2);

		JCheckBox chckbxOk = new JCheckBox("No soil");
		chckbxOk.setBounds(10, 129, 78, 23);
		pICapacidade.add(chckbxOk);

		Label label_3 = new Label("Thermal Resistivity:");
		label_3.setBounds(97, 130, 107, 22);
		pICapacidade.add(label_3);

		Choice choice = new Choice();
		choice.setBounds(210, 130, 49, 20);
		choice.add("1.0");
		choice.add("1.5");
		choice.add("2.0");
		choice.add("3.0");
		pICapacidade.add(choice);

		chckbxOk.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(chckbxOk.isSelected())
					choice.setEnabled(false);
				else choice.setEnabled(true);
			}
		});

		JLabel label_4 = new JLabel("________________________________________");
		label_4.setBounds(39, 159, 317, 14);
		pICapacidade.add(label_4);

		Label label_5 = new Label("Correction factor for circuit grouping");
		label_5.setBounds(49, 179, 224, 22);
		pICapacidade.add(label_5);

		Label label_6 = new Label("Temperature:");
		label_6.setBounds(10, 47, 78, 22);
		pICapacidade.add(label_6);

		Label label_7 = new Label("For:");
		label_7.setBounds(168, 45, 36, 22);
		pICapacidade.add(label_7);

		Label label_8 = new Label("Cable arrangement:");
		label_8.setBounds(10, 220, 107, 22);
		pICapacidade.add(label_8);

		Choice choice_2 = new Choice();
		choice_2.setBounds(125, 222, 208, 20);

//		choice_2.add("Arrangement");
		choice_2.add("Cable harness outdoor Or on surface: cable In closed conduits");
		choice_2.add("Single layer on Wall, floor or Unperforated tray or shelf");
		choice_2.add("Single layer without ceiling");
		choice_2.add("Single layer in perforated tray. Horizontal or vertical");
		choice_2.add("Single layer in bed. support");
		choice_2.getMouseWheelListeners();
		pICapacidade.add(choice_2);

		Label label_11 = new Label("Number of Circuits:");
		label_11.setBounds(10, 260, 99, 22);
		pICapacidade.add(label_11);

		Choice choice_3 = new Choice();
		choice_3.setBounds(125, 262, 49, 20);
		choice_3.add("1");
		choice_3.add("2");
		choice_3.add("3");
		choice_3.add("4");
		choice_3.add("5");
		choice_3.add("6");
		choice_3.add("7");
		choice_3.add("8");
		choice_3.add("9");
		choice_3.add("12");
		choice_3.add("16");
		choice_3.add("20");
		pICapacidade.add(choice_3);

		Button button_1 = new Button("Next");
		button_1.setBounds(286, 296, 70, 22);
		pICapacidade.add(button_1);

		button_1.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				Abas.setSelectedIndex(1);

				float k1 = -1;
				float k2= -1;
				float k3= -1;

				int temperatura = Integer.parseInt(choice_1.getSelectedItem());
				int tipo = cK1.getSelectedIndex()+1;
				int dispCabos = choice_2.getSelectedIndex()+1;
				int nCircuitos = Integer.parseInt(choice_3.getSelectedItem());

				try{
					k1 = fatorCorrecaoDAO.correcaoK1(conexao,tipo,c.get(0).getIsolacao(),temperatura);
				}catch (Exception r){
					System.out.println(r);
				}

				if(chckbxOk.isSelected()) k2 = 1;
				else{
					try{
						k2 =fatorCorrecaoDAO.correcaoK2(conexao,Float.parseFloat(choice.getSelectedItem()));
					}catch (Exception r){
						System.out.println(r);}
				}

				try{
					k3 = fatorCorrecaoDAO.correcaoK3(conexao,dispCabos,nCircuitos);
				}catch (Exception r){
					System.out.println(r);
				}
				//System.out.println(k1+" "+k2+" "+k3);

				float correnteIz = c.get(0).getIb();
				correnteIz = correnteIz/(k1*k2*k3);
				c.get(0).setIz(correnteIz);

				try {
					if(controle.getCircuito()){

						float a  = capacidadeCorrenteDAO.capacidadeCorrente(conexao,c.get(0).getMetodo(),c.get(0).getIsolacao(),
								c.get(0).getnConectores(), correnteIz);
						if(a>controle.getDiametro()) painelInformacao(panel,controle, a);
						else painelInformacao(panel,controle, controle.getDiametro());
					}

				} catch (Exception h) {
					System.out.println(h);
				}
			}
		});

		JPanel pQuedaTensao = new JPanel();
		Abas.addTab("Tension Fall", null, pQuedaTensao, null);
		pQuedaTensao.setLayout(null);

		Label label_12 = new Label("Installations:");
		label_12.setBounds(10, 22, 73, 22);
		pQuedaTensao.add(label_12);

		Choice choice_4 = new Choice();
		choice_4.setBounds(83, 24, 276, 20);
		choice_4.add("Fornecimento em tens�o secund�ria distribui��o");
		choice_4.add("Ponto de entrega no poste");
		choice_4.add("Transformador de propriedade da concession�ria");
		choice_4.add("Ponto de entrega no secund�rio do transformador");
		choice_4.add("Transformador de propriedade da unidade consumidora");
		choice_4.add("Ponto de entrega no secund�rio do transformador");
		choice_4.add("Gera��o pr�pria");

		pQuedaTensao.add(choice_4);

		Label label_13 = new Label("Circuit");
		label_13.setBounds(10, 56, 62, 22);
		pQuedaTensao.add(label_13);

		Choice choice_5 = new Choice();
		choice_5.setBounds(83, 58, 144, 20);
		choice_5.add("Terminals");
		choice_5.add("Distribution");
		pQuedaTensao.add(choice_5);

		Label label_14 = new Label("Circuit length [m]:");
		label_14.setBounds(10, 124, 98, 22);
		pQuedaTensao.add(label_14);

		textField_1 = new JTextField();
		textField_1.setBounds(121, 124, 86, 20);
		pQuedaTensao.add(textField_1);
		textField_1.setColumns(10);

		JLabel label_15 = new JLabel("________________________________________");
		label_15.setBounds(23, 94, 317, 14);
		pQuedaTensao.add(label_15);

		Button button_2 = new Button("Next");
		button_2.setBounds(289, 296, 70, 22);
		pQuedaTensao.add(button_2);

		Label label_9 = new Label("Circuit:");
		label_9.setBounds(10, 165, 47, 22);
		pQuedaTensao.add(label_9);

		Choice choice_6 = new Choice();
		choice_6.setBounds(63, 165, 164, 20);
		choice_6.add("Neutral phase voltage drop");
		choice_6.add("Mono - Phase-phase voltage drop");
		choice_6.add("Phase-to-neutral voltage drop");
		choice_6.add("Tri - Phase-phase voltage drop");
		pQuedaTensao.add(choice_6);

		button_2.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {

				Abas.setSelectedIndex(2);

				int instalacao = choice_4.getSelectedIndex()+1;
				int tipo = choice_5.getSelectedIndex()+1;
				int queda = 0;

				float comprimento = Float.parseFloat(textField_1.getText().replace(",","."));

				if(instalacao==1 && tipo==1) queda = 4;
				else if(instalacao==2 && tipo==1) queda = 4;
				else if(instalacao==3 && tipo==1) queda = 4;
				else if(instalacao==4 && tipo==1) queda = 4;
				else if(instalacao==5 && tipo==1) queda = 4;
				else if(instalacao==6 && tipo==1) queda = 4;
				else if(instalacao==7 && tipo==1) queda = 4;
				else if(instalacao==1 && tipo==2) queda = 5;
				else if(instalacao==2 && tipo==2) queda = 5;
				else if(instalacao==3 && tipo==2) queda = 7;
				else if(instalacao==4 && tipo==2) queda = 7;
				else if(instalacao==5 && tipo==2) queda = 7;
				else if(instalacao==6 && tipo==2) queda = 7;
				else if(instalacao==7 && tipo==2) queda = 7;

				try {
					if(controle.getCircuito()){

						double t = 2;
						if(choice_6.getSelectedIndex()==0 || choice_6.getSelectedIndex()==2 ) t = 1;
						else if(choice_6.getSelectedIndex()==3) t = Math.sqrt(3);

						float quedaT=100000000;

						double contr =(double) ( c.get(0).getTensao()*(double)(queda/100.0));
						int i = 0;

						int idCabo  = cabosDAO.buscaIdCabo(conexao,c.get(0).getMaterial(),controle.getDiametro() );

						while((contr)<=quedaT){

							float res[] = resistenciaReatanciaCabosDAO.ResisReatCabos2(conexao,idCabo+=i ,"ca");

							double angulo =  Math.acos(c.get(0).getFatorPotencia());
							quedaT = (float) ((2 *(comprimento/1000)*c.get(0).getIb())*((res[0]*Math.cos(angulo)+res[1]*Math.sin(angulo))));
							i++;
						}
						if(controle.getDiametro()<cabosDAO.atualisaCabo(conexao,idCabo)){

							controle.setDiametro(cabosDAO.atualisaCabo(conexao,idCabo));
							painelInformacao(panel,controle, controle.getDiametro());

						}
						c.get(0).setComprimento(comprimento);
					}

				} catch (Exception h) {
					h.printStackTrace();
				}
			}
		});

		JPanel pCurtoCircuito = new JPanel();
		Abas.addTab("Short Circuit", null, pCurtoCircuito, null);
		pCurtoCircuito.setLayout(null);

		JLabel lblEstimatedShortcircuitLevels = new JLabel("Estimated short-circuit levels in secondary");
		lblEstimatedShortcircuitLevels.setBounds(74, 56, 236, 14);
		pCurtoCircuito.add(lblEstimatedShortcircuitLevels);

		JLabel lblNewLabel = new JLabel("Sn(KVa):");
		lblNewLabel.setBounds(22, 90, 46, 14);
		pCurtoCircuito.add(lblNewLabel);

		Choice choice_7 = new Choice();
		choice_7.setBounds(74, 90, 46, 20);
		pCurtoCircuito.add(choice_7);

		Label label_10 = new Label("Voltage:");
		label_10.setBounds(152, 90, 46, 22);
		pCurtoCircuito.add(label_10);

		Choice choice_8 = new Choice();
		choice_8.setBounds(204, 90, 86, 20);
		pCurtoCircuito.add(choice_8);

		Button button = new Button("Next");
		button.setBounds(289, 296, 70, 22);
		pCurtoCircuito.add(button);
		Abas.setEnabled(flag);

		button.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				int salvar = JOptionPane.showConfirmDialog(panel,"Deseja salvar o circuito?","",JOptionPane.YES_NO_OPTION);

				if(salvar == JOptionPane.YES_NO_OPTION){
					painelShow(panel);

				}
			}
		});
		final boolean[] flag1 = {true};

		pICapacidade.addMouseListener(new MouseListener() {
			@Override
			public void mouseClicked(MouseEvent e) {

			}

			@Override
			public void mousePressed(MouseEvent e) {

			}

			@Override
			public void mouseReleased(MouseEvent e) {

			}

			@Override
			public void mouseEntered(MouseEvent e) {
				if(controle.getCircuito()){
					//flag1[0] = false;
					try {
						if(controle.getCircuito()){
//							float a  = capacidadeCorrenteDAO.capacidadeCorrente(conexao,c.get(0).getMetodo(),c.get(0).getIsolacao(),
//									c.get(0).getnConectores(), 44);
							if(c.get(0).getTipo()=="2"){
								painelInformacao(panel,controle, (float) 1.5);
								controle.setDiametro((float) 1.5);
							}
							else {
								painelInformacao(panel,controle, (float) 2.5);
								controle.setDiametro((float) 2.5);
							}

							Abas.setEnabled(true);
						}

					} catch (Exception h) {
						h.printStackTrace();
					}
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {

			}
		});
	}

	public void painelInformacao(JPanel panel, Controle controle, float diametro){

		JPanel panel_Information = new JPanel();
		panel_Information.setBounds(10, 378, 371, 89);
		panel.add(panel_Information);
		panel_Information.setLayout(null);

		JLabel label_9 = new JLabel("Previous Information");
		label_9.setFont(new Font("Tahoma", Font.PLAIN, 13));
		label_9.setBounds(101, 11, 138, 14);
		panel_Information.add(label_9);

		textField = new JTextField();
		textField.setColumns(10);
		textField.setBounds(80, 47, 86, 20);

		textField.setText(Float.toString(diametro));
		panel_Information.add(textField);

		JLabel label_10 = new JLabel("Cable Size:");
		label_10.setBounds(10, 50, 69, 14);
		panel_Information.add(label_10);
		panel_Information.setEnabled(true);

	}

	public void painelShow(JPanel panel){

		JPanel panel_Show = new JPanel();
		panel_Show.setBounds(391, 11, 583, 456);
		panel.add(panel_Show);

		String[] colunas = new String[]{"Name","Voltage[V]","Type","Cable[mm�]","Circuit Current[A]","Isolation","Circuit Length[m]"};
		DefaultTableModel model;

		boolean flag = false;
		String[] tipo = {"Power","Lighting"};
		String[] isolante = {"PVC","EPR/XLPE"};

		if(!controle.getCircuito()) {
			model = addTabela(linhasTabela("Exemplo", 220, "Power", 12, 11, "PVC", 13), colunas);
		} else {
			model = addTabela(linhasTabela(c.get(0).getNome(), c.get(0).getTensao(), tipo[Integer.parseInt(c.get(0).getTipo())-1],
					controle.getDiametro(), c.get(0).getIb(), isolante[(c.get(0).getIsolacao())-1], c.get(0).getComprimento()), colunas);
			c.clear();
			c = new ArrayList<Circuito>();
			controle.setCircuito(false);
			flag = true;

		}
		panel_Show.setLayout(null);

		JLabel lblDe = new JLabel("Circuits Description");
		lblDe.setBounds(218, 0, 113, 14);
		panel_Show.add(lblDe);

		table = new JTable();
		table.setModel(model);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 23, 583, 433);
		//scrollPane.add(table);
		scrollPane.setViewportView(table);

		panel_Show.add(scrollPane);



	}

	public static void  carregaArr(ArrayList<Circuito> a){
		c = a;
	}

	public static String[][] linhasTabela(String nome, int tensao, String tipo,
										  float diametro,float corrente,String isolante,float comprimento){

		linhas.add(nome);
		linhas.add(Integer.toString(tensao));
		linhas.add(tipo);
		linhas.add(Float.toString(diametro));
		linhas.add(Float.toString(corrente));
		linhas.add(isolante);
		linhas.add(Float.toString(comprimento));

		int tam = linhas.size()/7;
		String[][] dados = new String[tam][7];
		int x = 0;
		for(int i=0;i<tam;i++){
			for (int j = 0;j<7;j++){
				dados[i][j] = linhas.get(x);
				x++;
			}

		}
		return  dados;
	}

	public static DefaultTableModel  addTabela(String[][] tabela,String[] colunas){

		DefaultTableModel model = new DefaultTableModel (tabela,colunas);

		return  model;
	}
}
