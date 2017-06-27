package br.com.database.dao;

import br.com.database.utl.Banco;

import java.sql.Connection;
import java.sql.ResultSet;

public class CabosDAO {

    private Banco banco = new Banco();

    public int buscaIdCabo(Connection conexao,int idMaterial,float diametro) throws Exception{

        String SQL = "SELECT idCabo from cabos where diametro="+diametro+" and idMaterialCabo="+idMaterial;

        ResultSet resSet = banco.sqlDados(conexao,SQL);
        resSet.last();

        return resSet.getInt("IdCabo");
    }
    public float atualisaCabo(Connection conexao,int idCabo) throws Exception{

        String SQL = "SELECT diametro from cabos where idCabo="+idCabo;

        ResultSet resSet2 = banco.sqlDados(conexao,SQL);
        resSet2.last();

        return resSet2.getFloat("diametro");
    }
}

