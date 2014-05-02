<%-- 
    Document   : exercise
    Created on : 28-Dec-2013, 21:03:07
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
    </head>

    <body>
     


<div id="thecomments"></div>
    <script>
    function changeCommentsUrl(newUrl){
    // should refresh fb comments plugin for the "newUrl" variable
    document.getElementById('thecomments').innerHTML='';
    parser=document.getElementById('thecomments');
    parser.innerHTML='<div style="padding-left:5px; min-height:500px" class="fb-comments" data-href="'+newUrl+'" data-num-posts="20" data-width="380"></div>';
    FB.XFBML.parse(parser);
    }
    var thisurl = document.write(document.URL);
    changeCommentsUrl(thisurl);
    </script>


        <%@ include file="include/nav.jsp" %> 

        <%-- content inside main container --%> 
        <div class="row">    
            <div class="col-md-12 topHeader gap15"><h1 class="left trainWith">Train with</h1> <h1 class="right trainingBuddyH">#Training<span>Buddy</span></h1></div>
            <div class="col-md-12 gap10"></div>
            <iframe width="100%" height="480" src="//www.youtube.com/embed/NNTGvReREpk" frameborder="0" allowfullscreen></iframe>
            <div class="col-md-12 grey">
                
                <h1>Hummer Curl</h1> 
                <ul class="nav nav-pills">
                    <li>
                        <span class="badge pull-right">Intermediate</span>
                        Level
                    </li>
                    <li>
                        <span class="badge pull-right">Strength</span>
                        Type
                    </li>
                    <li>
                        <span class="badge pull-right">Abdominals</span>
                        Main Muscle Worked
                    </li>
                </ul>
                 <div class="col-md-12 gap10"></div>
               <article>
                    <img src="img/exercise-img/hammercurls.jpg" alt="exercise image" class="right marginRight10"/>
                    <p class="paddingTop5">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus neque urna, placerat non massa quis, iaculis porta nisl.
                        Aenean interdum consectetur semper. Mauris nec leo in elit vulputate dapibus. Sed sit amet sodales dui, vel tempus tortor.
                        Nulla eu purus libero. Aenean tempus, erat non faucibus aliquam, felis erat consectetur risus, eget feugiat ante leo in purus. 
                        Vivamus venenatis porta nibh id consectetur. Vestibulum at neque et dui ullamcorper sagittis.

                        Proin et nunc tortor. In sit amet nisi nec eros fringilla sagittis vitae sed dui. Sed gravida dapibus nulla non tempus. 
                        Nam rutrum ligula diam. Fusce cursus, sapien id semper imperdiet, augue ipsum ornare odio, et scelerisque lectus risus sit amet nisi. 
                        Sed felis ligula, imperdiet eget hendrerit nec, tristique sit amet neque. Mauris a commodo diam. Integer et sollicitudin nulla. 
                    </p></article>
            </div>

            
                <div class="col-md-12 grey">
                    <h1>Comment exercise</h1>
            
                    <div style="padding-left:5px; min-height:500px" class="fb-comments" data-href="'+newUrl+'" data-num-posts="20" data-width="380"></div>

            </div>
             <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>
