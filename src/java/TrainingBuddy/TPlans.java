/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TrainingBuddy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sir Pawel
 */
public class TPlans {

    private String tId;
    private String tName;
    private String uId;
    private String privateplan;
    private String mondayId;
    private String uName;
    private String g1;
    private String a1;
    private String a2;
    private String a3;
    private String a4;
    private String a5;
    private String g2;
    private String a6;
    private String a7;
    private String a8;
    private String a9;
    private String a10;
    private String g3;
    private String a11;
    private String a12;
    private String a13;
    private String a14;
    private String a15;

    public TPlans() {
    }

    public TPlans(String tId, String tName, String uId, String privateplan, String mondayId) {
        this.tId = tId;
        this.tName = tName;
        this.uId = uId;
        this.privateplan = privateplan;
        this.mondayId = mondayId;
    }

    public TPlans(String tName, String uId, String privateplan, String mondayId) {
        this.tName = tName;
        this.uId = uId;
        this.privateplan = privateplan;
        this.mondayId = mondayId;
    }

    public boolean createTplan() throws ClassNotFoundException {
        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String template = "INSERT INTO tplans(tName,uId, private, mondayId) VALUES (?,?,?,?)";

            PreparedStatement inserter = connection.prepareStatement(template);

            inserter.setString(1, this.tName);
            inserter.setString(2, this.uId);
            inserter.setString(3, this.privateplan);
            inserter.setString(4, this.mondayId);

            inserter.executeUpdate();

            ResultSet rs = statement.executeQuery("select* from tplans");

            while (rs.next()) {
                System.out.println("max row " + rs.getString(1) + getMondayId());
                this.mondayId = rs.getString(1);
            }

            saved = true;
            inserter.close();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(TPlans.class.getName()).log(Level.SEVERE, null, ex);
        }
        return saved;
    }

    public Collection<TPlans> findAllTPlans() {
        Collection<TPlans> tpClass = new ArrayList<TPlans>();
        try {
            System.out.println("find all tplans");
            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "Select * from tplans ORDER BY `tId` DESC";
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                System.out.println("found id " + rs.getString("tId"));
                TPlans tp = new TPlans(rs.getString("tId"), rs.getString("tName"), rs.getString("uId"),
                        rs.getString("private"), rs.getString("mondayId"));
                tpClass.add(tp);
            }

            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TPlans.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        } catch (SQLException ex) {
            Logger.getLogger(TPlans.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }

        return tpClass;

    }

    public Collection<TPlans> findTPlanByIdUserIdPublic(String uId) throws ClassNotFoundException {

        Collection<TPlans> tpClass = new ArrayList<TPlans>();
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            // String query = "SELECT * FROM tplans WHERE uId ='" + uId + "' AND private='0'";
            String query = "SELECT * FROM tplans WHERE uId ='" + uId + "' AND private='0'";

            System.out.println(query);

            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {

                TPlans tp = new TPlans(rs.getString("tId"), rs.getString("tName"), rs.getString("uId"),
                        rs.getString("private"), rs.getString("mondayId"));
                tpClass.add(tp);

            }
            System.out.println("select tplan by mondayId: own user page1:  " + getMondayId());
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(TPlans.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tpClass;
    }

    public Collection<TPlans> findTPlanByIdUserId(String uId) throws ClassNotFoundException {

        Collection<TPlans> tpClass = new ArrayList<TPlans>();
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            // String query = "SELECT * FROM tplans WHERE uId ='" + uId + "' AND private='0'";
            String query = "SELECT * FROM tplans WHERE uId ='" + uId + "'";

            System.out.println(query);

            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {

                TPlans tp = new TPlans(rs.getString("tId"), rs.getString("tName"), rs.getString("uId"),
                        rs.getString("private"), rs.getString("mondayId"));
                tpClass.add(tp);

            }
            System.out.println("select tplan by mondayId: own user page1:  " + getMondayId());
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(TPlans.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tpClass;
    }

    public String getPrivateplan() {
        return privateplan;
    }

    public void setPrivateplan(String privateplan) {
        this.privateplan = privateplan;
    }

    public String getMondayId() {
        return mondayId;
    }

    public void setMondayId(String mondayId) {
        this.mondayId = mondayId;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public String gettId() {
        return tId;
    }

    public void settId(String tId) {
        this.tId = tId;
    }

    @Override
    public String toString() {
        return "TPlans{" + "tName=" + tName + ", uId=" + uId + ", privateplan=" + privateplan + ", mondayId=" + mondayId + '}';
    }

}
