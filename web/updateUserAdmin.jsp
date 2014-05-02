<%-- 
    Document   : template
    Created on : 27-Dec-2013, 21:37:18
    Author     : kaimp_000
--%>
<%@page import="TrainingBuddy.Users"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

        <title>#Training Buddy - Create User Admin</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/animations.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    
  <body>
      <%@ include file="include/nav.jsp" %> 

<%-- content inside main container --%> 
            
             <div class="row">
                          <% String s = request.getParameter("id");
                Users p = new Users();
                p = p.findUserById(s);

                int id = new Integer(s).intValue();
                session.setAttribute("uId", s);

            %>
                 <div class="col-md-12 gap10"></div>
             </div>
             <div class="row"> 
                 <%@ include file="../include/adminSidebar.jsp" %>    
         
                 <div class="col-md-9 col-sm-9 paddingTop10 grey">
                   <h1>Update user ${Users.uName}</h1>
                               <form class="form-horizontal" role="form" id="form2" name="form2" method="post" enctype="multipart/form-data" action="AdminServlet">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="uName" id="uName" placeholder=" ${Users.uName}"
                                                   data-validation="custom" data-validation-regexp="^([a-zA-Z]+)$"
                                                   data-validation-error-msg="The firstname has to be an string value from a-z">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" name="uPass" id="uPass" placeholder="***"
                                                   data-validation="length" data-validation-length="min3">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">First name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="fName" id="fName" placeholder=" ${Users.fName}"
                                                   data-validation="custom" data-validation-regexp="^([a-zA-Z]+)$"
                                                   data-validation-error-msg="The firstname has to be an string value from a-z">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Lat name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="lName" id="lName" placeholder=" ${Users.lName}"
                                                   data-validation="custom" data-validation-regexp="^([a-zA-Z]+)$"
                                                   data-validation-error-msg="The firstname has to be an string value from a-z">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" name="uEmail" id="uEmail"  placeholder=" ${Users.uEmail}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Profile image</label>
                                        <div class="col-sm-10">
                                            <input type="file" id="uImg" name="uImg">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="hidden" name="option" value="updateUserAdmin"/>
                                             <input type="submit" name="button" id="button" value="Update"  class="btn btn-default"/>
                                           
                                        </div>
                                    </div>
                                </form>
              
                 </div>
                  
                <div class="col-md-12 gap10"></div>
             </div>
            
  <%-- end main container --%>           
  <%@ include file="include/footer.jsp" %>

