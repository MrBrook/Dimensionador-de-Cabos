package br.com;

/**
 * Created by lucas on 23/05/17.
 */
public enum Intrucoes {

    add(2),sub(3),and(0),or(1),slt(3);

    private int indice;

    Intrucoes(int opcao){

        indice = opcao;
    }

    public int getIndice(){
        return indice;
    }
}
