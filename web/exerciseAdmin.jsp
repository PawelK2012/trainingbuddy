<%-- 
    Document   : exercise
    Created on : 28-Dec-2013, 21:03:07
    Author     : kaimp_000
--%>
<%@page import="TrainingBuddy.Exercises"%>
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

        <title>#Training Buddy - exercise page admin</title>

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

        <script src="js/scrollbar.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    </head>

    <body>
                <%-- content inside main container --%> 
        <div class="row">    
            <div class="col-md-12 topHeader gap15"><h1 class="left trainWith">Train with</h1> <h1 class="right trainingBuddyH">#Training<span>Buddy</span></h1></div>
            <div class="col-md-12 gap10"></div>
            <iframe width="100%" height="580" src="${Exercises.eVideo}" frameborder="0" allowfullscreen></iframe>
            <div class="col-md-12 grey">

                <h1> ${Exercises.eName}</h1> 
                <ul class="nav nav-pills">
                    <li>
                        <span class="badge pull-right">${Exercises.level}</span>
                        Level
                    </li>
                    <li>
                        <span class="badge pull-right">${Exercises.type}</span>
                        Type
                    </li>
                    <li>
                        <span class="badge pull-right">${Exercises.mainMuscle}</span>
                        Main Muscle Worked
                    </li>
                     <li>
                        <span class="badge pull-right">${Exercises.eDate}</span>
                        Date created
                    </li>
                </ul>
                <div class="col-md-12 gap10"></div>
                <article>
                    <p class="paddingTop5">
                    <h3>Guide</h3>                  
                    <p> <img src="images/uploads/exerciseImg/${Exercises.eImg}" alt="exercise image" width="150" height="200"  class="pull-right marginLeft10 marginBottom10"/>
                        ${Exercises.eDesc}</p>

                  
                    <a href="admin.jsp" class="btn btn-primary">Admin panel</a>
                </article>
            </div>

            <div class="col-md-12 grey paddingTop45 sliderHeading"></div>

            <div class="col-md-12 grey">
                <%@ include file="include/scrollPaneExe.jsp" %>
            </div>

           
            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>
