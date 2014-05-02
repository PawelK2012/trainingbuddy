/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TrainingBuddy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sir Pawel
 */
public class Users {

    private String uId;

    private String uName;

    private String uPass;

    private String fName;

    private String lName;

    private String uEmail;

    private String uImg;

    private String uBio;

    private String regDate;

    private String uCoverImg;

    private boolean admin;

    public Users() {
    }

    public Users(String uId, String uName, String uPass, String fName, String lName, String uEmail, String uImg, String uBio, String regDate, String uCoverImg, boolean admin) {
        this.uId = uId;
        this.uName = uName;
        this.uPass = uPass;
        this.fName = fName;
        this.lName = lName;
        this.uEmail = uEmail;
        this.uImg = uImg;
        this.uBio = uBio;
        this.regDate = regDate;
        this.uCoverImg = uCoverImg;
        this.admin = admin;
    }

    public Users(String uName, String uPass, String fName, String lName, String uEmail, String uImg, String uBio, String regDate, String uCoverImg, boolean admin) {
        this.uName = uName;
        this.uPass = uPass;
        this.fName = fName;
        this.lName = lName;
        this.uEmail = uEmail;
        this.uImg = uImg;
        this.uBio = uBio;
        this.regDate = regDate;
        this.uCoverImg = uCoverImg;
        this.admin = admin;
    }

    public Users(String uId, String uName, String uPass, String fName, String lName, String uEmail, String uImg) {
        this.uId = uId;
        this.uName = uName;
        this.uPass = uPass;
        this.fName = fName;
        this.lName = lName;
        this.uEmail = uEmail;
        this.uImg = uImg;
    }

    public Users(String uName, String uPass, String fName, String lName, String uEmail, String uImg) {
        this.uName = uName;
        this.uPass = uPass;
        this.fName = fName;
        this.lName = lName;
        this.uEmail = uEmail;
        this.uImg = uImg;
    }

    public Users(String uId, String uBio) {
        this.uId = uId;
        this.uBio = uBio;
    }

    public Users(String uCoverImg) {
        this.uCoverImg = uCoverImg;
    }

    public Users findUserByUserNamePassword(String uName, String uPass) throws ClassNotFoundException {

        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM users where uName='" + uName + "' AND uPass ='" + uPass + "'";
            // Send query to database and store results. 
            System.out.println(query);
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                System.out.println("user found");
                this.uId = resultSet.getString("uId");
                this.uName = resultSet.getString("uName");
                this.uPass = resultSet.getString("uPass");
                this.fName = resultSet.getString("fName");
                this.lName = resultSet.getString("lName");
                this.uEmail = resultSet.getString("uEmail");
                this.uImg = resultSet.getString("uImg");
                this.uBio = resultSet.getString("uBio");
                this.regDate = resultSet.getString("regDate");
                this.uCoverImg = resultSet.getString("uCoverImg");
                this.admin = resultSet.getBoolean("admin");

            }
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
        }

        return this;
    }

    public boolean createUser() throws ClassNotFoundException {
        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String template = "INSERT INTO users(uName, uPass, fName, lName, uEmail, uImg) VALUES (?,?,?,?,?,?)";

            PreparedStatement inserter = connection.prepareStatement(template);

            inserter.setString(1, this.uName);
            inserter.setString(2, this.uPass);
            inserter.setString(3, this.fName);
            inserter.setString(4, this.lName);
            inserter.setString(5, this.uEmail);
            inserter.setString(6, this.uImg);
            inserter.executeUpdate();

            ResultSet rs = statement.executeQuery("select max(uId) from Users");
            while (rs.next()) {
                System.out.println("max row " + rs.getString(1) + getuName());
                this.uId = rs.getString(1);
            }

            saved = true;
            inserter.close();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
        }
        return saved;
    }

    public Collection<Users> findAllUsers() {
        Collection<Users> usClass = new ArrayList<Users>();
        try {
            System.out.println("find all instructors");
            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "Select * from users ORDER BY  `uId` DESC ";
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                System.out.println("found id " + rs.getString("uId"));
                Users u = new Users(rs.getString("uId"), rs.getString("uName"), rs.getString("uPass"), rs.getString("fName"),
                        rs.getString("lName"), rs.getString("uEmail"), rs.getString("uImg"),
                        rs.getString("uBio"), rs.getString("regDate"), rs.getString("uCoverImg"), rs.getBoolean("admin"));
                usClass.add(u);
            }

            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        } catch (SQLException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }

        return usClass;

    }

    public Users findUserById(String uId) throws ClassNotFoundException {

        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM users where uId='" + uId + "'";

            System.out.println(query);

            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                this.uId = resultSet.getString("uId");
                this.uName = resultSet.getString("uName");
                this.uPass = resultSet.getString("uPass");
                this.fName = resultSet.getString("fName");
                this.lName = resultSet.getString("lName");
                this.uEmail = resultSet.getString("uEmail");
                this.uImg = resultSet.getString("uImg");
                this.uBio = resultSet.getString("uBio");
                this.regDate = resultSet.getString("regDate");
                this.uCoverImg = resultSet.getString("uCoverImg");
                this.admin = resultSet.getBoolean("admin");

            }

            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
        }

        return this;
    }

    public boolean deleteUser(String uId) throws ClassNotFoundException {
        boolean saved = false;
        Connection c = MyDB.getConnection();
        if (c != null) {
            try {
                Statement s = c.createStatement();
                String query = "delete from users where uId=" + uId;  // check mysql 

                System.out.println(query);
                s.executeUpdate(query);
                saved = true;
            } catch (SQLException ex) {
                Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println(ex);
            }

        }

        return saved;
    }

    public boolean updateUser() {

        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String template = "UPDATE users SET uName=?,uPass=?,fName=?,lName=?,uEmail=?,uImg=?  WHERE uId= ?";
            System.out.println("in save class " + this.uName);

            PreparedStatement inserter = connection.prepareStatement(template);
            inserter.setString(1, this.uName);
            inserter.setString(2, this.uPass);
            inserter.setString(3, this.fName);
            inserter.setString(4, this.lName);
            inserter.setString(5, this.uEmail);
            inserter.setString(6, this.uImg);
            inserter.setString(7, this.uId);

            System.out.println("inserter" + inserter.toString());
            inserter.executeUpdate();

            saved = true;
            inserter.close();
            connection.close();

        } catch (Exception ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }
        return saved;
    }

    public boolean updateBio() {

        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            System.out.println("uBio " + this.uBio + " uid " + this.uId);
            String template = "UPDATE users SET uBio=?  WHERE uId= ?";
            System.out.println("in save class ");

            PreparedStatement inserter = connection.prepareStatement(template);
            inserter.setString(1, this.uBio);
            inserter.setString(2, this.uId);

            //System.out.println("inserter" + inserter.toString());
            inserter.executeUpdate();

            saved = true;
            inserter.close();
            connection.close();

        } catch (Exception ex) {

            System.out.println("ex" + ex);
        }
        return saved;
    }

    public boolean updateCoverImg(String id) {

        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();

            String template = "UPDATE users SET uCoverImg=?  WHERE uId= ?";
            System.out.println("in save class cover img");

            PreparedStatement inserter = connection.prepareStatement(template);
            inserter.setString(1, this.uCoverImg);
            inserter.setString(2, id);

            System.out.println("inserter" + inserter.toString());
            inserter.executeUpdate();

            saved = true;
            inserter.close();
            connection.close();

        } catch (Exception ex) {

            System.out.println("ex" + ex);
        }
        return saved;
    }

    public boolean getAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public String getuCoverImg() {
        return uCoverImg;
    }

    public void setuCoverImg(String uCoverImg) {
        this.uCoverImg = uCoverImg;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    public String getuBio() {
        return uBio;
    }

    public void setuBio(String uBio) {
        this.uBio = uBio;
    }

    public String getuImg() {
        return uImg;
    }

    public void setuImg(String uImg) {
        this.uImg = uImg;
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getuPass() {
        return uPass;
    }

    public void setuPass(String uPass) {
        this.uPass = uPass;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    @Override
    public String toString() {
        return "Users{" + "uName=" + uName + ", uPass=" + uPass + ", fName=" + fName + ", lName=" + lName + ", uEmail=" + uEmail + ", uImg=" + uImg + ", uBio=" + uBio + ", regDate=" + regDate + ", uCoverImg=" + uCoverImg + ", admin=" + admin + '}';
    }

}
