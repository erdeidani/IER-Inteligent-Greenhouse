import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.SwingUtilities;

public class Frontend extends JFrame{
	static final long serialVersionUID = -4426507400707485400L;

	
	JFrame frame;
	
	JLabel temp;
	JLabel water;
	JLabel humidity;
	JLabel window;
	
	JLabel tempData;
	JLabel waterData;
	JLabel humidityData;
	JLabel windowData;
	
	public Frontend() {
		frame = new JFrame("Frontend");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLayout(new GridLayout(2, 1));
		 
		initLabels();
		initLabelData();
		
		
		frame.setSize(600, 600);
		frame.setVisible(true);
		
		
	}
	
	public void updateData() {
		SwingUtilities.invokeLater(() ->{
			tempData.setText(String.valueOf(TimeThread.temperature));
			waterData.setText(String.valueOf(TimeThread.water));
			humidityData.setText(String.valueOf(TimeThread.humidity));
			windowData.setText(String.valueOf(TimeThread.open));
			frame.revalidate();
			frame.repaint();
		});
	}

	private void initLabelData() {
		tempData = new JLabel(String.valueOf(TimeThread.temperature));
		waterData = new JLabel(String.valueOf(TimeThread.water));
		humidityData = new JLabel(String.valueOf(TimeThread.humidity));
		windowData = new JLabel(String.valueOf(TimeThread.open));
		frame.add(tempData);
		frame.add(waterData);
		frame.add(humidityData);
		frame.add(windowData);
		
	}

	private void initLabels() {
		temp = new JLabel("Temperature: ");
		water = new JLabel("Water: ");
		humidity = new JLabel("Humidity: ");
		window = new JLabel("Window: ");
		frame.add(temp);
		frame.add(water);
		frame.add(humidity);
		frame.add(window);
		
		
	}
}
