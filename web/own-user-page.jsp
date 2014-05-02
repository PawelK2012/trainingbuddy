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

                        <button type="button" class="btn btn-warning btn-xs">Member since ${Users.regDate}</button>
                        <button type="button" onclick="location.href='#tplanUser';" class="btn btn-warning btn-xs">View <strong>${Users.uName}</strong> training plan</button>
                    </center>
                    <button class="btn btn-success btn-sm pull-right" data-toggle="modal" data-target="#myModal">Update cover photo</button>    
                    <a class="btn btn-success btn-sm pull-left" href="UserServlet?option=checkLoginBeforeTrainingPlan">Create training plan</a> 
                </div>
                <hr>
                <div class="span3">

                    <h1>Bio </h1>
                    <article>
                        <p>${Users.uBio}
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="label btn-default pull-right">Edit Bio</span></a>
                        </p>
                        
                    </article>

                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">

                            <div id="collapseOne" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <form class="form-horizontal" role="form" id="form1" name="form1" method="get" action="UserServlet">
                                        <div class="form-group">

                                            <div class="col-md-12">
                                                <textarea rows="3" class="form-control" name="uBio" id="uBio" placeholder="${Users.uBio}"></textarea>
                                                <input type="hidden" name="option" value="updateBio"/>
                                                <input type="submit" name="button" id="button" value="Update Bio"  class="btn btn-default btn-sm pull-right marginTop5"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Update cover photo</h4>
                                </div>
                                <div class="modal-body">

                                    <form class="form-horizontal" role="form" id="form2" name="form2" method="post" enctype="multipart/form-data" action="UserServlet">
                                                                   <p class="alert alert-danger text-center">Suggested image size 1150 width and 360 height</p>
                                        <div class="form-group">
                                            <label class="col-sm-4 control-label">Select image</label>
                                            
                                            <div class="col-sm-8">
                                                <input type="file" id="uCoverImg" name="uCoverImg">
                                            </div>
                                          
                                        </div>
              
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                            <input type="hidden" name="option" value="updateCoverImg"/>
                                            <input type="submit" name="button" id="button" value="Update"  class="btn btn-default"/>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>

        <div class="row userPage grey">
            <div id="tplanUser" class="col-md-12">
                <h1 class="uppercase">${Users.uName}'s training plans:</h1>
             
                <c:forEach var="TPlans" items="${tpuCollection}">
                   
                    <div onclick="location.href='TplanServlet?option=tplanByMondayId&idm=${TPlans.mondayId}';" class="col-md-4 greyHover cursor">
                        <div class="blockquote-box clearfix">
                            <div class="square pull-left">
                                <img src="images/uploads/uProfileImg/${Users.uImg}" width="60" height="60" alt="profile img"/>
                            </div>
                                <h4 class="uppercase">${TPlans.tName}</h4>
                            <p>
                               Check out my training routine! Fell free to comment and share
                            </p>
                            <a href="#" class="btn btn-sm btn-yellow pull-right margin10"> View</a>
                        </div>
                         
                    </div>
                </c:forEach>


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

