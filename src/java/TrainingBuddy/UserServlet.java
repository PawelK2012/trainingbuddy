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
import java.util.Date;
import java.util.Hashtable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
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
public class UserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
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
        Users u = new Users();
        TPlans t = new TPlans();
        if (MultipartFormDataRequest.isMultipartFormData(request)) {
         
            try {
                mrequest = new MultipartFormDataRequest(request);
                option = mrequest.getParameter("option");
            } catch (UploadException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {
            option = request.getParameter("option");
        }
        System.out.println("option=" + option);

        if (option != null) {
            if (option.equalsIgnoreCase("login")) {
                String uName = request.getParameter("uName");
                String uPass = request.getParameter("uPass");

                u = u.findUserByUserNamePassword(uName, uPass);
                session.setAttribute("Users", u);


                if (u.getAdmin() != false) {
                    System.out.println("admin");
                    address = "admin.jsp";

                    Users usClass = new Users();
                    Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    session.setAttribute("id", u.getuId());
                    session.setAttribute("uName", u.getuName());
                    session.setAttribute("uImg", u.getuImg());
                    session.setAttribute("admin", u.getAdmin());

                    System.out.println("users class collection size vvv" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);
                    Users p = new Users();

                } else if (u.getuId() != null) {
                    session.setAttribute("id", u.getuId());
                    System.out.println(u.getuName());
                    System.out.println("userid " + u.getuId());
                    address = "own-user-page.jsp";

                    Users usClass = new Users();
                    Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    session.setAttribute("id", u.getuId());
                    session.setAttribute("uName", u.getuName());
                    session.setAttribute("uImg", u.getuImg());

                    System.out.println("users class collection size vvv" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);
                    Users p = new Users();

                    String uId = (String) session.getAttribute("id");

                    TPlans tpuClass = new TPlans();
                    Collection<TPlans> tpuCollection = new ArrayList();

                    tpuCollection = tpuClass.findTPlanByIdUserId(uId);
                    System.out.println("tplans1 collection size" + tpuCollection.size());
                    session.setAttribute("tpuCollection", tpuCollection);

                } else {
                    System.out.println("not found");
                    address = "invalid.jsp";
                }

            } ///////////////////
            ///logout
            ///////////////////////////////////////////////
            else if (option.equalsIgnoreCase("logout")) {
                //invalidate the session if exists
                // HttpSession session = request.getSession(false);
                System.out.println("User=" + session.getAttribute("user"));
                if (session != null) {
                    session.invalidate();
                }
                //no encoding because we have invalidated the session
                address = "login.jsp";
            } /////////////////////
            else if (option.equalsIgnoreCase("createUser")) {

                String uName = mrequest.getParameter("uName");
                String uPass = mrequest.getParameter("uPass");
                String fName = mrequest.getParameter("fName");
                String lName = mrequest.getParameter("lName");
                String uEmail = mrequest.getParameter("uEmail");
                String filename = null;

                try {
                    Hashtable files = mrequest.getFiles();
                    if ((files != null) && (!files.isEmpty())) {
                        UploadFile file = (UploadFile) files.get("uImg");
                        filename = file.getFileName();
                        if (file != null) {
                            System.out.println("Uploaded file : " + file.getFileName() + " (" + file.getFileSize() + " bytes)" + "Content Type : " + file.getContentType());
                        }
                   
                        UploadBean upBean = new UploadBean();
                        upBean.setFolderstore(contextPath + "../../web/images/uploads/uProfileImg");
                        upBean.store(mrequest, "uImg");
                    }

                } catch (IOException ex) {
                    System.out.println("error on upload " + ex);
                } catch (UploadException eee) {
                    System.out.println("error on upload " + eee);
                }

                u = new Users(uName, uPass, fName, lName, uEmail, filename);
                boolean saved = u.createUser();
                session.setAttribute("Users", u);
                System.out.println("User: " + u.getuName() + " has been created!");

                if (u.getuName() != null) {

                    Users usClass = new Users();
                    Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    session.setAttribute("id", u.getuId());
                    session.setAttribute("uName", u.getuName());
                    session.setAttribute("uImg", u.getuImg());

                    System.out.println("users class collection size vvv" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);
                    Users p = new Users();

                    System.out.println(u.getuName());
                    address = "index.jsp";

                } else {
                    System.out.println("user not created");
                    address = "invalid.jsp";
                }

            } ///////////////////////////////////////////////
            //List of all users
            //////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllUsers")) {

                Users usClass = new Users();
                Collection<Users> userCollection = new ArrayList();
                userCollection = usClass.findAllUsers();

                System.out.println("users class collection size vvv" + userCollection.size());

                session.setAttribute("userCollection", userCollection);
                Users p = new Users();
                address = "community-gym.jsp";

            } /////////////////////////////////////////////////////////////
            //List of all users by id
            ///////////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllUsersById")) {

                Users p = new Users();
                String uId = request.getParameter("ids");

                p = p.findUserById(uId);
                request.setAttribute("Users", p);

                if (p.getuId() != null) {
                    System.out.println(p.getuName());
                    address = "user-page.jsp";

                    Users usClass = new Users();
                    Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    System.out.println("users class collection size" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);
                    //ExerciseClass p = new ExerciseClass();

                } else {
                    System.out.println("instructor class not found ");
                    address = "invalid.jsp";
                }

            } //////////////////////////
            ///go to user page 
            ///////////////////////////
            else if (option.equalsIgnoreCase("goToUserPage")) {

                Users p = new Users();
                //   TPlans tp = new TPlans();

                String uId = (String) session.getAttribute("id");

                p = p.findUserById(uId);
                System.out.println("uid ses " + p.getuId());
                request.setAttribute("Users", p);

                TPlans tpuClass = new TPlans();
                Collection<TPlans> tpuCollection = new ArrayList();

                tpuCollection = tpuClass.findTPlanByIdUserId(uId);
                System.out.println("tplans1 collection size" + tpuCollection.size());
                session.setAttribute("tpuCollection", tpuCollection);
    
                if (p.getuId() != null) {
                   address = "own-user-page.jsp";

                } else {
                    System.out.println("instructor class not found ");
                    address = "invalid.jsp";
                }

            }

            ///////////////////////////
            //update user bio
            /////////////////////////////////////
            if (option.equalsIgnoreCase("updateBio")) {

                String uId = (String) session.getAttribute("id");
                u = (Users) session.getAttribute("uId");

                String uBio = request.getParameter("uBio");
                u = new Users(uId, uBio);
                u.updateBio();
                System.out.println("after update bio");

                if (uId != null) {

                    Users p = new Users();
                    TPlans tp = new TPlans();

               
                    p = p.findUserById(uId);
                    request.setAttribute("Users", p);

                    address = "own-user-page.jsp";

                } else {

                    System.out.println("class not updatees");
                    address = "invalid.jsp";
                }

            } /////////////
            //update cover img
            ////////////////////////////
            else if (option.equalsIgnoreCase("updateCoverImg")) {

                String uId = (String) session.getAttribute("id");
                u = (Users) session.getAttribute("uId");
                String classImg = null;

                try {
                    Hashtable files = mrequest.getFiles();
                    if ((files != null) && (!files.isEmpty())) {
                        UploadFile imgFile = (UploadFile) files.get("uCoverImg");
                        classImg = imgFile.getFileName();

                        if (imgFile != null) {
                            System.out.println("Uploaded user file 123 : " + imgFile.getFileName() + " (" + imgFile.getFileSize() + " bytes)" + "Content Type : " + imgFile.getContentType());
                        }
                       
                        UploadBean upBean = new UploadBean();
                        upBean.setFolderstore(contextPath + "../../web/images/uploads/userBackgroundImg");
                        upBean.store(mrequest, "uCoverImg");
                    }

                } catch (Exception ec) {
                    System.out.println("error on upload cover img " + ec);
                }

                u = new Users(classImg);
                u.updateCoverImg(uId);

                if (uId != null) {

                    Users p = new Users();
                    TPlans tp = new TPlans();

                    p = p.findUserById(uId);
                    request.setAttribute("Users", p);
                    address = "own-user-page.jsp";

                } else {
                    System.out.println("cover img not updatees");
                    address = "invalid.html";
                }

            }//////////////////////////////////////
            ///check if user logedin before create tplan
            ///////////////////////////////
            else if (option.equalsIgnoreCase("checkLoginTrainingPlan")) {

                Users p = new Users();
                //   TPlans tp = new TPlans();

                String uId = (String) session.getAttribute("id");

                p = p.findUserById(uId);
                System.out.println("uid ses " + p.getuId());
                request.setAttribute("Users", p);

                if (p.getuId() != null) {
                    address = "ctraining1.jsp";

                } else {
                    System.out.println("user must be registered ");
                    address = "login.jsp";
                }

            }//////////////////////////////////////
            ///check if user logedin before go to create tplan
            ///////////////////////////////
            else if (option.equalsIgnoreCase("checkLoginBeforeTrainingPlan")) {

                Users p = new Users();
                //   TPlans tp = new TPlans();

                String uId = (String) session.getAttribute("id");

                p = p.findUserById(uId);
                System.out.println("uid ses " + p.getuId());
                request.setAttribute("Users", p);

                if (p.getuId() != null) {
                    address = "ctraining1.jsp";

                } else {
                    System.out.println("user must be registered ");
                    address = "create-plan.jsp";
                }

            }
             ///////////////////
            /// experimental 3D model
            ///////////////////////////////////////////////
            else if (option.equalsIgnoreCase("view3DModel")) {
               
                address = "3d/model.html";
            } /////////////////////

            //////////////////////////////////////////////////////////
            RequestDispatcher dispatcher
                    = request.getRequestDispatcher(address);
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
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
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
