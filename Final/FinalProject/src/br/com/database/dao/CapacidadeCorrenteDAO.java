package br.com.database.dao;


import br.com.database.utl.Banco;

import java.sql.Connection;
import java.sql.ResultSet;

public class CapacidadeCorrenteDAO {

    private Banco banco = new Banco();

    public float capacidadeCorrente(Connection conexao, int idMetodo, int idIsolante,
                                    int nCircuito, double ib) throws Exception{

        String SQL = "SELECT c.diametro from cabos as c join capacidadeconducao " +
                "as p on p.idCabo = c.idCabo where idMetodo="+idMetodo+" and idIsolante="+idIsolante+" and "+"n"+nCircuito+"Conector >="+ib;

        ResultSet resSet = banco.sqlDados(conexao,SQL);

        while (resSet.next()){
            return resSet.getFloat("diametro");

        }
        return -1;



    }
}
