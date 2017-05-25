package br.com;

import java.io.FileNotFoundException;

/**
 * Created by lucas on 23/05/17.
 */
public class TestadoraEnum {

   /* public static void escolheOpcao(String opcao){
        if(opcao.equalsIgnoreCase(Intrucoes.add.name())){
            System.out.println("Salvando o arquivo!");
        }
        else if(opcao.equalsIgnoreCase(Intrucoes.sub.name())){
            System.out.println("Abrindo o arquivo!");
        }
    }*/

    public static void main(String[] args) throws FileNotFoundException {
       // String teste = "SUB";
        //if (userPick.equalsIgnoreCase(computerPick.name()))
        //escolheOpcao(teste);
        Leitor ler = new Leitor();

        ler.leitorDados();
    }
}