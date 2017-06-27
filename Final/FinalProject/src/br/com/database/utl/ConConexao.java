package br.com.database.utl;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConConexao {

    public static Connection getConnection(){
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/instalacoes" +
                            "?autoReconnect=true&useSSL=false",
                    "root","root");

        }catch (Exception e){
            e.printStackTrace();
        }

        return connection;
    }
}
