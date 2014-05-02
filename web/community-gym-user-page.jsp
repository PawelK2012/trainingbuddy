<%-- 
    Document   : community-gym-user-page
    Created on : 05-Jan-2014, 19:23:17
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

        <title>#Training Buddy - exercise page</title>

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
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=314478082012034";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>
            <%@ include file="include/nav.jsp" %> 

        <%-- content inside main container --%> 
        <div class="row">    
            <div class="col-md-12 topHeader gap15"><h1 class="left trainWith">Train with</h1> <h1 class="right trainingBuddyH">#Training<span>Buddy</span></h1></div>
            <div class="col-md-12 gap10"></div>

            <div class="col-md-12 grey">

                <h1>Pawel's training plan</h1> 

                <div class="col-md-12 gap10"></div>
                <article>
                    <div class="caption"><img src="img/profile-img/pawel.gif" alt="exercise image" class="pull-left marginRight10"/><p><strong>This is my caption</strong></p></div>
                    <p class="paddingTop5">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, 
                        but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
                        Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                    </p>
                    <p class="paddingTop5">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, 
                        but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
                        Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                    </p>
                    <h1>Plan</h1>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Username</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Larry</td>
                                <td>the Bird</td>
                                <td>@twitter</td>
                            </tr>
                        </tbody>
                    </table>
                    <%@ include file="include/social.jsp" %> 
                </article>
            </div>

            <div class="col-md-12 grey paddingTop45 similarBuddiesHeading"></div>

            <div class="col-md-12 grey">

                <div class="scroll-pane ui-widget ui-widget-header ui-corner-all">
                    <div class="scroll-content">
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/hummerCurll-thumb.jpg" alt="exercise thumbnail"/>Hummer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/AlternateInclineDumbbellCurl.jpg" alt="exercise thumbnail"/>Dumbbell Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="exercise thumbnail"/>Barbell Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/cableHammerCurls.jpg" alt="exercise thumbnail"/>Cable Curls</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/cablePreacherCurl.jpg" alt="exercise thumbnail"/>Cable Curls</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/crossBodyHammerCurl.jpg" alt="exercise thumbnail"/>Body Hammer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/hummerCurll-thumb.jpg" alt="exercise thumbnail"/>Hummer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/hummerCurll-thumb.jpg" alt="exercise thumbnail"/>Hummer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/hummerCurll-thumb.jpg" alt="exercise thumbnail"/>Hummer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/AlternateInclineDumbbellCurl.jpg" alt="exercise thumbnail"/>Dumbbell Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="exercise thumbnail"/>Barbell Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/cableHammerCurls.jpg" alt="exercise thumbnail"/>Cable Curls</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/cablePreacherCurl.jpg" alt="exercise thumbnail"/>Cable Curls</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/crossBodyHammerCurl.jpg" alt="exercise thumbnail"/>Body Hammer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/hummerCurll-thumb.jpg" alt="exercise thumbnail"/>Hummer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/hummerCurll-thumb.jpg" alt="exercise thumbnail"/>Hummer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/cablePreacherCurl.jpg" alt="exercise thumbnail"/>Cable Curls</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/crossBodyHammerCurl.jpg" alt="exercise thumbnail"/>Body Hammer Curl</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/cablePreacherCurl.jpg" alt="exercise thumbnail"/>Cable Curls</a></div>
                        <div class="scroll-content-item ui-widget-header"><a href="#"><img src="img/exercise-img/thumbnails/crossBodyHammerCurl.jpg" alt="exercise thumbnail"/>Body Hammer Curl</a></div>

                    </div>
                    <div class="scroll-bar-wrap ui-widget-content ui-corner-bottom">
                        <div class="scroll-bar"></div>
                    </div>
                </div>

            </div>

            <div class="col-md-12 grey">
                <h1>Comment user working routine</h1>

                <div class="fb-comments" data-href="http://www.pawelkaim.com/" data-width="1000" data-numposts="15" data-colorscheme="light"></div>
            </div>
            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>
