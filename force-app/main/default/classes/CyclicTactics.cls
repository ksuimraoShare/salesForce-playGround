public with sharing class CyclicTactics implements Tactics {
    // private Integer jankenCount = 0;
    private Player.Hands previousHand = null;

    public Player.Hands readTactics(){
        if(this.previousHand == null || this.previousHand == Player.Hands.PAPER){
            this.previousHand = Player.Hands.STONE;
            return Player.Hands.STONE;
        }
        if(this.previousHand == Player.Hands.STONE){
            this.previousHand = Player.Hands.SCISSORS;
            return Player.Hands.SCISSORS;
        }
        this.previousHand = Player.Hands.PAPER;
        return Player.Hands.PAPER;
        // switch on this.jankenCount {
        //     when 0 {
        //         this.jankenCount++;
        //         return Player.Hands.STONE;
        //     }
        //     when 1 {
        //         this.jankenCount++;
        //         return Player.Hands.SCISSORS;
        //     }
        // }
        // return Player.Hands.PAPER;
    }
}
