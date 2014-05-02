<%-- 
    Document   : trainingpedia
    Created on : 27-Dec-2013, 17:35:23
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

        <title>#Training Buddy - you mate for the gym!</title>

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
            <div class="col-md-12 topHeader gap15"><h1 class="left trainWith">#Welcome to</h1> <h1 class="right trainingBuddyH">TRAININGN<span>pedia</span></h1></div>
            <div class="col-md-12 gap10"></div>
        </div>
        <div class="row"> 
            <div class="col-md-12 gap10 paddingTop20">
                <a class="btn btn-blk pull-right"  href="UserServlet?option=view3DModel">View 3D experimental version</a> 


                <a class="btn btn-danger" href="#back" data-toggle="tab">Back</a>
                  <a class="btn btn-danger" href="#front" data-toggle="tab">Front</a>

                

                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="back">
                        <center>
                        <img src="img/body-back.png" alt="body model front" border="0" usemap="#Map">
                        <map name="Map">
                            <area shape="rect" coords="70,188,143,239" href="#biceps" data-toggle="modal" data-target="#myModal" target="biceps" alt="biceps">
                            <area shape="rect" coords="15,70,137,190" href="#forearm"  data-toggle="modal" data-target="#myModalOther" target="forearm" alt="foreamr">
                            <area shape="rect" coords="-16,764,91,803" href="#shoulders" data-toggle="modal" data-target="#myModalOther" target="shoulders" alt="shoulders">
                            <area shape="rect" coords="396,170,451,304" href="#traps" data-toggle="modal" data-target="#myModalOther" target="traps" alt="traps">
                            <area shape="rect" coords="190,314,299,442" href="#lats" data-toggle="modal" data-target="#myModalOther" target="lats" alt="lats">
                            <area shape="rect" coords="408,311,509,439" href="#lats" data-toggle="modal" data-target="#myModalOther" target="lats" alt="lats">
                            <area shape="rect" coords="239,448,466,492" href="#mback" data-toggle="modal" data-target="#myModalOther" target="middle back" alt="middle back">
                            <area shape="rect" coords="238,499,475,561" href="#lback" data-toggle="modal" data-target="#myModalOther" target="lower back" alt="lower back">
                            <area shape="rect" coords="260,169,332,313" href="#traps" data-toggle="modal" data-target="#myModalOther" target="traps" alt="traps">
                            <area shape="rect" coords="155,166,253,225" href="#shoulders" data-toggle="modal" data-target="#myModalOther" target="shoulders" alt="shoulders">
                            <area shape="rect" coords="454,170,554,242" href="#shoulders" data-toggle="modal" data-target="#myModalOther" target="shoulders" alt="shoulders">
                            <area shape="rect" coords="557,198,649,232" href="#biceps" data-toggle="modal" data-target="#myModal" target="biceps" alt="biceps">
                            <area shape="rect" coords="572,80,690,198" href="#forearm" data-toggle="modal" data-target="#myModalOther" target="forearm" alt="forearm">
                            <area shape="rect" coords="529,249,656,306" href="#triceps" data-toggle="modal" data-target="#myModalOther" target="triceps" alt="triceps">
                            <area shape="rect" coords="76,249,180,299" href="#triceps" data-toggle="modal" data-target="#myModalOther" target="triceps" alt="triceps">
                        </map>
                        </center>
                    </div>
                    <div class="tab-pane fade" id="front">
                        <center>
                        <img src="img/body-front.png" alt="body model front" border="0" usemap="#Map1">
                        <map name="Map1">
                            <area shape="rect" coords="136,76,209,127" href="#biceps" data-toggle="modal" data-target="#myModal" target="biceps" alt="biceps">
                            <area shape="rect" coords="23,70,137,148" href="#forearm" data-toggle="modal" data-target="#myModalOther" target="forearm" alt="foreamr">
                            <area shape="rect" coords="-16,764,91,803" href="#shoulders" data-toggle="modal" data-target="#myModalOther" target="shoulders" alt="shoulders">
                            <area shape="rect" coords="318,92,353,122" href="#traps" data-toggle="modal" data-target="#myModalOther" target="traps" alt="traps">
                            <area shape="rect" coords="264,92,287,114" href="#traps" data-toggle="modal" data-target="#myModalOther" target="traps" alt="traps">
                            <area shape="rect" coords="209,88,264,126" href="#shoulders" data-toggle="modal" data-target="#myModalOther" target="shoulders" alt="shoulders">
                            <area shape="rect" coords="364,110,413,166" href="#shoulders" data-toggle="modal" data-target="#myModalOther" target="shoulders" alt="shoulders">
                            <area shape="rect" coords="376,171,415,212" href="#biceps" data-toggle="modal" data-target="#myModalOther" target="biceps" alt="biceps">
                            <area shape="rect" coords="382,216,438,268" href="#forearm" data-toggle="modal" data-target="#myModalOther" target="forearm" alt="forearm">
                            <area shape="rect" coords="416,146,436,207" href="#triceps" data-toggle="modal" data-target="#myModalOther" target="triceps" alt="triceps">
                            <area shape="rect" coords="139,129,221,160" href="#triceps" data-toggle="modal" data-target="#myModalOther" target="triceps" alt="triceps">
                            <area shape="rect" coords="229,128,360,198" href="#chest" data-toggle="modal" data-target="#myModalOther" target="chest" alt="chest">
                            <area shape="rect" coords="231,208,341,315" href="#abs" data-toggle="modal" data-target="#myModalOther" target="abs" alt="abs">
                            <area shape="rect" coords="141,441,211,542" href="#calves" data-toggle="modal" data-target="#myModalOther" target="calves" alt="calves">
                            <area shape="rect" coords="435,462,550,566" href="#calves" data-toggle="modal" data-target="#myModalOther" target="calves" alt="calves">
                            <area shape="rect" coords="141,330,231,412" href="#quads" target="quads" alt="quads">
                            <area shape="rect" coords="233,396,273,438" href="#hamstrings" data-toggle="modal" data-target="#myModalOther" target="hamstrings" alt="hamstrings">
                            <area shape="rect" coords="193,417,230,439" href="#hamstrings" data-toggle="modal" data-target="#myModalOther" target="hamstrings" alt="hamstrings">
                            <area shape="rect" coords="330,364,466,446" href="#quads" data-toggle="modal" data-target="#myModalOther" target="quads" alt="quads">
                        </map>
                        </center>
                    </div>

                </div>




            </div>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content grey">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Biceps</h4>
                        </div>
                        <div class="modal-body grey">

                            <c:forEach var="Exercises"  items="${exCollection}">
                                <div onclick="location.href = 'ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}';" class="blockquote-box clearfix cursor greyHover">
                                    <div class="square pull-left">
                                        <img src="images/uploads/exerciseImg/${Exercises.eImg}" alt="class img"  width="70" height="70" class="img-thumbnail profileImg marginRight10">
                                    </div>
                                    <h3> ${Exercises.eName}</h3>
                                    <ul >
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

                                    <a href="ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}" class="btn btn-sm btn-blk pull-right margin10">View</a>

                                </div>
                            </c:forEach>



                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-blk" data-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal  other-->
            <div class="modal fade" id="myModalOther" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content grey">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Other</h4>
                        </div>
                        <div class="modal-body grey">

                            <c:forEach var="Exercises"  items="${exCollection}">
                                <div onclick="location.href = 'ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}';" class="blockquote-box clearfix cursor greyHover">
                                    <div class="square pull-left">
                                        <img src="images/uploads/exerciseImg/${Exercises.eImg}" alt="class img"  width="70" height="70" class="img-thumbnail profileImg marginRight10">
                                    </div>
                                    <h3> ${Exercises.eName}</h3>
                                    <ul >
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

                                    <a href="ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}" class="btn btn-sm btn-blk pull-right margin10">View</a>

                                </div>
                            </c:forEach>



                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-blk" data-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>
            </div>

        </div>  <!-- row end -->

        <div class="row">
            <div class="col-lg-12">

            </div>               
        </div>
        <div class="row grey">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li><a href="#abductors" data-toggle="tab">Abductors</a></li>
                <li><a href="#biceps" data-toggle="tab">Biceps</a></li>
                <li><a href="#calves" data-toggle="tab">Calves</a></li>
                <li><a href="#chest" data-toggle="tab">Chest</a></li>
                <li><a href="#forearms" data-toggle="tab">Forearms </a></li>
                <li><a href="#glutes" data-toggle="tab">Glutes </a></li>
                <li><a href="#hamstrings" data-toggle="tab">Hamstrings</a></li>
                <li><a href="#lats" data-toggle="tab">Lats</a></li>
                <li><a href="#lowerback" data-toggle="tab">Lower Back</a></li>
                <li><a href="#middleback" data-toggle="tab">Middle Back</a></li>
                <li><a href="#neck" data-toggle="tab">Neck</a></li>
                <li><a href="#quadriceps" data-toggle="tab">Quadriceps</a></li>
                <li><a href="#shoulders" data-toggle="tab">Shoulders</a></li>
                <li><a href="#traps" data-toggle="tab">Traps</a></li>
                <li><a href="#triceps" data-toggle="tab">Triceps</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane fade in active" id="abductors">


                    <c:forEach var="Exercises"  items="${exCollection}">
                        <div onclick="location.href = 'ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}';" class="col-md-2 greyHover cursor">
                            <center>
                                <img src="images/uploads/exerciseImg/${Exercises.eImg}" alt="class img"  width="100" height="100" class="img-thumbnail profileImg marginRight10">
                                <h2> ${Exercises.eName}</h2>

                                <a href="ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}" class="btn btn-sm btn-success center-block">View</a>
                            </center>
                        </div>
                    </c:forEach>
                </div>

                <div class="tab-pane fade" id="biceps">

                    <c:forEach var="Exercises"  items="${exCollection}">
                        <div onclick="location.href = 'ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}';" class="col-md-2 greyHover cursor">
                            <img src="images/uploads/exerciseImg/${Exercises.eImg}" alt="class img"  width="140" height="140" class="img-thumbnail profileImg marginRight10">
                            <h2> ${Exercises.eName}</h2>

                            <a href="ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}" class="btn btn-success center-block">View</a>

                        </div>
                    </c:forEach>
                </div>
                <div class="tab-pane fade" id="calves">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>
                <div class="tab-pane fade" id="chest">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>
                <div class="tab-pane fade" id="forearms">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>


                </div>

                <div class="tab-pane fade" id="glutes">

                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>

                <div class="tab-pane fade" id="hamstrings">

                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>

                <div class="tab-pane fade" id="lats">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                </div>
                <div class="tab-pane fade" id="lowerback">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>   <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>    
                </div>

                <div class="tab-pane fade" id="middleback">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>

                <div class="tab-pane fade" id="neck">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                </div>

                <div class="tab-pane fade" id="quadriceps">

                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>

                <div class="tab-pane fade" id="shoulders">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>
                <div class="tab-pane fade" id="traps">         

                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>
                </div>

                <div class="tab-pane fade" id="triceps">
                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <a href="exercise.jsp"><img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="profile image" class="left marginRight10 thumb"/></a>
                        <article class="text-center">
                            <h2>Barbell Curl</h2>
                            <p> Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>
                        <article class="text-center">
                            <h2>Drag Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/DumbbellBicepCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Dumbbell Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>

                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>EZ-Bar Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris... 
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/SpiderCurl.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Spider Curl</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>

                    </div>
                    <div class="col-md-2 greyHover">
                        <img src="img/exercise-img/thumbnails/ConcentrationCurls.jpg" alt="profile image" class="left marginRight10 thumb"/>

                        <article class="text-center">
                            <h2>Concentration Curls</h2>
                            <p>
                                Aliquam vitae venenatis orci, at ornare mauris...
                            </p></article>
                        <button type="button" class="btn btn-success center-block">read more</button>
                    </div>

                </div>


            </div>

            <div class="col-md-12 gap10 grey"></div>
            <div class="col-md-12 grey paddingTop45 sliderHeading"></div>

            <div class="col-md-12 grey">
                <%@ include file="include/scrollPaneExe.jsp" %>
            </div>

            <div class="col-md-12 grey">
                <h1>Comments</h1>

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

        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>