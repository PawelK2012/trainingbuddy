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
public class Exercises {
   
    private String eId;
    
    private String eName;
    
    private String eImg;
    
    private String eDesc;
    
    private String eVideo;
    
    private String eDate;
    
    private String level;
    private String type;
    private String mainMuscle;
    

    public Exercises() {
    }

    public Exercises(String eId, String eName, String eImg, String eDesc, String eVideo, String eDate, String level, String type, String mainMuscle) {
        this.eId = eId;
        this.eName = eName;
        this.eImg = eImg;
        this.eDesc = eDesc;
        this.eVideo = eVideo;
        this.eDate = eDate;
        this.level = level;
        this.type = type;
        this.mainMuscle = mainMuscle;
    }

    public Exercises(String eName, String eImg, String eDesc, String eVideo, String eDate, String level, String type, String mainMuscle) {
        this.eName = eName;
        this.eImg = eImg;
        this.eDesc = eDesc;
        this.eVideo = eVideo;
        this.eDate = eDate;
        this.level = level;
        this.type = type;
        this.mainMuscle = mainMuscle;
    }

    public Exercises(String eName, String eImg, String eDesc, String eVideo, String level, String type, String mainMuscle) {
        this.eName = eName;
        this.eImg = eImg;
        this.eDesc = eDesc;
        this.eVideo = eVideo;
        this.level = level;
        this.type = type;
        this.mainMuscle = mainMuscle;
    }


    
    public boolean createExercise() throws ClassNotFoundException {
        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String template = "INSERT INTO EXERCISE(eName, eImg, eDesc, eVideo, level, type, mainMuscle) VALUES (?,?,?,?,?,?,?)";

            PreparedStatement inserter = connection.prepareStatement(template);

            inserter.setString(1, this.eName);
            inserter.setString(2, this.eImg);
            inserter.setString(3, this.eDesc);
            inserter.setString(4, this.eVideo);
            inserter.setString(5, this.level);
            inserter.setString(6, this.type);
            inserter.setString(7, this.mainMuscle);
            inserter.executeUpdate();

            ResultSet rs = statement.executeQuery("select max(eId) from  exercise");
            while (rs.next()) {
                System.out.println("max row " + rs.getString(1) + geteName());
                this.eId = rs.getString(1);
            }

            saved = true;
            inserter.close();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
        }
        return saved;
    }
    
      public Collection<Exercises> findAllExercises() {
        Collection<Exercises> exClass = new ArrayList<Exercises>();
        try {
            System.out.println("find all exercises");
            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "Select * from exercise ORDER BY  `eId` DESC";
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                System.out.println("found id " + rs.getString("eId"));
                Exercises e = new Exercises(rs.getString("eId"), rs.getString("eName"), rs.getString("eImg"),
                        rs.getString("eDesc"), rs.getString("eVideo"), rs.getString("eDate"), rs.getString("level"),
                        rs.getString("type"), rs.getString("mainMuscle"));
                exClass.add(e);
            }

            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        } catch (SQLException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }

        return exClass;

      }
           public Collection<Exercises> findAllExercisesBiceps() {
        Collection<Exercises> exClass = new ArrayList<Exercises>();
        try {
            System.out.println("find all exercises");
            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "Select * from exercise WHERE mainMuscle = 'biceps' ORDER BY  `eId` DESC";
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                System.out.println("found id " + rs.getString("eId"));
                Exercises e = new Exercises(rs.getString("eId"), rs.getString("eName"), rs.getString("eImg"),
                        rs.getString("eDesc"), rs.getString("eVideo"), rs.getString("eDate"), rs.getString("level"),
                        rs.getString("type"), rs.getString("mainMuscle"));
                exClass.add(e);
            }

            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        } catch (SQLException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }

        return exClass;

      }
           
                 public Collection<Exercises> findAllExercisesAbs() {
        Collection<Exercises> exClass = new ArrayList<Exercises>();
        try {
            System.out.println("find all exercises");
            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "Select * from exercise WHERE mainMuscle = 'abductors' ORDER BY  `eId` DESC";
            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                System.out.println("found id " + rs.getString("eId"));
                Exercises e = new Exercises(rs.getString("eId"), rs.getString("eName"), rs.getString("eImg"),
                        rs.getString("eDesc"), rs.getString("eVideo"), rs.getString("eDate"), rs.getString("level"),
                        rs.getString("type"), rs.getString("mainMuscle"));
                exClass.add(e);
            }

            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        } catch (SQLException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }

        return exClass;

      }
          public Exercises findExerciseById(String eId) throws ClassNotFoundException {

        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM exercise where eId='" + eId + "'";

            System.out.println(query);

            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                this.eId = resultSet.getString("eId");
                this.eName = resultSet.getString("eName");
                this.eImg = resultSet.getString("eImg");
                this.eDesc = resultSet.getString("eDesc");
                this.eVideo = resultSet.getString("eVideo");
                this.eDate = resultSet.getString("eDate");
                this.level = resultSet.getString("level");
                this.type = resultSet.getString("type");
                this.mainMuscle = resultSet.getString("mainMuscle");

            }

            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
        }

        return this;
    }
  public boolean deleteExercise(String eId) throws ClassNotFoundException {
        boolean saved = false;
        Connection c = MyDB.getConnection();
        if (c != null) {
            try {
                Statement s = c.createStatement();
                String query = "delete from exercise where eId=" + eId;  

                System.out.println(query);
                s.executeUpdate(query);
                saved = true;
            } catch (SQLException ex) {
                Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println(ex);
            }

        }

        return saved;
    }
    public boolean updateExercise(String id) {

        boolean saved = false;
        try {

            Connection connection = MyDB.getConnection();
            Statement statement = connection.createStatement();
            String template = "UPDATE exercise SET eName=?,eImg=?,eDesc=?,eVideo=?,level=?,type=?,mainMuscle=? WHERE eId= ?";
            System.out.println("in save class " + this.eName);

            PreparedStatement inserter = connection.prepareStatement(template);
            inserter.setString(1, this.eName);
            inserter.setString(2, this.eImg);
            inserter.setString(3, this.eDesc);
            inserter.setString(4, this.eVideo);
            inserter.setString(5, this.level);
            inserter.setString(6, this.type);
            inserter.setString(7, this.mainMuscle);
            inserter.setString(8, id);

            System.out.println("inserter" + inserter.toString());
            inserter.executeUpdate();

            saved = true;
            inserter.close();
            connection.close();

        } catch (Exception ex) {
            Logger.getLogger(Exercises.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("ex" + ex);
        }
        return saved;
    }
    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMainMuscle() {
        return mainMuscle;
    }

    public void setMainMuscle(String mainMuscle) {
        this.mainMuscle = mainMuscle;
    }
    
    
    public String geteDate() {
        return eDate;
    }

    public void seteDate(String eDate) {
        this.eDate = eDate;
    }


    public String geteVideo() {
        return eVideo;
    }

    public void seteVideo(String eVideo) {
        this.eVideo = eVideo;
    }


    public String geteDesc() {
        return eDesc;
    }

    public void seteDesc(String eDesc) {
        this.eDesc = eDesc;
    }


    public String geteImg() {
        return eImg;
    }

    public void seteImg(String eImg) {
        this.eImg = eImg;
    }


    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }


    public String geteId() {
        return eId;
    }

    public void seteId(String eId) {
        this.eId = eId;
    }

    @Override
    public String toString() {
        return "Exercises{" + "eName=" + eName + ", eImg=" + eImg + ", eDesc=" + eDesc + ", eVideo=" + eVideo + ", eDate=" + eDate + ", level=" + level + ", type=" + type + ", mainMuscle=" + mainMuscle + '}';
    }

    
}
