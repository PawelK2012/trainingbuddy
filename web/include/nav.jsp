<%-- 
    Document   : nav
    Created on : 27-Dec-2013, 16:07:22
    Author     : kaimp_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">#Training<span>Buddy</span></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp"><img src="img/home.PNG" alt="home icon"/> Home</a></li>
                        <li><a href="UserServlet?option=checkLoginBeforeTrainingPlan"><img src="img/create-plan.PNG" alt="create a training plan icon"/> Create plan</a></li>
                        <li><a href="ExerciseServlet?option=listOfAllExercises"><img src="img/trainingpedia.PNG" alt="trainingpedia icon"/> Trainingpedia</a></li>
                        <li><a href="TplanServlet?option=listOfAllUsersAndTplans"><img src="img/community.PNG" alt="community gym icon"/> Community gym</a></li>
                        <li><a href="blog.jsp"><img src="img/blog.png" alt="blog icon"/> News</a></li>
                                   
                        <li class="dropdown">
                            <% if (session.getAttribute("uName") == null) { %>

                            <a href="login.jsp"><img src="img/userProfile.PNG" alt="home icon"/>  Login\Register</a>

                            <% } else {%>
                            <a class="dropdown-toggle uppercase" data-toggle="dropdown" href="#">Hi <%= session.getAttribute("uName")%>  <img src="images/uploads/uProfileImg/<%= session.getAttribute("uImg")%>" width="25" height="25" class="img-circle" alt="profile icon"/></a>
                            <ul class="dropdown-menu">
                                <li><a href="UserServlet?option=logout"><img src="img/logout.PNG" alt="community gym icon"/> Log out</a></li>
                                <li><a href="UserServlet?option=goToUserPage"><img src="img/userProfile.PNG" alt="community gym icon"/> Profile</a></li>   

                                <% } %>
                                <% if (session.getAttribute("admin") == null) { %>
                                <li></li>
                                    <% } else {%>
                                <li><a href="admin.jsp"><img src="img/admin.png" alt="community gym icon"/> Admin</a></li> 
                                    <% }%>
                            </ul>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>

        <div id="socialLeft" class="floating">
            <a href="#"><img src="img/fb.PNG" alt="social fb"/></a>
            <a href="#"><img src="img/twitter.PNG" alt="social twitter"/></a>
            <a href="#"><img src="img/gPlus.PNG" alt="social google plus"/></a>
            <a href="#"><img src="img/youTube.PNG" alt="social you tube"/></a>
        </div>

 <div class="container">
     