/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TrainingBuddy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javazoom.upload.MultipartFormDataRequest;

/**
 *
 * @author Sir Pawel
 */
public class TplanServlet extends HttpServlet {

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
        // MultipartFormDataRequest mrequest = null;
        TPlans t = new TPlans();
        Monday m = new Monday();
        Users u = new Users();

        if (option != null) {
            ///////////////////////////////////////////////
            if (option.equalsIgnoreCase("createMonday")) {
                String title = request.getParameter("tpName");

                String g1 = request.getParameter("g1");
                String a1 = request.getParameter("a1");
                String a2 = request.getParameter("a2");
                String a3 = request.getParameter("a3");
                String a4 = request.getParameter("a4");
                String a5 = request.getParameter("a5");

                String g2 = request.getParameter("g2");
                String a6 = request.getParameter("a6");
                String a7 = request.getParameter("a7");
                String a8 = request.getParameter("a8");
                String a9 = request.getParameter("a9");
                String a10 = request.getParameter("a10");

                String g3 = request.getParameter("g3");
                String a11 = request.getParameter("a11");
                String a12 = request.getParameter("a12");
                String a13 = request.getParameter("a13");
                String a14 = request.getParameter("a14");
                String a15 = request.getParameter("a15");

                m = new Monday(g1, a1, a2, a3, a4, a5, g2, a6, a7, a8, a9, a10, g3, a11, a12, a13, a14, a15);
                boolean saved = m.createMonday();
                session.setAttribute("Monday", m);
                session.setAttribute("tpName", title);
                session.setAttribute("mondayId", m.getMondayId());
                String uId = (String) session.getAttribute("id");
                u = u.findUserById(uId);
                request.setAttribute("Users", u);

                System.out.println("Monday!!!: " + m.getMondayId() + " has been created!");

                if (m.getMondayId() != null) {
                    System.out.println("Monday idd: " + m.getMondayId());
                    address = "ctraining2.jsp";

                } else {
                    System.out.println("MONAY not created");
                    address = "invalid.jsp";
                }

            } ///////////////////////////////////////////////
            else if (option.equalsIgnoreCase("createTplan")) {

                String tName = (String) session.getAttribute("tpName");
                String uId = (String) session.getAttribute("id");
                String privateplan = request.getParameter("privateplan");
                String mondayId = (String) session.getAttribute("mondayId");

                t = new TPlans(tName, uId, privateplan, mondayId);
                boolean saved = t.createTplan();
               

                session.setAttribute("mondayId", mondayId);

                System.out.println("Monday tplan: " + t.gettName());
                System.out.println("uid: " + t.getuId());
                System.out.println("private: " + t.getPrivateplan());
                System.out.println("mondayId: " + t.getMondayId());
                if (t.getMondayId() != null) {
                    System.out.println(t.getMondayId());
                    System.out.println("Monday tplan: " + t.gettName() + " has been created");
                    address = "ctraining3.jsp";

                } else {
                    System.out.println("tplan not created");
                    address = "invalid.jsp";
                }

            } //////////////////////////////////////////////
            //all tplans admin
            /////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllTplansAdmin")) {

                TPlans tpClass = new TPlans();
                Collection<TPlans> tpCollection = new ArrayList();
                tpCollection = tpClass.findAllTPlans();

                System.out.println("tplans class collection size " + tpCollection.size());

                session.setAttribute("tpCollection", tpCollection);

                TPlans p = new TPlans();
               
                address = "allTplansAdmin.jsp";

            } //////////////////////////////
            //////////////////////////////
            /// all t plans by id admin
            ///////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("tplanById")) {
             
                Monday mo = new Monday();
                String mondayId = request.getParameter("ids");

                mo = mo.findMondayById(mondayId);
                request.setAttribute("Monday", mo);
                //session.setAttribute("Monday", m);
                System.out.println("monday id " + mo.getMondayId());
                
                if (mo.getMondayId() != null) {
                    System.out.println("MONDAY ID: "+mo.getMondayId());
                    address = "tplanAdmin.jsp";

                    Monday moClass = new Monday();
                    Collection<Monday> moCollection = new ArrayList();
                    moCollection = moClass.findAllMondays();
                    System.out.println("monday collection size" + moCollection.size());

                    session.setAttribute("moCollection", moCollection);

                } else {
                    System.out.println("exercises class not found servlet");
                    address = "invalid.jsp";
                }

            }
             else if (option.equalsIgnoreCase("tplanByIdOwnUserPage")) {
             
                Monday mo = new Monday();
                String mondayId = request.getParameter("ids");

                mo = mo.findMondayById(mondayId);
                request.setAttribute("Monday", mo);
                //session.setAttribute("Monday", m);
                System.out.println("monday id " + mo.getMondayId());
                
                if (mo.getMondayId() != null) {
                    System.out.println("MONDAY ID: "+mo.getMondayId());
                    address = "own-user-page-exercise.jsp";

                    Monday moClass = new Monday();
                    Collection<Monday> moCollection = new ArrayList();
                    moCollection = moClass.findAllMondays();
                    System.out.println("monday collection size" + moCollection.size());

                    session.setAttribute("moCollection", moCollection);

                } else {
                    System.out.println("exercises class not found servlet");
                    address = "invalid.jsp";
                }

            }//////this 
             ///////////////////////////////////////////////
            //List of all users & tp lan -community page
            //////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllUsersAndTplans")) {

                Users usClass = new Users();
                Collection<Users> userCollection = new ArrayList();
                userCollection = usClass.findAllUsers();

                System.out.println("users class collection size vvv" + userCollection.size());

                session.setAttribute("userCollection", userCollection);
                Users p = new Users();
                
                address = "community-gym1.jsp";

            }
            /////////////////////////////////////////////////////////////
            //List of all users and tplans by id -community page 1
            ///////////////////////////////////////////////////////////
            else if (option.equalsIgnoreCase("listOfAllUsersAndTplansById")) {

                Users p = new Users();
                TPlans tp=new TPlans();
                String uId = request.getParameter("ids");

                p = p.findUserById(uId);
                request.setAttribute("Users", p);
              

                if (p.getuId() != null) {
                    System.out.println(p.getuName());
                    address = "community-gym2.jsp";

                    Users usClass = new Users();
                    Collection<Users> userCollection = new ArrayList();
                    userCollection = usClass.findAllUsers();
                    System.out.println("users class collection size" + userCollection.size());

                    session.setAttribute("userCollection", userCollection);
                 
                    
                    TPlans tpuClass=new TPlans();
                    Collection<TPlans>tpuCollection=new ArrayList();

                    tpuCollection=tpuClass.findTPlanByIdUserIdPublic(uId);
                    System.out.println("tplans1 collection size" + tpuCollection.size());
                    session.setAttribute("tpuCollection", tpuCollection);

                } else {
                    System.out.println("instructor class not found ");
                    address = "invalid.jsp";
                }

            }
            //////////
            /// display monday -community page 2
            ///////////////////////////
             else if (option.equalsIgnoreCase("tplanByMondayId")) {
             
                Monday mo = new Monday();
                String mondayId = request.getParameter("idm");

                mo = mo.findMondayById(mondayId);
                request.setAttribute("Monday", mo);
                //session.setAttribute("Monday", m);
                System.out.println("monday id " + mo.getMondayId());
                
                if (mo.getMondayId() != null) {
                    System.out.println("MONDAY ID: "+mo.getMondayId());
                    address = "community-gym3.jsp";

                    Monday moClass = new Monday();
                    Collection<Monday> moCollection = new ArrayList();
                    moCollection = moClass.findAllMondays();
                    System.out.println("monday collection size" + moCollection.size());

                    session.setAttribute("moCollection", moCollection);

                } else {
                    System.out.println("exercises class not found servlet");
                    address = "invalid.jsp";
                }

            }
            /////////////////////////////////////////////////////
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
            Logger.getLogger(TplanServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(TplanServlet.class.getName()).log(Level.SEVERE, null, ex);
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
