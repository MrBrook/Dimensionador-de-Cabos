package br.com.database.dao;

import br.com.database.utl.Banco;

import java.sql.Connection;
import java.sql.ResultSet;

public class ResistenciaReatanciaCabosDAO {

    private Banco banco = new Banco();

    public float[] ResisReatCabos(Connection conexao,float diametro,String tipo) throws Exception {
        float res[] = new float[2];

        String SQL = "SELECT p.r"+tipo+",p.xl from cabos as c join" +
                " resistenciareatanciacabos as p on p.idCabo = c.idCabo where c.diametro >="+diametro;

        ResultSet resSet = banco.sqlDados(conexao,SQL);
        resSet.first();
        while (resSet.next()){
                res[0] = resSet.getFloat("r"+tipo);
                res[1] = resSet.getFloat("xl");
                return res;
        }
        return res;
    }
    public float[] ResisReatCabos2(Connection conexao,double diametro,String tipo) throws Exception {
        float res[] = new float[2];


        String SQL = "SELECT r"+tipo+",xl from resistenciareatanciacabos where idCabo="+diametro;

        ResultSet resSet = banco.sqlDados(conexao,SQL);
        resSet.first();

        res[0] = resSet.getFloat("rca");
        res[1] = resSet.getFloat("xl");

        return res;
    }

}
