public with sharing class Card {

    public enum SUIT{JOKER, SUIT_SPADE, SUIT_DIAMOND, SUIT_CLUB, SUIT_HEART}
    public enum SUIT_IDENTIFIER{JK, S, D, C, H}
    public enum NUM_IDENTIFIER{A, T, J, Q, K}

    public SUIT suit {get; private set;}
    public Integer num {get; private set;}
    public String suitNum {get; private set;}

    public Card(SUIT suit, Integer num) {
        this.suit = suit;
        this.num = num;
        this.suitNum = this.setSuitNum(suit, num);
    }

    private String setSuitNum(SUIT suit, Integer num){
        if(num == 0) return String.valueOf(SUIT_IDENTIFIER.JK);

        String result = '';
        switch on suit {
            when SUIT_SPADE {
                result += String.valueOf(SUIT_IDENTIFIER.S);
            }
            when SUIT_DIAMOND {
                result += String.valueOf(SUIT_IDENTIFIER.D);
            }
            when SUIT_CLUB {
                result += String.valueOf(SUIT_IDENTIFIER.C);
            }
            when SUIT_HEART {
                result += String.valueOf(SUIT_IDENTIFIER.H);
            }
        }
        switch on  num {
            when 1 {
                return result + String.valueOf(NUM_IDENTIFIER.A);
            }
            when 10 {
                return result + String.valueOf(NUM_IDENTIFIER.T);
            }
            when 11 {
                return result + String.valueOf(NUM_IDENTIFIER.J);
            }
            when 12 {
                return result + String.valueOf(NUM_IDENTIFIER.Q);
            }
            when 13 {
                return result + String.valueOf(NUM_IDENTIFIER.K);
            }
            when else{
                return result + String.valueOf(num);
            }
        }
    }
}
