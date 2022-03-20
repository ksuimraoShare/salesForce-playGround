public with sharing class Judge {

    public void startJanken(Player player1, Player player2){
        System.debug('じゃんけん開始');
        
        for(Integer cnt=1; cnt<=6; cnt++){
            System.debug((String.valueOf(cnt) + '回戦目'));
            Player winner = this.judgeJanken(player1, player2);

            if(winner != null){
                System.debug(winner.name + 'が勝ちました');
                winner.notifyResult(true);
            }
            else {
                System.debug('引き分けです');
            }
        }

        System.debug('じゃんけん終了');

        Player finalWinner = this.judgeFinalWinner(player1, player2);
        System.debug(String.valueOf(player1.winCount) + '対' + String.valueOf(player2.winCount) + 'で');

        if(finalWinner != null){
            System.debug(finalWinner.name + 'の勝ちです');
        }else {
            System.debug('引き分けです');
        }
    }

    private Player judgeJanken(Player player1, Player player2){
        Player.Hands player1Hand = player1.showHand();
        Player.Hands player2Hand = player2.showHand();

        this.printHand(player1Hand);
        System.debug('対');
        this.printHand(player2Hand);

        if(player1Hand == player2Hand) return null;

        if((player1Hand==Player.Hands.STONE && player2Hand==Player.Hands.SCISSORS)
            || (player1Hand==Player.Hands.SCISSORS && player2Hand==Player.Hands.PAPER)
            || (player1Hand==Player.Hands.STONE && player2Hand==Player.Hands.SCISSORS)
        ){
            return player1;
        }
        return player2;
    }

    private Player judgeFinalWinner(Player player1, Player player2){
        if(player1.winCount == player2.winCount) return null;
        if(player1.winCount > player2.winCount) return player1;
        return player2;
    }

    private void printHand(Player.Hands hand){
        switch on hand {
            when STONE {
                System.debug('グー');
            }
            when SCISSORS {
                System.debug('チョキ');
            }
            when PAPER {
                System.debug('パー');
            }
        }
    }
}
