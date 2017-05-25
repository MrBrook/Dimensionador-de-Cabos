import com.utl.Banco;
import com.utl.ConConexao;
import com.utl.Metodos;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

/**
 * Created by lucas on 28/04/17.
 */
public class Conexao {

    public static void main(String[] args) throws SQLException {

        Connection conexao = null;

        double fPotencia = 1.0;

        try{
            try{
                conexao = ConConexao.getConnection();
            }catch (Exception e){
                e.printStackTrace();
            }

            if(conexao != null){
                System.out.println("Conectou");

              /*  Banco banco = new Banco();

                Scanner ler = new Scanner(System.in);

                System.out.println("Potencia: ");
                double potenica = ler.nextFloat();
                System.out.println("Tensão: ");
                double tensao = ler.nextFloat();

                double iB = potenica/(tensao*fPotencia);

                System.out.println("Digite o metodo de instalação");
                String met = "B1";
                int nCabos = 2;


                for(Metodos metodos : banco.buscarTodos(conexao)){
                    System.out.println("idDimensao: "+metodos.getIdDimensao() +" Diametro: "+metodos.getDiametro());


                System.out.println("Buscando por Id....");
                Metodos metodos = banco.buscaPorId(2.5,conexao,1,"dimensao","diametro");

                int id = metodos.getIdDimensao();
                 System.out.println("Diametro: "+id);

                Metodos metodos1 = banco.buscaPorId(id,conexao,2,met,"idB1");

                System.out.println("Corrente: "+metodos1.getCampo2());

                System.out.println("Corrente Ib: "+iB);*/
            }
        }catch (Exception e){
            System.out.print(e);
        }finally {
            if(conexao != null){
                conexao.close();
            }
        }

    }
}
