public with sharing class HandCards {
    List<Card> handCardList = new List<Card>();

    public Integer getCardSize(){
        return this.handCardList.size();
    }

    public void addCard(Card card){
        this.handCardList.add(card);
    }

    public Card pickCard(Card card){
        Card pickedCard = this.handCardList.remove(0);
        return pickedCard;
    }

    public void shuffleCards(){
        Integer handCardsSize = handCardList.size();

        for(Integer i=0; i<handCardsSize*2; i++){
            Decimal pickPositionDec = Math.random() * handCardsSize;
            Integer pickPositionInt = (Integer) pickPositionDec.round(System.RoundingMode.HALF_EVEN);
            Card pickedCard = this.pickCard(this.handCardList[pickPositionInt]);

            this.addCard(pickedCard);
        }
    }

    public List<Card> pickSameCardPair(){
        if(this.handCardList.size() == 0) return null;
        List<Card> result = new List<Card>();

        Integer lastCardPosition = this.handCardList.size() - 1;
        Card lastCard = this.handCardList[lastCardPosition];

        for(Card tmpCard : this.handCardList){
            if(tmpCard.num != lastCard.num) continue;
            result.add(this.pickCard(tmpCard));
            result.add(this.pickCard(lastCard));
            break;
        }

        return result;
    }
}
