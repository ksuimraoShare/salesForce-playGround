public with sharing virtual class Player {
    public static final Integer STONE = 0;
    public static final Integer SCISSORS = 1;
    public static final Integer PAPER = 2;
    public enum Hands {STONE, SCISSORS, PAPER}

    public String name {get; private set;}
    public Integer winCount {get; private set;}
    public Tactics tactics {get; private set;}

    public Player(String name){
        this.name = name;
        this.winCount = 0;
    }

    public void setTactics(Tactics tactics){
        this.tactics = tactics;
    }

    public virtual Hands showHand(){
        return this.tactics.readTactics();
    }

    public void notifyResult(Boolean result){
        if(result) this.winCount++;
    }
}
