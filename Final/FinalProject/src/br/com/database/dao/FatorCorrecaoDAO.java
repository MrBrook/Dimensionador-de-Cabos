package br.com.database.dao;


import br.com.database.utl.Banco;
import org.omg.CORBA.BAD_CONTEXT;

import java.sql.Connection;
import java.sql.ResultSet;

public class FatorCorrecaoDAO {

   Banco banco = new Banco();

    public float correcaoK1(Connection conexao, int idTipo, int idIsolante, int temperaura )throws Exception {

        String SQL = "SELECT isolante FROM K1 where idTipo=" + idTipo + " and idIsolante=" + idIsolante + " and temperatura=" + temperaura;

        ResultSet resSet = banco.sqlDados(conexao, SQL);
        resSet.last();

        return resSet.getFloat("isolante");

    }
    public float correcaoK2(Connection conexao,double resTermica) throws Exception{

        String SQL = "SELECT fatorCorrecao FROM K2 where resTermica="+resTermica;

        ResultSet resSet = banco.sqlDados(conexao,SQL);
        resSet.last();

        return resSet.getFloat("fatorCorrecao");

    }

    public float correcaoK3(Connection conexao, int idK3,int nColuna) throws Exception{

        String SQL = "SELECT n"+nColuna+" FROM K3 where idK3="+idK3;

        ResultSet resSet = banco.sqlDados(conexao,SQL);
        resSet.last();

        return resSet.getFloat("n"+nColuna);

    }



}
