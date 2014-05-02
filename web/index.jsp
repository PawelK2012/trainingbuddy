<%-- 
    Document   : index
    Created on : 27-Dec-2013, 15:59:29
    Author     : kaimp_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

        <title>#Training Buddy - you mate for the gym!</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/animations.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/fav.icon">
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
            <div class="col-md-12 gap10"></div>
        </div>

        <div class="row">          
            <div id="homeT1" onclick="location.href='UserServlet?option=checkLoginBeforeTrainingPlan';" class="col-md-6 height pullUp"></div>
            <div id="homeT2" onclick="location.href='TplanServlet?option=listOfAllUsersAndTplans';" class="col-md-3 height marginLeft10 pullDown"></div>
            <div id="homeT3" onclick="location.href='ExerciseServlet?option=listOfAllExercises';" class="col-md-3 height marginLeft10 pullUp"></div>
        </div>


        <div class="row"> 
            <div class="col-md-12 gap10"></div>
        </div>
        <div class="row"> 
            <div id="homeT4" onclick="location.href='login.jsp';" class="col-md-3 height pullDown"></div>
            <div id="homeT5" onclick="location.href='blog.jsp';" class="col-md-3 height marginLeft10 pullUp"></div>
            <div id="homeT6" onclick="location.href='https://www.youtube.com/channel/UCTY_O8qn6vsG2ESSyT12QhQ';" class="col-md-6 height marginLeft10 pullDown"></div>
        </div>
        <div class="col-md-12 gap10"></div>
        </div>
    <%-- end main container --%>           
    <%@ include file="include/footer.jsp" %>
    
    
