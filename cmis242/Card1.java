/** Card class 
 * is designed to work with card games.<br>
 * Card objects can be created from the Card class
 * and methods can be applied to these objects.
 * 
 * @author  Robert Laurie
 * @version 1.0 Build 7 May 4, 2012
 */
public class Card 
{
  /** Instance variables are object accessed <br> 
   * Suit is unicode character 
   */
  private char cSuit;
  
  /** Instance variables are object accessed <br>
   * Rank is a string because 10 is two characters 
   */
  private String sRank;   
  
  /** Instance variables are object accessed <br> 
   * Value is a rank order 2 through 14 <br>
   * 14=A, 13=K, 12=Q, 11=J, 10=10, 9=9, ...
   */  
  private int nValue;    

  /** Class variables are class accessed <br>
   * CardsDealt is the counter for number of cards dealt from deck
   */  
  private static int nCardsDealt; 
 
  /** Constructor (default)
   * Instance variables loaded with ? ? 0 
   */
  public Card()
  {
    sRank = "?"; 
    cSuit = '?';
    nValue = 0;
  }

  /** Constructor - instance variable initialized */
  public Card(String Rank, char Suit, int Value)
  {
    sRank = Rank; 
    cSuit = Suit;
    nValue = Value;
  }

  /** getSuit - object getter method
   * 
   * @return the Suit of card unicode character
   */
  public char getSuit()
  {
    return cSuit;
  }
  
  /** getRank - object getter method
   * 
   * @return String that represents Rank
   */
  public String getRank()
  {
    return sRank;
  }
  
  /** getValue - object getter method
   *  
   * @return Value is rank order 2 through 14 <br>
   * 14=A, 13=K, 12=Q, 11=J, 10=10, 9=9, ...
   */
  public int getValue()
  {
    return nValue;
  }

  /** showCard - object getter method 
   * 
   * @return String that contains rank and suit of individual card
   */
  public String showCard()
  {
    return String.format(" %2s%c", sRank, cSuit);  
  } 
  
  /** hideCard - object method
   * 
   * @return String that contains "??"
   */
  public String hideCard()
  {
    return "?? ";    
  }
  
  /** dealCard - class method - 
   * Deals the next card from the deck of cars passed as an array.
   * Increments the nCardsDealt counter
   * 
   * @param   aryCards   Array of Card Objects
   * @return  Card object dealt
   */
  public static Card dealCard(Card[] aryCards)
  {
    return aryCards[nCardsDealt++];
  }
  
  /** loadCards - class method - 
   * Loads the array of Cards with Rank, Suit, and Value data
   * Value is a number representing the card Rank from 2 through 14 = A
   * 
   * @param   aryCards   Array of Card Objects
   */
  public static void loadCards(Card[] aryCards) 
  {
    char[] cSuits = {'\u2663' /* Clubs ♣ */, '\u2660' /* Spades ♠ */, 
                  '\u2665' /* Hearts ♥ */, '\u2666' /* Diamonds ♦ */,};
    String[] sRanks = {"2","3","4","5","6","7","8","9","10","J","Q","K","A"};
//    int[] nValue =    { 2,  3,  4,  5,  6,  7,  8,  9 , 10, 11, 12, 13, 14 };
    for(int nI = 0; nI < aryCards.length; nI++)
      aryCards[nI] = new Card(sRanks[nI%13], cSuits[nI/13], nI % 13 + 2); 
  }

  /** shuffleCards - class method - 
   * Shuffles the card objects randomly within array
   * 
   * @param   aryCards   Array of Card Objects
   */
  public static void shuffleCards(Card[] aryCards) 
  {
    for(int nI = 0; nI < aryCards.length; nI++) 
    {
      int nIndex = (int)(Math.random() * aryCards.length);
      Card oTemp = aryCards[nI];
      aryCards[nI] = aryCards[nIndex];
      aryCards[nIndex] = oTemp;
      nCardsDealt = 0;
    }
  }

  /** showAllCards - class method - 
   * Creates a string with the Rank and Suit of all cards in array 
   * 
   * @param   aryCards   Array of Card Objects
   * @return  String containing card sequence
   */
  public static String showAllCards(Card[] aryCards) 
  {
    String sOutput="";
    for(int nI = 0; nI < aryCards.length; nI++)
      sOutput += aryCards[nI].showCard();
    return sOutput;
  }

  /** sortCards - class method - 
   * Sorts a array of card objects by card rank using bubble sort 
   * 
   * @param   aryCards   Array of Card Objects
   */
  public static void sortCards(Card[] aryCards) 
  {
    boolean bAnotherPass = true;
    Card oTempCard = new Card();
    for(int nJ = 1; nJ < aryCards.length && bAnotherPass; nJ++)    
    {
      bAnotherPass = false;
      for(int nI = 0; nI < aryCards.length - 1; nI++)
      {
        if(aryCards[nI].getValue() > aryCards[nI + 1].getValue())
        {
          oTempCard  = aryCards[nI];
          aryCards[nI] = aryCards[nI + 1];
          aryCards[nI + 1] = oTempCard;
          bAnotherPass = true;  // Needs another pass
        } 
      }
    }
  }
}