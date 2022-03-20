public with sharing class ObjectJanken {
    public static void main(){
        Judge saito = new Judge();

        Player murata = new Murata('村田さん');
        Tactics murataTactics = new CyclicTactics();
        murata.setTactics(murataTactics);

        Player yamada = new Yamada('山田さん');
        Tactics yamadaTactics = new RandomTactics();
        yamada.setTactics(yamadaTactics);

        saito.startJanken(murata, yamada);
    }
}
