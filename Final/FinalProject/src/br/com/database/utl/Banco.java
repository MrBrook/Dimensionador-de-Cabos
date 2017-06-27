package br.com.database.utl;

import br.com.database.dto.CabosDTO;
import br.com.database.dto.CapacidadeCorrenteDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Banco {

//    public ArrayList<CabosDTO> listaCabos(Connection conexao) throws Exception{
//
//        ArrayList<CabosDTO> listaCabos = new ArrayList<CabosDTO>();
//
//        String SQL  = "SELECT * FROM cabos";
//        ResultSet resSet = sqlDados(conexao,SQL);
//
//        while (resSet.next()){
//
//            CabosDTO cabosDTO = new CabosDTO();
//
//            cabosDTO.setIdCabo(resSet.getInt("idCabo"));
//            cabosDTO.setIdMaterial(resSet.getInt("idMaterialCabo"));
//            //cabosDTO.setMaterial(resSet.getString("descricao"));
//            cabosDTO.setDiametro(resSet.getFloat("diametro"));
//
//            listaCabos.add(cabosDTO);
//
//        }
//
//        return listaCabos;
//    }
//
//
//
//    public ArrayList<Metodos> buscarTodos(Connection conexao) throws Exception{
//
//        ArrayList<Metodos> listaDados = new ArrayList<Metodos>();
//
//        // Connection conexao = ConConexao.getConnection();
//
//        String SQL  = "SELECT idCabo FROM capacidadeconducao where ";
//
//        PreparedStatement statement = conexao.prepareStatement(SQL);
//        ResultSet resSet = statement.executeQuery();
//
//        while (resSet.next()){
//
//            Metodos metodos = new Metodos();
//
//            metodos.setIdDimensao(resSet.getInt("idCabo"));
//            metodos.setDiametro(resSet.getFloat("diametro"));
//
//            listaDados.add(metodos);
//
//        }
//        return listaDados;
//
//    }

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

    public ResultSet sqlDados(Connection conexao,String SQL) throws Exception{

        PreparedStatement statement = conexao.prepareStatement(SQL);
        ResultSet resSet = statement.executeQuery();

        return resSet;
    }

}
