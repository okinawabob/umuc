import javax.swing.ImageIcon;
public class GroupOfCards { 
  private CardImage[] aryCards;
  private int nCardsDealt;
  
  public GroupOfCards(int TotalCards) {
    aryCards = new CardImage[TotalCards];
    for(int nI = 0; nI < TotalCards; nI++)
      aryCards[nI] = new CardImage(14 - nI / 4, 3 - nI % 4); 
  }
  public GroupOfCards() { // Default No-Args Constructor makes std. deck
    this(52);
  } 

  public CardImage dealCard() {
    return aryCards[nCardsDealt++];
  }
  public void recvCardUp(CardImage cardDealt) {
    cardDealt.setFace(true);
    aryCards[nCardsDealt++] = cardDealt;
  }
  public void recvCardDown(CardImage cardDealt) {
    cardDealt.setFace(false);
    aryCards[nCardsDealt++] = cardDealt;
  }
  public void shuffleCards(boolean bFaceUp) {
    for(int nI = 0; nI < aryCards.length; nI++) 
    {
      int nIndex = (int)(Math.random() * aryCards.length);
      CardImage oTemp = aryCards[nI];
      aryCards[nI] = aryCards[nIndex];
      aryCards[nIndex] = oTemp;
      aryCards[nIndex].setFace(bFaceUp);
      aryCards[nI].setFace(bFaceUp);      
    }
    nCardsDealt = 0;  // Resets Array Counter to Card 0
  }
  public void shuffleCards() {
    this.shuffleCards(false);
  }
  public void sortCards() {
    boolean bAnotherPass = true;
    CardImage oTempCard = new CardImage();
    for(int nJ = 1; nJ < aryCards.length && bAnotherPass; nJ++) {
      bAnotherPass = false;
      for(int nI = 0; nI < aryCards.length - 1; nI++) {
        if(aryCards[nI].getRank() < aryCards[nI + 1].getRank()) {
          oTempCard  = aryCards[nI];
          aryCards[nI] = aryCards[nI + 1];
          aryCards[nI + 1] = oTempCard;
          bAnotherPass = true;  // Needs another pass
        } 
      }
    }
  }
  public ImageIcon displayCard(int nCard) {
    CardImage cardSelected = aryCards[nCard];
    return cardSelected.showCardUp();
  }
  public String toString() {
    String sOutput = new String();
    for(int nI = 0; nI < aryCards.length; nI++)
      sOutput += aryCards[nI].toString() + " ";
    return sOutput;
  }
}