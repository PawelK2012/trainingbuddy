/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TrainingBuddy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sir Pawel
 */
public class MyDB {

    public static java.sql.Connection getConnection() throws ClassNotFoundException {

        String host = "localhost";
        String dbName = "mm4k00132106";
//        String host = "mmserver";
//        String dbName = "mm4k00132106";
        int port = 3306;
        String mySqlUrl = "jdbc:mysql://" + host + ":" + port
                + "/" + dbName;

        String driver = "org.apache.derby.jdbc.EmbeddedDriver";
        Properties userInfo = new Properties();
        userInfo.put("user", "root");
        userInfo.put("password", "");
      //  userInfo.put("user", "MM4K00132106");
        //  userInfo.put("password", "K00132106");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(mySqlUrl, userInfo);

            return connection;

        } catch (SQLException ex) {
            Logger.getLogger(MyDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

}
