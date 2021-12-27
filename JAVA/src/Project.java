import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;


/*랜선여행 가기
	Trip버튼 누르면 새로운 프레임이 뜨며 여행지 선택시 이미지와 라벨 생성
	상단표시줄 x버튼을 누르면 "코로나 종식을 기원합니다" 메세지 창 생성
*/
public class Project extends JFrame{
	private JLabel imageLabel = new JLabel();
	

	public Project()
	{
		ImageIcon tripIcon = new ImageIcon("Tripimg/tripr.JPG");
		setTitle("랜선 여행");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Container c = getContentPane();
	
		setSize(500,500);
		
	
		c.add(new Trip(),BorderLayout.NORTH);
		
		
		
		imageLabel.setIcon(tripIcon);
		c.add(imageLabel,BorderLayout.CENTER);
		
		setVisible(true);
		
	
	}

	
}
