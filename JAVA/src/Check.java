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
		
		String []Vietnam = {"베트남","관광지","맛집"};
		String[] Singapore = {"싱가포르","관광지","맛집"};
		String[] Bolivia = {"볼리비아","관광지","맛집"};
		
		JComboBox<String> sng = new JComboBox<String>(Singapore);
		JComboBox<String> bol = new JComboBox<String>(Bolivia);
		JComboBox<String> vt = new JComboBox<String>(Vietnam);
		
		addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				JOptionPane.showMessageDialog(null, 
						"코로나 종식을 기원합니다.", "랜선여행 종료", 
						JOptionPane.ERROR_MESSAGE);

				System.exit(0);
			}
			
		});
		
		setTitle("랜선 여행에 오신것을 환영합니다!");
		Container c = getContentPane();
		setBounds(100, 100, 800, 600);
		c.setLayout(null);
	
		
		JLabel ck = new JLabel("여행지를 선택하세요!");
		ck.setFont(new Font("나눔명조 ExtraBold", Font.BOLD, 17));
		ck.setBounds(213, 10, 228, 65);
		c.add(ck);
		
		JLabel best = new JLabel();
		best.setBounds(550, 230, 180, 40);
		best.setFont(new Font("나눔명조 ExtraBold", Font.BOLD, 17));
		
		JLabel explain = new JLabel();
		explain.setBounds(550, 280, 180, 130);
		explain.setFont(new Font("나눔명조", Font.BOLD, 17));
		
		
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
					best.setText("베트남 주요 관광지");
					explain.setText("성 요셉 대성당");
					
				}
				
				else if(index==2) {
					imageLabel.setIcon(VtfIcon);
					best.setText("베트남 주요 맛집");
					explain.setText("분보남보 비빔쌀국수");
				
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
					best.setText("싱가포르 주요 관광지");
					explain.setText("가든스 바이 더 베이");
				}
				
				else if(index==2) {
					imageLabel.setIcon(SnfIcon);
					best.setText("싱가포르 주요 맛집");
					explain.setText("칠리크랩");
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
					best.setText("볼리비아 주요 관광지");
					explain.setText("우유니 소금사막");
				}
				
				else if(index==2) {
					imageLabel.setIcon(BofIcon);
					best.setText("볼리비아 주요 맛집");
					explain.setText("Paseo Foresta");
				}
			}
			
		});
	}
}