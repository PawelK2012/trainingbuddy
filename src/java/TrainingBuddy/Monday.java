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
public class Monday {

    private String mondayId;
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

    public Monday() {
    }

    public Monday(String mondayId, String g1, String a1, String a2, String a3, String a4, String a5, String g2, String a6, String a7, String a8, String a9, String a10, String g3, String a11, String a12, String a13, String a14, String a15) {
        this.mondayId = mondayId;
        this.g1 = g1;
        this.a1 = a1;
        this.a2 = a2;
        this.a3 = a3;
        this.a4 = a4;
        this.a5 = a5;
        this.g2 = g2;
        this.a6 = a6;
        this.a7 = a7;
        this.a8 = a8;
        this.a9 = a9;
        this.a10 = a10;
        this.g3 = g3;
        this.a11 = a11;
        this.a12 = a12;
        this.a13 = a13;
        this.a14 = a14;
        this.a15 = a15;
    }

    public Monday(String g1, String a1, String a2, String a3, String a4, String a5, String g2, String a6, String a7, String a8, String a9, String a10, String g3, String a11, String a12, String a13, String a14, String a15) {
        this.g1 = g1;
        this.a1 = a1;
        this.a2 = a2;
        this.a3 = a3;
        this.a4 = a4;
        this.a5 = a5;
        this.g2 = g2;
        this.a6 = a6;
        this.a7 = a7;
        this.a8 = a8;
        this.a9 = a9;
        this.a10 = a10;
        this.g3 = g3;
        this.a11 = a11;
        this.a12 = a12;
        this.a13 = a13;
        this.a14 = a14;
        this.a15 = a15;
    }

    public boolean createMonday() throws ClassNotFoundException {
        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String template = "INSERT INTO monday(g1, a1, a2, a3, a4, a5,g2,a6,a7,a8,a9,a10,g3,a11,a12,a13,a14,a15) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement inserter = connection.prepareStatement(template);

            inserter.setString(1, this.g1);
            inserter.setString(2, this.a1);
            inserter.setString(3, this.a2);
            inserter.setString(4, this.a3);
            inserter.setString(5, this.a4);
            inserter.setString(6, this.a5);
            inserter.setString(7, this.g2);
            inserter.setString(8, this.a6);
            inserter.setString(9, this.a7);
            inserter.setString(10, this.a8);
            inserter.setString(11, this.a9);
            inserter.setString(12, this.a10);
            inserter.setString(13, this.g3);
            inserter.setString(14, this.a11);
            inserter.setString(15, this.a12);
            inserter.setString(16, this.a13);
            inserter.setString(17, this.a14);
            inserter.setString(18, this.a15);
            inserter.executeUpdate();

            //ResultSet rs = statement.executeQuery("select* from monday");
            ResultSet rs = statement.executeQuery("select max(mondayId) from  monday");
            while (rs.next()) {
                System.out.println("max row " + rs.getString(1) + getA1());
                this.mondayId = rs.getString(1);
            }

            saved = true;
            inserter.close();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(Monday.class.getName()).log(Level.SEVERE, null, ex);
        }
        return saved;
    }
                public Collection<Monday> findAllMondays() {
        Collection<Monday> moClass = new ArrayList<Monday>();
        try {
            System.out.println("find all mondays");
            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "Select * from monday ORDER BY  `mondayId` DESC";
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                System.out.println("found id " + rs.getString("mondayId"));
                Monday mo = new Monday(rs.getString("mondayId"), rs.getString("g1"), rs.getString("a1"),
                        rs.getString("a2"), rs.getString("a3"), rs.getString("a4"), rs.getString("a5"),
                        rs.getString("g2"), rs.getString("a6"), rs.getString("a7"), rs.getString("a8"),
                        rs.getString("a9"), rs.getString("a10"), rs.getString("g3"), rs.getString("a11"), 
                        rs.getString("a12"), rs.getString("a13"), rs.getString("a14"), rs.getString("a15"));
                moClass.add(mo);
            }

            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        } catch (SQLException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }

        return moClass;

      }

    public Monday findMondayById(String mondayId) throws ClassNotFoundException {

        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM monday where mondayId='" + mondayId + "'";

            System.out.println(query);

            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {

                this.mondayId = resultSet.getString("mondayId");
                this.g1 = resultSet.getString("g1");
                this.a1 = resultSet.getString("a1");
                this.a2 = resultSet.getString("a2");
                this.a3 = resultSet.getString("a3");
                this.a4 = resultSet.getString("a4");
                this.a5 = resultSet.getString("a5");

                this.g2 = resultSet.getString("g2");
                this.a6 = resultSet.getString("a6");
                this.a7 = resultSet.getString("a7");
                this.a8 = resultSet.getString("a8");
                this.a9 = resultSet.getString("a9");
                this.a10 = resultSet.getString("a10");

                this.g3 = resultSet.getString("g3");
                this.a11 = resultSet.getString("a11");
                this.a12 = resultSet.getString("a12");
                this.a13 = resultSet.getString("a13");
                this.a14 = resultSet.getString("a14");
                this.a15 = resultSet.getString("a15");
                System.out.println("monday id " + getMondayId());

            }

            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(Monday.class.getName()).log(Level.SEVERE, null, ex);
        }

        return this;
    }

    public String getMondayId() {
        return mondayId;
    }

    public void setMondayId(String mondayId) {
        this.mondayId = mondayId;
    }

    public String getG1() {
        return g1;
    }

    public void setG1(String g1) {
        this.g1 = g1;
    }

    public String getA1() {
        return a1;
    }

    public void setA1(String a1) {
        this.a1 = a1;
    }

    public String getA2() {
        return a2;
    }

    public void setA2(String a2) {
        this.a2 = a2;
    }

    public String getA3() {
        return a3;
    }

    public void setA3(String a3) {
        this.a3 = a3;
    }

    public String getA4() {
        return a4;
    }

    public void setA4(String a4) {
        this.a4 = a4;
    }

    public String getA5() {
        return a5;
    }

    public void setA5(String a5) {
        this.a5 = a5;
    }

    public String getG2() {
        return g2;
    }

    public void setG2(String g2) {
        this.g2 = g2;
    }

    public String getA6() {
        return a6;
    }

    public void setA6(String a6) {
        this.a6 = a6;
    }

    public String getA7() {
        return a7;
    }

    public void setA7(String a7) {
        this.a7 = a7;
    }

    public String getA8() {
        return a8;
    }

    public void setA8(String a8) {
        this.a8 = a8;
    }

    public String getA9() {
        return a9;
    }

    public void setA9(String a9) {
        this.a9 = a9;
    }

    public String getA10() {
        return a10;
    }

    public void setA10(String a10) {
        this.a10 = a10;
    }

    public String getG3() {
        return g3;
    }

    public void setG3(String g3) {
        this.g3 = g3;
    }

    public String getA11() {
        return a11;
    }

    public void setA11(String a11) {
        this.a11 = a11;
    }

    public String getA12() {
        return a12;
    }

    public void setA12(String a12) {
        this.a12 = a12;
    }

    public String getA13() {
        return a13;
    }

    public void setA13(String a13) {
        this.a13 = a13;
    }

    public String getA14() {
        return a14;
    }

    public void setA14(String a14) {
        this.a14 = a14;
    }

    public String getA15() {
        return a15;
    }

    public void setA15(String a15) {
        this.a15 = a15;
    }

    @Override
    public String toString() {
        return "Monday{" + "g1=" + g1 + ", a1=" + a1 + ", a2=" + a2 + ", a3=" + a3 + ", a4=" + a4 + ", a5=" + a5 + ", g2=" + g2 + ", a6=" + a6 + ", a7=" + a7 + ", a8=" + a8 + ", a9=" + a9 + ", a10=" + a10 + ", g3=" + g3 + ", a11=" + a11 + ", a12=" + a12 + ", a13=" + a13 + ", a14=" + a14 + ", a15=" + a15 + '}';
    }

}
