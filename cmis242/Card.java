public class Card {
  private int nRank; // 14=A, 13=K, 12=Q, 11=J, 10=10, 9=9, ... 2=2
  private int nSuit; // 3=Clubs, 2=Spades, 1=Hearts, 0=Diamonds 
  private boolean bFace; // true = Face Up, false = Face Down

  public Card(int Rank, int Suit) {  // Constructor with Args
    nRank = Rank; 
    nSuit = Suit;
    bFace = true;
  }
  public Card() {   // Default no-args Constructor
    this(14, 3);    // Default Ace of Clubs
  }  
  
  public int getRank() {
    return nRank;
  }
  public int getSuit() {
    return nSuit;
  }
  public void setFace(boolean UpDown) {
    bFace = UpDown;
  }
  public String toString() {
    char[] cSuits = { '\u2666' /* Diamonds ♦ */, '\u2665' /* Hearts ♥ */, 
      '\u2660' /* Spades ♠ */, '\u2663' /* Clubs ♣ */ };
    String[] sRanks = { "", "", "2", "3", "4", "5", "6", 
      "7","8", "9", "10", "J", "Q", "K", "A" };
    if(bFace) {
       return String.format("%s%c", sRanks[nRank], cSuits[nSuit]);
    }
    else
      return "??";  
  } 
}