package com.utl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by lucas on 28/04/17.
 */
public class ConConexao {
    public static Connection getConnection(){
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/instalacoes",
                    "root","root");

        }catch (Exception e){
            e.printStackTrace();
        }

        return connection;
    }
   /* public static ConConexao fimConexao(){

    }*/

}
