<%-- 
    Document   : community-gym
    Created on : 27-Dec-2013, 16:17:53
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

        <title>#Training Buddy - community gym</title>

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
            <div class="col-md-12 topHeader gap15"><h1 class="left trainWith">Train with</h1> <h1 class="right trainingBuddyH">#Community<span>Gym</span></h1></div>
            <div class="col-md-12 gap10"></div>


            <c:forEach var="Users"  items="${userCollection}">
                <div onclick="location.href = 'TplanServlet?option=listOfAllUsersAndTplansById&ids=${Users.uId}';" class="col-md-2 white pullUp cursor">
                    <center>
                    <img src="images/uploads/uProfileImg/${Users.uImg}" width="140" height="140" alt="profile image" class="img-circle"/>      
                    <h2 class="uppercase"><strong> ${Users.uName}</strong></h2>   
                    <button type="button" class="btn btn-success marginTop5">View profile</button>
                    </center>
                </div>
            </c:forEach>




            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>
