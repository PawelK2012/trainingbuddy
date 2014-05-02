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
                        <h3 class="uppercase greyHighlight"><strong>${Users.uName}</strong></h3>
                        <button type="button" class="btn btn-success btn-xs">First name: ${Users.fName}</button>
                        <button type="button" class="btn btn-success btn-xs">Last name: ${Users.fName}</button>
                        <button type="button" class="btn btn-success btn-xs">Email: ${Users.uEmail}</button>

                    </center>

                    <center>

                        <button type="button" class="btn btn-warning btn-xs marginTop5">Member since ${Users.regDate}</button>
                        <button onclick="location.href='#tplanUser';" type="button" class="btn btn-warning btn-xs marginTop5">View <strong>${Users.uName}</strong> training plan's</button>

                    </center>
                </div>
                <hr>
                <div class="span3">


                    <h1>Bio</h1>
                    <article>
                        <p>${Users.uBio}</p>
                    </article>
                        <%@ include file="include/social.jsp" %>                   
                </div>
            </div>
                
                <div class="row userPage">
                    <div id="tplanUser" class="col-md-12 grey">
                    <h1>${Users.uName}'s Training Plans</h1>
                    
                     <c:forEach var="TPlans"  items="${tpuCollection}">
                   
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
                </div>
            <div class="col-md-12 grey paddingTop45 similarBuddiesHeading"></div>
            <div class="col-md-12 grey"> 
                <%@ include file="include/scrollPaneUsers.jsp" %>
            </div>
            <div class="col-md-12 grey">
                <h1>Comment</h1>

                <div id="disqus_thread"></div>
                <script type="text/javascript">
                    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
                    var disqus_shortname = 'trainingbuddy'; // required: replace example with your forum shortname

                    /* * * DON'T EDIT BELOW THIS LINE * * */
                    (function() {
                        var dsq = document.createElement('script');
                        dsq.type = 'text/javascript';
                        dsq.async = true;
                        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                    })();
                </script>
                <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>

            </div>
            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

