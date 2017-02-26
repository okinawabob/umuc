import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class Converter extends JFrame{
	private JButton btnFah = new JButton("To Fahrenheit");
	private JButton btnCel = new JButton("To Celsius");
	private JTextField txtFah = new JTextField("0");
	private JTextField txtCel = new JTextField("0");
	public Converter(){
		Font fntTitle1 = new Font("Temperature ", Font.BOLD, 16);
		JPanel panMain = new JPanel(new GridLayout(4,2));
		JLabel lblTemp = new JLabel("Temperature ", SwingConstants.RIGHT);
		lblTemp.setFont(fntTitle1);
		lblTemp.setForeground(Color.YELLOW);
		JLabel lblCon = new JLabel("Converter", SwingConstants.LEFT);
		lblCon.setFont(fntTitle1);
		lblCon.setForeground(Color.YELLOW);
		panMain.setBackground(Color.BLACK);
		panMain.add(lblTemp);
		panMain.add(lblCon);
		JLabel lblFahAmnt = new JLabel("Fahrenheit Amount", SwingConstants.CENTER);
		JLabel lblCelAmnt = new JLabel("Celsius Amount", SwingConstants.CENTER);
		lblFahAmnt.setForeground(Color.YELLOW);
		lblCelAmnt.setForeground(Color.YELLOW);
		panMain.add(lblFahAmnt);
		panMain.add(lblCelAmnt);
		txtFah.setForeground(Color.YELLOW);
		txtFah.setBackground(Color.BLACK);
		panMain.add(txtFah);
		txtCel.setForeground(Color.YELLOW);
		txtCel.setBackground(Color.BLACK);
		panMain.add(txtCel);
		btnFah.setForeground(Color.YELLOW);
		btnFah.setBackground(Color.BLACK);
		panMain.add(btnCel);
		btnCel.setForeground(Color.YELLOW);
		btnCel.setBackground(Color.BLACK);
		panMain.add(btnFah);
		add(panMain);
		ButtonsListener listenerButtons = new ButtonsListener();
		btnFah.addActionListener(listenerButtons);
		btnCel.addActionListener(listenerButtons);
	}
	private class ButtonsListener implements ActionListener{
		public void actionPerformed(ActionEvent theButtonEvent){
			if(theButtonEvent.getSource() == btnFah){
				double dCel = Double.parseDouble(txtCel.getText());
				dCel = dCel * (9.0/5) + 32;
				txtFah.setText(String.format("%.0f", dCel));
			}
			else if(theButtonEvent.getSource() == btnCel){
				double dFah = Double.parseDouble(txtFah.getText());
				dFah = (dFah - 32) * (5.0/9);
				txtCel.setText(String.format("%.0f", dFah));
			}
		}
	}
	public static void main(String[] args){
		JFrame fraWindow = new Converter();
		fraWindow.setTitle("Assignment 3");
		fraWindow.setSize(300, 180);
		fraWindow.setLocation(200, 100);
		fraWindow.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		fraWindow.setVisible(true);
	}
}
