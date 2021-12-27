import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;


/*�������� ����
	Trip��ư ������ ���ο� �������� �߸� ������ ���ý� �̹����� �� ����
	���ǥ���� x��ư�� ������ "�ڷγ� ������ ����մϴ�" �޼��� â ����
*/
public class Project extends JFrame{
	private JLabel imageLabel = new JLabel();
	

	public Project()
	{
		ImageIcon tripIcon = new ImageIcon("Tripimg/tripr.JPG");
		setTitle("���� ����");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Container c = getContentPane();
	
		setSize(500,500);
		
	
		c.add(new Trip(),BorderLayout.NORTH);
		
		
		
		imageLabel.setIcon(tripIcon);
		c.add(imageLabel,BorderLayout.CENTER);
		
		setVisible(true);
		
	
	}

	
}
