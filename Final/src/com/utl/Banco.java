package com.utl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by lucas on 29/04/17.
 */
public class Banco {

    public ArrayList<Metodos> buscarTodos(Connection conexao) throws Exception{

        ArrayList<Metodos> listaDados = new ArrayList<Metodos>();

       // Connection conexao = ConConexao.getConnection();

        String SQL  = "SELECT * FROM dimensao";

        PreparedStatement statement = conexao.prepareStatement(SQL);
        ResultSet resSet = statement.executeQuery();

        while (resSet.next()){

            Metodos metodos = new Metodos();

            metodos.setIdDimensao(resSet.getInt("idDimensao"));
            metodos.setDiametro(resSet.getFloat("diametro"));

            listaDados.add(metodos);

        }
        return listaDados;

    }

    public Metodos buscaPorId(double id, Connection conexao,int controle,String tabela,String campo) throws SQLException {
       /// Connection conexao = ConConexao.getConnection();
       // String tabela = "dimensao";
        //String campo = "diametro";

        String SQL = "SELECT * FROM "+tabela+" WHERE "+campo+" = ?";

        //String SQ = "SELECT ? FROM ? WHERE id"+"a"+"?";

        PreparedStatement statement = conexao.prepareStatement(SQL);
        statement.setDouble(1,id);
        ResultSet resSet = statement.executeQuery();

        Metodos metodos = null;

        if(resSet.next()){
            metodos = new Metodos();
            if(controle ==1){
                metodos.setIdDimensao(resSet.getInt("idDimensao"));
                metodos.setDiametro(resSet.getFloat("diametro"));
            }else if(controle == 2){
                metodos.setCampo2(resSet.getFloat("2"));
                metodos.setCampo3(resSet.getFloat("3"));
            }
        }

        return metodos;
    }

}
