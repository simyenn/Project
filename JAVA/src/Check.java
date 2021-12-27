import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;

public class Check extends JFrame{
	
	private JLabel imageLabel = new JLabel();
	private String[] Vietnam;
	private String[] Singapore;
	private String[] Bolivia;
	public Check(){
		ImageIcon VtrIcon = new ImageIcon("Tripimg/vtrand.jpg");
		ImageIcon VtfIcon = new ImageIcon("Tripimg/vtfood.jpg");
		
		ImageIcon SnrIcon = new ImageIcon("Tripimg/sngrand.jpg");
		ImageIcon SnfIcon = new ImageIcon("Tripimg/sngfood.jpg");
		
		ImageIcon BorIcon = new ImageIcon("Tripimg/borand.JPG");
		ImageIcon BofIcon = new ImageIcon("Tripimg/bolfood.jpg");
		
		String []Vietnam = {"��Ʈ��","������","����"};
		String[] Singapore = {"�̰�����","������","����"};
		String[] Bolivia = {"�������","������","����"};
		
		JComboBox<String> sng = new JComboBox<String>(Singapore);
		JComboBox<String> bol = new JComboBox<String>(Bolivia);
		JComboBox<String> vt = new JComboBox<String>(Vietnam);
		
		addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				JOptionPane.showMessageDialog(null, 
						"�ڷγ� ������ ����մϴ�.", "�������� ����", 
						JOptionPane.ERROR_MESSAGE);

				System.exit(0);
			}
			
		});
		
		setTitle("���� ���࿡ ���Ű��� ȯ���մϴ�!");
		Container c = getContentPane();
		setBounds(100, 100, 800, 600);
		c.setLayout(null);
	
		
		JLabel ck = new JLabel("�������� �����ϼ���!");
		ck.setFont(new Font("�������� ExtraBold", Font.BOLD, 17));
		ck.setBounds(213, 10, 228, 65);
		c.add(ck);
		
		JLabel best = new JLabel();
		best.setBounds(550, 230, 180, 40);
		best.setFont(new Font("�������� ExtraBold", Font.BOLD, 17));
		
		JLabel explain = new JLabel();
		explain.setBounds(550, 280, 180, 130);
		explain.setFont(new Font("��������", Font.BOLD, 17));
		
		
		vt.setBounds(60, 60, 100, 30);
		sng.setBounds(240, 60, 100, 30);
		bol.setBounds(415, 60, 100, 30);
		imageLabel.setBounds(55, 134, 480, 375);
		c.add(vt);
		c.add(sng);
		c.add(bol);
		c.add(imageLabel);
		c.add(best);
		c.add(explain);
		
		setVisible(true);
	
		vt.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JComboBox<String> cb = (JComboBox<String>)e.getSource();
				int index = cb.getSelectedIndex();
				if (index==1) {
					imageLabel.setIcon(VtrIcon);
					best.setText("��Ʈ�� �ֿ� ������");
					explain.setText("�� ��� �뼺��");
					
				}
				
				else if(index==2) {
					imageLabel.setIcon(VtfIcon);
					best.setText("��Ʈ�� �ֿ� ����");
					explain.setText("�к����� ����ұ���");
				
				}
			}
			
		});
		
		
		sng.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JComboBox<String> cb = (JComboBox<String>)e.getSource();
				int index = cb.getSelectedIndex();
				if (index==1) {
					imageLabel.setIcon(SnrIcon);
					best.setText("�̰����� �ֿ� ������");
					explain.setText("���罺 ���� �� ����");
				}
				
				else if(index==2) {
					imageLabel.setIcon(SnfIcon);
					best.setText("�̰����� �ֿ� ����");
					explain.setText("ĥ��ũ��");
				}
			}
			
		});
		
		bol.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JComboBox<String> cb = (JComboBox<String>)e.getSource();
				int index = cb.getSelectedIndex();
				if (index==1) {
					imageLabel.setIcon(BorIcon);
					best.setText("������� �ֿ� ������");
					explain.setText("������ �ұݻ縷");
				}
				
				else if(index==2) {
					imageLabel.setIcon(BofIcon);
					best.setText("������� �ֿ� ����");
					explain.setText("Paseo Foresta");
				}
			}
			
		});
	}
}