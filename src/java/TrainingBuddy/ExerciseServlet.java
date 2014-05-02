/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TrainingBuddy;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadException;
import javazoom.upload.UploadFile;

/**
 *
 * @author Sir Pawel
 */
public class ExerciseServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {

        String address = null;
        String option = request.getParameter("option");

        HttpSession session = request.getSession(true);

        String contextPath = (String) session.getAttribute("contextPath");

        ServletContext servletContext = getServletContext();
        contextPath = servletContext.getRealPath(File.separator);
        session.setAttribute("contextPath", contextPath);

        String test = contextPath + "images\\uploads\\";
        session.setAttribute("imageLocation", test);

        System.out.println("test " + test);

        MultipartFormDataRequest mrequest = null;
        Exercises i = new Exercises();

        if (MultipartFormDataRequest.isMultipartFormData(request)) {

            try {
                mrequest = new MultipartFormDataRequest(request);
                option = mrequest.getParameter("option");
            } catch (UploadException ex) {
                Logger.getLogger(ExerciseServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {
            option = request.getParameter("option");
        }
        System.out.println("option=" + option);

        if (option != null) {
            if (option.equalsIgnoreCase("createExercise")) {

                String eName = mrequest.getParameter("eName");
                String filename = null;
                String eDesc = mrequest.getParameter("eDesc");
                String eVideo = mrequest.getParameter("eVideo");
                String level = mrequest.getParameter("level");
                String type = mrequest.getParameter("type");
                String mainMuscle = mrequest.getParameter("mainMuscle");

                try {
                    Hashtable files = mrequest.getFiles();
                    if ((files != null) && (!files.isEmpty())) {
                        UploadFile file = (UploadFile) files.get("eImg");
                        filename = file.getFileName();
                        if (file != null) {
                            System.out.println("Uploaded file : " + file.getFileName() + " (" + file.getFileSize() + " bytes)" + "Content Type : " + file.getContentType());
                        }

                        UploadBean upBean = new UploadBean();
                        upBean.setFolderstore(contextPath + "../../web/images/uploads/exerciseImg");
                        upBean.store(mrequest, "eImg");
                    }

                } catch (IOException ex) {
                    System.out.println("error on upload " + ex);
                } catch (UploadException eee) {
                    System.out.println("error on upload " + eee);
                }

                i = new Exercises(eName, filename, eDesc, eVideo, level, type, mainMuscle);
                boolean saved = i.createExercise();
                session.setAttribute("Exercises", i);

                System.out.println("Exercise: " + i.geteName() + " has been created!");

                if (i.geteName() != null) {
                    System.out.println(i.geteName());
                    address = "exerciseAdmin.jsp";

                } else {
                    System.out.println("instructor not created");
                    address = "invalid.jsp";
                }

            } //////////////////////////////////////////////
            //all exercises admin
            /////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllExercisesAdmin")) {

                Exercises exClass = new Exercises();
                Collection<Exercises> exCollection = new ArrayList();
                exCollection = exClass.findAllExercises();

                System.out.println("exercises class collection size vvv" + exCollection.size());

                session.setAttribute("exCollection", exCollection);
                Exercises p = new Exercises();
                address = "allExercisesAdmin.jsp";

            } //////////////////////////////
            /// all exercises by id admin
            ///////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllExercisesById")) {

                Exercises p = new Exercises();
                String eId = request.getParameter("id");

                p = p.findExerciseById(eId);
                request.setAttribute("Exercises", p);

                if (p.geteId() != null) {
                    System.out.println(p.geteName());
                    address = "/WEB-INF/exerciseAdmin.jsp";

                    Exercises exClass = new Exercises();
                    Collection<Exercises> exCollection = new ArrayList();
                    exCollection = exClass.findAllExercises();
                    System.out.println("exexrcises class collection size" + exCollection.size());

                    session.setAttribute("exCollection", exCollection);

                } else {
                    System.out.println("exercises class not found ");
                    address = "invalid.jsp";
                }

            } //////////////////////////////////////////////
            //all exercises 
            /////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllExercises")) {

                Exercises exClass = new Exercises();
                Collection<Exercises> exCollection = new ArrayList();
                exCollection = exClass.findAllExercisesBiceps();

                System.out.println("exercises class collection size vvv" + exCollection.size());

                session.setAttribute("exCollection", exCollection);
                Exercises p = new Exercises();
                address = "trainingpedia.jsp";

            } //////////////////////////////
            /// all exercises by id user
            ///////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllExercisesByIdUser")) {

                Exercises p = new Exercises();
                String eId = request.getParameter("id");

                p = p.findExerciseById(eId);
                request.setAttribute("Exercises", p);

                if (p.geteId() != null) {
                    System.out.println(p.geteName());
                    address = "/WEB-INF/exercise.jsp";

                    Exercises exClass = new Exercises();
                    Collection<Exercises> exCollection = new ArrayList();
                    exCollection = exClass.findAllExercises();
                    System.out.println("exexrcises class collection size" + exCollection.size());

                    session.setAttribute("exCollection", exCollection);

                } else {
                    System.out.println("exercises class not found ");
                    address = "invalid.jsp";
                }

            } ///////////////////////////////
            ///////edit exercise
            ////////////////////////////////////////
            else if (option.equalsIgnoreCase("editExercise")) {
                Exercises p = new Exercises();
                String eId = request.getParameter("id");

                p = p.findExerciseById(eId);
                request.setAttribute("Exercises", p);

                if (p.geteId() != null) {
                    System.out.println(p.geteName());
                    address = "/WEB-INF/updateExercise.jsp";

                    Exercises exClass = new Exercises();
                    Collection<Exercises> exCollection = new ArrayList();
                    exCollection = exClass.findAllExercises();
                    System.out.println("exercise class collection size test" + exCollection.size());

                    session.setAttribute("exCollection", exCollection);
                    //ExerciseClass p = new ExerciseClass();

                } else {
                    System.out.println("instructor class not found ");
                    address = "invalid.jsp";
                }

            }
            ////////////////////////////////
            /////update exercise
            ////////////////////////////////////

            if (option.equalsIgnoreCase("updateExercise")) {

                String eId = (String) session.getAttribute("eId");
                //i = (Exercises) session.getAttribute("eName");

                String eName = mrequest.getParameter("eName");
                String classImg = null;
                String eDesc = mrequest.getParameter("eDesc");
                String eVideo = mrequest.getParameter("eVideo");
                String level = mrequest.getParameter("level");
                String type = mrequest.getParameter("type");
                String mainMuscle = mrequest.getParameter("mainMuscle");

                try {
                    Hashtable files = mrequest.getFiles();
                    if ((files != null) && (!files.isEmpty())) {
                        UploadFile imgFile = (UploadFile) files.get("eImg");
                        classImg = imgFile.getFileName();

                        if (imgFile != null) {
                            System.out.println("Uploaded pdf file 123 : " + imgFile.getFileName() + " (" + imgFile.getFileSize() + " bytes)" + "Content Type : " + imgFile.getContentType());
                        }

                        UploadBean upBean = new UploadBean();
                        upBean.setFolderstore(contextPath + "../../web/images/uploads/exerciseImg");
                        upBean.store(mrequest, "eImg");
                    }

                } catch (Exception ec) {
                    System.out.println("error on upload " + ec);
                }

                i = new Exercises(eName, classImg, eDesc, eVideo, level, type, mainMuscle);
                i.updateExercise(eId);

                if (eId != null) {
                    Exercises exClass = new Exercises();
                    Collection<Exercises> exCollection = new ArrayList();
                    exCollection = exClass.findAllExercises();
                    System.out.println("exexrcises class collection size up" + exCollection.size());

                    session.setAttribute("exCollection", exCollection);

                    System.out.println(i.geteName());
                    address = "allExercisesAdmin.jsp";

                } else {
                    System.out.println("class not updatees");
                    address = "invalid.jsp";
                }

            } ////////////////////
            ////delete exercise
            ///////////////////////////////////////////
            else if (option.equalsIgnoreCase("deleteExercise")) {

                Exercises p = new Exercises();
                String eId = request.getParameter("id");
                p.deleteExercise(eId);

                if (eId != null) {
                    Exercises exClass = new Exercises();
                    Collection<Exercises> exCollection = new ArrayList();
                    exCollection = exClass.findAllExercises();
                    System.out.println("exexrcises class collection size" + exCollection.size());

                    session.setAttribute("exCollection", exCollection);

                    address = "allExercisesAdmin.jsp";

                } else {
                    System.out.println("class not deleted");
                    address = "invalid.jsp";
                }
            } //////////////////////////////////////////////
            //all abductors
            /////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("allAbs")) {

                Exercises exClass = new Exercises();
                Collection<Exercises> exCollection = new ArrayList();
                exCollection = exClass.findAllExercisesAbs();

                System.out.println("exercises class collection size vvv" + exCollection.size());

                session.setAttribute("exCollection", exCollection);
                Exercises p = new Exercises();
                address = "trainingpedia.jsp";

            }

            ///////////////////////////////////////////////////////////////////////////////  
            RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ExerciseServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ExerciseServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
