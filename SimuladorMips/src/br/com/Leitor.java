package br.com;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

/**
 * Created by lucas on 23/05/17.
 */

public class Leitor {

    public void leitorDados() throws FileNotFoundException {

        String linha;
        String[] comando;
        BufferedReader arquivo = new BufferedReader( new FileReader( "/home/lucas/Documentos/dados.txt" ) );

        try{
            while (arquivo.ready()){

                comando = arquivo.readLine().split( " " );
                System.out.println(String.format("%6s", Integer.toBinaryString(
                        Intrucoes.valueOf( comando[0] ).getIndice()) ).replace( ' ','0' ));
            }
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
