<%-- 
    Document   : template
    Created on : 27-Dec-2013, 21:37:18
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

        <title>#Training Buddy - Admin create exercise</title>

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

            <div class="col-md-9 col-sm-9 paddingTop10 grey">

                <form class="form-horizontal" id="form" name="form" method="post" enctype="multipart/form-data" action="ExerciseServlet">
                    <h1>Create exercise</h1>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="eName" id="eName" placeholder="Exercise name">
                        </div>
                    </div>

                    <div id="dragndropimage" class="uploadimage-dragndrop form-group">
                        <label class="col-sm-2 control-label">Exercise image</label>

                        <div class="col-sm-10">

                            <input type="file" multiple="multiple" name="eImg" id="eImg" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise description</label>
                        <div class="col-sm-10">

                            <textarea class="form-control" name="eDesc" id="eDesc" rows="3"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Video</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="eVideo" id="eVideo" placeholder="Link to YouTube video">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Level</label>
                        <div class="col-sm-10">

                            <select name="level" id="level" class="form-control">
                                <option>Beginner</option>
                                <option>Intermediate</option>
                                <option>Advanced</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Type</label>
                        <div class="col-sm-10">

                            <select name="type" id="type" class="form-control">
                                <option>Strength</option>
                                <option>Fitness</option>
                                <option>Pre workout</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Main Muscle Worked</label>
                        <div class="col-sm-10">
                            <select name="mainMuscle" id="mainMuscle" class="form-control">
                                <option>Abductors</option>
                                <option>Biceps</option>
                                <option>Calves</option>
                                <option>Chest</option>
                                <option>Forearms</option>
                                <option>Glutes</option>
                                <option>Hamstrings</option>
                                <option>Lats</option>
                                <option>Lower Back</option>
                                <option>Middle Back</option>
                                <option>Neck</option>
                                <option>Quadriceps  </option>
                                <option>Shoulders </option>
                                <option>Traps</option>
                                <option>Triceps</option>

                            </select>
                        </div>
                    </div>



                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="hidden" name="option" value="createExercise"/>
                            <input type="submit" name="button" id="button" value="Create"  class="btn btn-primary"/>

                        </div>
                    </div>
                </form>

            </div>

            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

