<%-- 
    Document   : ctreining1
    Created on : Mar 8, 2014, 3:08:25 PM
    Author     : Sir Pawel
--%>

<%@page import="TrainingBuddy.Monday"%>
<%@page import="TrainingBuddy.TPlans"%>
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

        <title>#Training Buddy - create training plan</title>

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
            <div class="col-md-12 topHeader gap15"><h1 class="left trainWith">Train with</h1> <h1 class="right trainingBuddyH">#Training<span>Buddy</span></h1></div>
        </div>
        <div class="row"> 
            <div class="col-md-12 gap10"></div>
        </div>
        <div class="row"> 
            <div class="col-md-12 grey">
                <center>
                <img src="images/uploads/uProfileImg/<%= session.getAttribute("uImg")%>" width="125" height="125" class="img-circle" alt="profile icon"/>
                <h1> <small> Congratulations </small><%= session.getAttribute("uName")%></h1>
                <h1><small>Yours training plan </small> "<%= session.getAttribute("tpName")%>"</h1>
                 <h1>Has been created! </h1>
                 <p class="uppercase"><small>Confidence comes from discipline and training.</small></p>
                  <a class="btn btn-primary marginTop5" href="ExerciseServlet?option=listOfAllExercises">Browse Trainingpedia</a>
                 <a class="btn btn-primary marginTop5" href="UserServlet?option=goToUserPage">Go back to your profile page</a>
                </center>
                
             
                



            </div>
        </div>
    

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

