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
public class AdminServlet extends HttpServlet {

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
         Users u = new Users();
            if (MultipartFormDataRequest.isMultipartFormData(request)) {
            // Uses MultipartFormDataRequest to parse the HTTP request.

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
         ///////////////////////////////////////////////
     if (option.equalsIgnoreCase("createUserAdmin")) {

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
                        // Uses the bean now to store specified by jsp:setProperty at the top.
                        UploadBean upBean = new UploadBean();
                        upBean.setFolderstore(contextPath + "../../web/images/uploads/uProfileImg");
                        upBean.store(mrequest, "uImg");
                    }

                } catch (IOException ex) {
                    System.out.println("error on upload " + ex);
                } catch (UploadException eee) {
                    System.out.println("error on upload " + eee);
                }

                u = new Users(uName, uPass, fName, lName,uEmail, filename);
                boolean saved = u.createUser();
                session.setAttribute("Users", u);

                System.out.println("User: " + u.getuName()+ " has been created!");

                if (u.getuName()!= null) {
                    System.out.println(u.getuName());
                    address = "userSucess.jsp";

                } else {
                    System.out.println("user not created");
                    address = "invalid.jsp";
                }

            }
         ///////////////////////////////////////////////
            //List of all users admin
            //////////////////////////////////////////////////////
             else if (option.equalsIgnoreCase("listOfAllUsersAdmin")) {

                Users usClass = new Users();
                Collection<Users> userCollection = new ArrayList();
                userCollection = usClass.findAllUsers();

                System.out.println("users class collection size size " + userCollection.size());

                session.setAttribute("userCollection", userCollection);
                Users p = new Users();
                address = "allUsersAdmin.jsp";

            }
                 /////////////////////////////////////////////////////////////
            //List of all users by id
            ///////////////////////////////////////////////////////////
             else if (option.equalsIgnoreCase("listOfAllUsersByIdAdmin")) {

                Users p = new Users();
                String uId = request.getParameter("id");

                p = p.findUserById(uId);
                request.setAttribute("Users", p);

                if (p.getuId()!= null) {
                    System.out.println(p.getuName());
                    address = "userAdmin.jsp";

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

            }
             ////////////////////
            ////delete exercise
            ///////////////////////////////////////////
            else if (option.equalsIgnoreCase("deleteUser")) {

                Users p = new Users();
                String uId = request.getParameter("id");
                p.deleteUser(uId);

                if (uId != null) {
                     Users usClass = new Users();
                Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    System.out.println("users class collection size" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);

                    address = "allUsersAdmin.jsp";

                } else {
                    System.out.println("class not deleted");
                    address = "invalid.jsp";
                }
            }
     
      /////////////////////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("editUser")) {
                Users p = new Users();
                String uId = request.getParameter("id");

                p = p.findUserById(uId);
                request.setAttribute("Users", p);

                if (p.getuId()!= null) {
                    System.out.println(p.getuName());
                    address = "updateUserAdmin.jsp";

                      Users usClass = new Users();
                Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    System.out.println("users class collection size" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);

                } else {
                    System.out.println("user class not found ");
                    address = "invalid.jsp";
                }

            }
        ////////////////////////////////////////////////////////////////////////////////////////////
            if (option.equalsIgnoreCase("updateUserAdmin")) {

                String uId = (String) session.getAttribute("uId");
                u = (Users) session.getAttribute("uName");
                String uName = mrequest.getParameter("uName");
                String uPass = mrequest.getParameter("uPass");
                String fName = mrequest.getParameter("fName");
                String lName = mrequest.getParameter("lName");
                String uEmail = mrequest.getParameter("uEmail");
                String classImg = null;

                try {
                    Hashtable files = mrequest.getFiles();
                    if ((files != null) && (!files.isEmpty())) {
                        UploadFile imgFile = (UploadFile) files.get("uImg");
                        classImg = imgFile.getFileName();

                        if (imgFile != null) {
                            System.out.println("Uploaded user file 123 : " + imgFile.getFileName() + " (" + imgFile.getFileSize() + " bytes)" + "Content Type : " + imgFile.getContentType());
                        }
                        // Uses the bean now to store specified by jsp:setProperty at the top.
                        UploadBean upBean = new UploadBean();
                        upBean.setFolderstore(contextPath + "../../web/images/uploads/uProfileImg");

                        upBean.store(mrequest, "uImg");
                    }

                } catch (Exception ec) {
                    System.out.println("error on upload " + ec);
                }

                u = new Users(uId, uName, uPass, fName, lName, uEmail, classImg);
                u.updateUser();

                if (uId != null) {
                     Users usClass = new Users();
                Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    System.out.println("user class collection size" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);

                    System.out.println(u.getuName());
                    address = "allUsersAdmin.jsp";

                } else {
                    System.out.println("user not updatees");
                    address = "index.html";
                }

            }
        
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
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
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
