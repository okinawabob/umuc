import java.awt.*;
import javax.swing.*;
import javax.swing.border.*;
public class Poker extends JFrame{
	public Poker(){
		ImageIcon CardDeck[] = new ImageIcon[52];
		for(int i = 1; i < 52; i++)
		CardDeck[i] = new ImageIcon("images\\" + i + ".png");
		
		for(int nI = 0; nI < CardDeck.length; nI++) 
	    {
	      int nIndex = (int)(Math.random() * CardDeck.length);
	      ImageIcon temp = CardDeck[nI];
	      CardDeck[nI] = CardDeck[nIndex];
	      CardDeck[nIndex] = temp;
	    }
		JPanel panPoker = new JPanel();
		JPanel panDisplay = new JPanel();
		panDisplay.setBackground(Color.GREEN);
		Font fntDisplay = new Font("Display", Font.BOLD, 24);
		JLabel lblDisplay = new JLabel("5 Card Poker");
		lblDisplay.setFont(fntDisplay);
		lblDisplay.setForeground(Color.RED);
		lblDisplay.setBackground(Color.GREEN);
		panDisplay.add(lblDisplay);
		panPoker.setLayout(new GridLayout(0,5));
		for(int i = 0; i <5; i++){
			JLabel lblPoker = new JLabel(CardDeck[i]);
			panPoker.add(lblPoker);
		}
		add(panPoker, BorderLayout.SOUTH);
		add(panDisplay, BorderLayout.NORTH);
		}
	public static void main(String[] args){
		Poker fraPoker = new Poker();		
		fraPoker.setTitle("Player Hand");
		fraPoker.setSize(400, 300);
		fraPoker.setLocationRelativeTo(null);
		fraPoker.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		fraPoker.setVisible(true);
		
	}
}
