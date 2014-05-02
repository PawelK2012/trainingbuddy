<%-- 
    Document   : template
    Created on : 27-Dec-2013, 21:37:18
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

        <title>#Training Buddy - Admin</title>

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
            <div class="col-md-12 gap10"></div>
        </div>
        <div class="row"> 
            <%@ include file="include/adminSidebar.jsp" %>    

            <div class="col-md-9 grey">
                <h1 class="text-center marginBottom10">List of all available exercises</h1>
                <c:forEach var="Exercises"  items="${exCollection}">
                    <div class="col-md-4 marginBottom10">
                        <center>
                            <img src="images/uploads/exerciseImg/${Exercises.eImg}" alt="class img"  width="100" height="100" class="img-thumbnail profileImg marginRight10">
                            <p> ${Exercises.eName}</p>

                            <a href="ExerciseServlet?option=listOfAllExercisesById&id=${Exercises.eId}" class="btn btn-sm btn-danger">View</a>
                            <a href="ExerciseServlet?option=editExercise&id=${Exercises.eId}" class="btn btn-sm btn-danger">Update</a>
                            <a href="ExerciseServlet?option=deleteExercise&id=${Exercises.eId}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this item? ')" >Delete</a>
                        </center>
                    </div>
                </c:forEach>

            </div>

            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

