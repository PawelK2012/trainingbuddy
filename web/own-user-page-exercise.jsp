<%-- 
    Document   : template
    Created on : 27-Dec-2013, 21:37:18
    Author     : kaimp_000
--%>
<%@page import="TrainingBuddy.Users"%>
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

        <title>#Training Buddy - user page</title>

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
        <div class="row userPage"> 
            <div class="col-md-12 grey">
                <div style="background-image: url(images/uploads/userBackgroundImg/${Users.uCoverImg})" class="span3 userBg">
                    <center>
                        <img src="images/uploads/uProfileImg/${Users.uImg}" title="aboutme" width="200" height="200" class="img-circle">
                        <h3 class="greyHighlight">Hello <strong>${Users.uName}</strong> !</h3>
                        <button type="button" class="btn btn-success btn-xs">First name: ${Users.fName}</button>
                        <button type="button" class="btn btn-success btn-xs">Last name: ${Users.fName}</button>
                        <button type="button" class="btn btn-success btn-xs">User id: ${Users.uId}</button>
                        <button type="button" class="btn btn-success btn-xs">Email: ${Users.uEmail}</button>

                    </center>
                    <br>
                    <center>

                        <button type="button" class="btn btn-primary btn-xs">Member since ${Users.regDate}</button>
                        <button type="button" onclick="location.href='#tplanUser';" class="btn btn-primary btn-xs">View <strong>${Users.uName}</strong> training plan</button>
                    </center>
                    <button class="btn btn-success btn-sm pull-right" data-toggle="modal" data-target="#myModal">Update cover photo</button>    
                </div>
                <hr>
             
            </div> 
        </div>

        <div class="row userPage grey">
            <div id="tplanUser" class="col-md-12">
                <h1 class="uppercase">${Users.uName}'s training plans: own user page exe</h1>
                
             
                         <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th class="uppercase">${Monday.g1}</th>
                                <th class="uppercase">${Monday.g2}</th>
                                <th class="uppercase">${Monday.g3}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>${Monday.a1}</td>
                                <td>${Monday.a6}</td>
                                <td>${Monday.a11}</td>
                              
                            </tr>
                            <tr>
                                <td>2</td>
                                 <td>${Monday.a2}</td>
                                <td>${Monday.a7}</td>
                                <td>${Monday.a12}</td>
                               
                            </tr>
                            <tr>
                                <td>3</td>
                                 <td>${Monday.a3}</td>
                                <td>${Monday.a8}</td>
                                <td>${Monday.a13}</td>
                                
                            </tr>
                             <tr>
                                <td>4</td>
                                 <td>${Monday.a4}</td>
                                <td>${Monday.a9}</td>
                                <td>${Monday.a14}</td>
                                
                            </tr>
                             <tr>
                                <td>5</td>
                                 <td>${Monday.a5}</td>
                                <td>${Monday.a10}</td>
                                <td>${Monday.a15}</td>
                                
                            </tr>
                        </tbody>
                    </table>
               


            </div>
                  <%@ include file="include/social.jsp" %>  
        </div>
        <div class="row">
            <div class="col-md-12 grey paddingTop45 similarBuddiesHeading"></div>
            <div class="col-md-12 grey"> 
                <%@ include file="include/scrollPaneUsers.jsp" %>
            </div>
            <div class="col-md-12 gap10"></div>

        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

