public with sharing class RandomTactics implements Tactics {

    public Player.Hands readTactics(){
        Decimal randomNum = Math.random() * 3;
        if(0 < randomNum && randomNum < 1) return Player.Hands.STONE;
        if(1 < randomNum && randomNum < 2) return Player.Hands.SCISSORS;
        return Player.Hands.PAPER;
    }
}
