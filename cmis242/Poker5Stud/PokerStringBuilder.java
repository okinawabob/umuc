import javax.swing.JOptionPane;
public class PokerStringBuilder {
  public static void main(String[] args) 
  {   
    StringBuilder sbDisplay = new StringBuilder(); // Display String

    Card[] aryCards = new Card[52]; // Array representing single deck of cards
    Card.loadCards(aryCards);     // Load array with card objects
    sbDisplay.append("Created Deck:\n" + Card.showAllCards(aryCards));
    Card.shuffleCards(aryCards);
    sbDisplay.append("\nShuffled Deck:\n" + Card.showAllCards(aryCards));
    
    Card[] aryPlayerHand = new Card[5]; // Array to hold players hand
    Card.loadCards(aryPlayerHand);    // Load array with card objects
    sbDisplay.append("\nPlayer Loaded Cards:\n" + Card.showAllCards(aryPlayerHand));    
    for(int nI = 0; nI < aryPlayerHand.length; nI++)
      aryPlayerHand[nI] = Card.dealCard(aryCards);    
    sbDisplay.append("\n Player Dealt Cards:\n" + Card.showAllCards(aryPlayerHand)); 
    Card.sortCards(aryPlayerHand);
    sbDisplay.append("\nPlayer Sorted Cards:\n" + Card.showAllCards(aryPlayerHand)); 
    
    JOptionPane.showMessageDialog(null, sbDisplay.toString());        
  }
} 