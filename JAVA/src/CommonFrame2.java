import javax.swing.*;
import javax.swing.border.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;


public class CommonFrame2 extends JFrame {

	private JPanel contentPane;

	private String []rices;
	private String []ramens;
	private String []numbers;
	private String  []pr;
	int sum=0;


	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CommonFrame2 frame = new CommonFrame2();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public CommonFrame2() {
		setTitle("���� �� ������?");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1100, 682);
		Container c = getContentPane();
		contentPane = new JPanel();
		
		
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel total = new JLabel();
		total.setFont(new Font("�������� ExtraBold", Font.BOLD, 17));
		total.setBounds(821, 320, 253, 101);
		contentPane.add(total);
		
		JPanel panel = new JPanel();
		panel.setBounds(38, 69, 771, 351);
		TitledBorder tb = new TitledBorder("�н��� �ְ�!");
		tb.setTitleFont(new Font("�������� ExtraBold", Font.BOLD, 15));
		panel.setBorder(tb);
		contentPane.add(panel);
		panel.setLayout(null);
		
		
		
		JLabel rice = new JLabel("��");
		rice.setFont(new Font("�������� ExtraBold", Font.BOLD, 15));
		rice.setBounds(37, 50, 78, 61);
		panel.add(rice);
		
		JLabel number = new JLabel("����");
		number.setFont(new Font("�������� ExtraBold", Font.BOLD, 15));
		number.setBounds(385, 50, 78, 61);
		panel.add(number);
		
		JLabel ramen = new JLabel("���");
		ramen.setFont(new Font("�������� ExtraBold", Font.BOLD, 15));
		ramen.setBounds(37, 168, 78, 61);
		panel.add(ramen);
		
		
		
		JCheckBox berry = new JCheckBox("������Ʈ");
		berry.setFont(new Font("�������� ExtraBold", Font.BOLD, 14));
		berry.setBounds(66, 235, 154, 42);
		panel.add(berry);
		
		String []rices = {"","��ġ��","��������","ġŲ����"};
		String []ramens = {"","1","2","3"};
		String []numbers = {"","1","2","3"};
		String  []pr = {"0","3500","4000","3000"};
		
		JComboBox comboBox = new JComboBox(rices);
		JComboBox comboBox2 = new JComboBox(ramens);
		JComboBox comboBox3 = new JComboBox(numbers);



		comboBox.setBounds(81, 69, 154, 31);
		panel.add(comboBox);
		
		comboBox2.setBounds(81, 187, 154, 31);
		panel.add(comboBox2);
		
		comboBox3.setBounds(450, 69, 154, 31);
		panel.add(comboBox3);
		
		JPanel panel2 = new JPanel();
		panel2.setBounds(513, 455, 296, 149);
		TitledBorder tb2 = new TitledBorder("������");
		tb2.setTitleFont(new Font("�������� ExtraBold", Font.BOLD, 15));
		panel2.setBorder(tb2);
		contentPane.add(panel2);
		panel2.setLayout(null);
		
		
		
		ButtonGroup g = new ButtonGroup();
		
		JRadioButton notax = new JRadioButton("�ΰ��� ������",true);
		notax.setFont(new Font("�������� ExtraBold", Font.BOLD, 15));
		notax.setBounds(8, 25, 276, 50);
		panel2.add(notax);
		g.add(notax);
		
		JRadioButton tax = new JRadioButton("�ΰ��� ����");
		tax.setFont(new Font("�������� ExtraBold", Font.BOLD, 15));
		tax.setBounds(8, 74, 276, 50);
		panel2.add(tax);
		g.add(tax);
		
		JButton btn = new JButton("����ϱ�");
		btn.setBounds(821, 448, 214, 59);
		contentPane.add(btn);
		
		JTextArea text = new JTextArea();
		
		text.setFont(new Font("��������", Font.BOLD, 17));
		text.setBorder(new BevelBorder(BevelBorder.LOWERED, null, null, null, null));
		
		text.setBounds(821, 24, 253, 396);
		contentPane.add(text);

		
		
		
		berry.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int be = 1500;
				if(berry.isSelected())
					{text.append("������Ʈ"+"\t1\n");
					sum+=be;
			
					}
				else {
					text.append("������Ʈ"+"\t-1\n");
					sum-=be;
	
				}
			}
		});
	
		comboBox2.addActionListener(new ActionListener(){

		
			public void actionPerformed(ActionEvent e) {
				JComboBox cb = (JComboBox) e.getSource();
				 int i = cb.getSelectedIndex();
				 int ra = 2000*i;
				text.append("���\t"+ i + "\n");
				sum+=ra;

			}
			
		});
		
		comboBox3.addActionListener(new ActionListener(){

			
			public void actionPerformed(ActionEvent e) {
				JComboBox cb = (JComboBox) e.getSource();
				 int i = cb.getSelectedIndex();
				 int op1 = comboBox.getSelectedIndex();
				 int a = Integer.parseInt(pr[op1]);
				 int tot = a*i;
				 String r=(String)comboBox.getSelectedItem();
				 sum+=tot;
				text.append(r+"\t"+i+"\n");
	
			}
			
		});


	btn.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) {
			JButton b = (JButton)e.getSource();
			double k = sum*0.9;
			if(tax.isSelected())
				total.setText("�հ�(�ΰ��� ����): " +Integer.toString(sum));
			else
				total.setText("�հ�(�ΰ��� ������):" +Double.toString(k));
		}
		});
	 }
	}	



