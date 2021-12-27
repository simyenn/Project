import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;


public class Trip extends JPanel {

	private JButton tripBtn = new JButton();


	
	public Trip()
	{
		tripBtn.setText("Trip¢Ý");
		setBackground(Color.blue);
		add(tripBtn);
		
	
		tripBtn.addActionListener(new ActionListener() 
		{

			@Override
			public void actionPerformed(ActionEvent e) 
			{
				new Check().setVisible(true);
					
			}
		});
		
		
		
	}
}
