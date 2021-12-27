import java.text.DecimalFormat;
import javax.swing.*;
import javax.swing.border.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;

public class CommonFrame extends JFrame {

	private JPanel contentPane;
	private JTextField nametext;
	private JTextField heighttext;
	private JTextField weighttext;


	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CommonFrame frame = new CommonFrame();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 * @param 
	 */
	public  CommonFrame() {
		
		setTitle("신체 질량 지수 측정(BMI) - 심예은");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 809, 623);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(42, 63, 435, 494);
		panel.setBorder(new TitledBorder("Body Max Index"));
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel name = new JLabel("이  름:");
		name.setBounds(106, 66, 74, 27);
		panel.add(name);
		
		JLabel height = new JLabel(" 키 :");
		height.setBounds(106, 103, 74, 27);
		panel.add(height);
		
		JLabel weight = new JLabel("체  중:");
		weight.setBounds(106, 140, 74, 27);
		panel.add(weight);
		
		nametext = new JTextField("");
		nametext.setBounds(196, 69, 106, 21);
		panel.add(nametext);
		nametext.setColumns(10);
		
		heighttext = new JTextField("---");
		heighttext.setBounds(196, 106, 106, 21);
		panel.add(heighttext);
		heighttext.setColumns(10);
		
		weighttext = new JTextField("--");
		weighttext.setBounds(196, 143, 106, 21);
		panel.add(weighttext);
		weighttext.setColumns(10);
		
		JLabel cm = new JLabel("(cm)");
		cm.setBounds(314, 72, 52, 15);
		panel.add(cm);
		
		JLabel kg = new JLabel("(kg)");
		kg.setBounds(314, 109, 52, 15);
		panel.add(kg);
		
		JPanel panel_2 = new JPanel();
		panel_2.setBounds(106, 213, 171, 108);
		panel_2.setBorder(new TitledBorder("성 별"));
		panel.add(panel_2);
		panel_2.setLayout(null);
		
		
		ButtonGroup g = new ButtonGroup();
		JRadioButton lady = new JRadioButton("여자",true);
		lady.setBounds(23, 41, 64, 23);
		panel_2.add(lady);
		g.add(lady);
		
		JRadioButton man = new JRadioButton("남자");
		man.setBounds(91, 41, 64, 23);
		panel_2.add(man);
		g.add(man);
		
		JPanel panel_3 = new JPanel();
		panel_3.setBounds(106, 352, 274, 100);
		panel_3.setBorder(new TitledBorder("습 관"));
		panel.add(panel_3);
		panel_3.setLayout(null);
		
		JCheckBox alchol = new JCheckBox("음주");
		alchol.setBounds(8, 39, 72, 23);
		panel_3.add(alchol);
		
		JCheckBox cigarette = new JCheckBox("흡연");
		cigarette.setBounds(97, 39, 72, 23);
		panel_3.add(cigarette);
		
		JCheckBox exercise = new JCheckBox("운동");
		exercise.setBounds(183, 39, 72, 23);
		panel_3.add(exercise);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBounds(513, 129, 240, 225);
		panel_1.setBorder(new LineBorder(Color.black,1));
		contentPane.add(panel_1);
		panel_1.setLayout(null);
		
		JLabel result1 = new JLabel();
		result1.setBounds(12, 10, 203, 26);
		panel_1.add(result1);
		
		JLabel result2 = new JLabel();
		result2.setBounds(12, 32, 203, 26);
		panel_1.add(result2);
		
		JLabel result3 = new JLabel();
		result3.setBounds(12, 56, 203, 26);
		panel_1.add(result3);
		
		JLabel healthcolor = new JLabel();
		healthcolor.setBorder(new LineBorder(Color.black,1));
		healthcolor.setOpaque(true);
		
		healthcolor.setBounds(62, 92, 112, 112);
		panel_1.add(healthcolor);
		
	
		
		JLabel Bmi = new JLabel("BMI 결과");
		Bmi.setBounds(513, 91, 77, 38);
		contentPane.add(Bmi);
		
		JLabel consult = new JLabel("소 견");
		consult.setBounds(517, 393, 88, 31);
		contentPane.add(consult);
		
		JPanel panel_4 = new JPanel();
		panel_4.setBounds(513, 419, 230, 118);
		panel_4.setBorder(new LineBorder(Color.black,1));
		contentPane.add(panel_4);
		panel_4.setLayout(null);
		
		JLabel msg1 = new JLabel();
		msg1.setBounds(0, 10, 218, 21);
		panel_4.add(msg1);
		
		JLabel msg2 = new JLabel();
		msg2.setBounds(0, 29, 218, 21);
		panel_4.add(msg2);
		
		JLabel msg3 = new JLabel();
		msg3.setBounds(0, 48, 218, 21);
		panel_4.add(msg3);
		
		JButton btn = new JButton("신체 상태 측정");
		btn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			try {
			
				
				double height =0;
				double weight =0;
				double x = 0;
			
				height = Double.parseDouble(heighttext.getText());
				weight = Double.parseDouble(weighttext.getText());
				
				x = weight / ((height/100)*(height/100));
		
				DecimalFormat format = new DecimalFormat();

		        format.applyLocalizedPattern("0.#####");
				
				if(x <18.5)
				{
					result3.setText(format.format(x)+"(저체중) 입니다");
					healthcolor.setBackground(Color.BLUE);
				}
				else if(x>=18.5 && x<23)
				{
					result3.setText(format.format(x)+"(정상) 입니다.");
					healthcolor.setBackground(Color.GREEN);
				}
				else if(x>=23 && x<25)
				{
					result3.setText(format.format(x)+"(과체중) 입니다.");
					healthcolor.setBackground(Color.RED);
				}
				else if(x>=25 && x<30)
				{
					result3.setText(format.format(x)+"(중도비만) 입니다.");
					healthcolor.setBackground(Color.RED);
				}
				else
				{
					result3.setText(format.format(x)+"(고도비만) 입니다.");
					healthcolor.setBackground(Color.RED);
				}
					if (lady.isSelected())
					{
						result1.setText("아름다운 " + nametext.getText()+"님의");
						result2.setText("신체 질량 지수는:");

					}
						
					else
					{	
						result1.setText("멋진 "+nametext.getText()+"님의");
						result2.setText("신체 질량 지수는:");
					}
					
				
						if(alchol.isSelected())
							msg1.setText("술 그만 하세요!");
						else if (alchol.isSelected()==false)
							msg1.setText("");
							
						
						if(cigarette.isSelected())
							msg2.setText("담배 끊으세요!");
						else if(cigarette.isSelected()==false)
							msg2.setText("");
						
						if(exercise.isSelected()==false)
							msg3.setText("운동 좀 하세요!");
						else if(exercise.isSelected())
							msg3.setText("");
			
					
					
			}
			catch (Exception a)
			{
				if(nametext.getText().equals("")||heighttext.getText().equals("")||weighttext.getText().equals(""))
					result1.setText("이름,키,체중 다 입력하세요!");
					
			}
			
			
			}});
		btn.setBounds(608, 43, 143, 37);
		contentPane.add(btn);
		
	}	


}
