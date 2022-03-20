public with sharing class CyclicTactics implements Tactics {
    List<Player.Hands> handList = new List<Player.Hands>{Player.Hands.STONE, Player.Hands.SCISSORS, Player.Hands.PAPER};
    Integer lastHand = -1;

    public Player.Hands readTactics(){
        this.lastHand++;
        return handList[Math.mod(lastHand, 3)];
    }
}
