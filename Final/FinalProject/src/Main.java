import br.com.database.dao.CapacidadeCorrenteDAO;
import br.com.database.dao.FatorCorrecaoDAO;
import br.com.database.utl.Banco;
import br.com.database.utl.ConConexao;
import br.com.dimensionador.Circuito;
import br.com.gui.PrincipalTela;

import javax.swing.*;
import java.awt.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;


public class Main {

   public static ArrayList<Circuito> circuitos = new ArrayList<Circuito>();

    public static void main(String[] args) throws InterruptedException, SQLException {

        Connection conexao = null;
        try {
            try {
                conexao = ConConexao.getConnection();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (conexao != null) {
                Connection finalConexao = conexao;
                EventQueue.invokeLater(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            new PrincipalTela(finalConexao).setVisible(true);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if (conexao != null) {
               // conexao.close();
            }
        }
    }
}
