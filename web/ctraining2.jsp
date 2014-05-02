<%-- 
    Document   : ctreining1
    Created on : Mar 8, 2014, 3:08:25 PM
    Author     : Sir Pawel
--%>

<%@page import="TrainingBuddy.Monday"%>
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
            <div class="col-md-12 grey gap10 minHeight">
                <h1 class="alert alert-danger">Would you like to make your training plan private?</h1>
                <form class="form-horizontal" id="formp" name="formp" method="get" action="TplanServlet">
                    <div class="radio">
                        <label>
                            <input type="radio" name="privateplan" value="0" checked>
                            No
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="privateplan"  value="1">
                            Yes
                        </label>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="hidden" name="option" value="createTplan"/>
                            <input type="submit" name="button" id="button" value="Submit"  class="btn btn-primary pull-right"/>

                        </div>
                    </div>
                </form>

            </div>



            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

