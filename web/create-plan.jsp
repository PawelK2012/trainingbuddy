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

        <title>#Training Buddy - create a training plan</title>

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


        <div id="tPlanMain" class="row">  

    <h1 class="text-center"><em>Let's start!</em></h1>
    
     <ul class="timeline">
        <li>
            <div  class="timeline-badge ">1</div>
          <div id="step1" class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Create you profile</h4>
            </div>
              <hr>
            <div class="timeline-body">
                <img class="img-responsive" src="img/tPlan/createPlan1.jpg" alt="training plan step 1">
            </div>
          </div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-badge warning">2</div>
          <div id="step2" class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Browse Trainingpedia</h4>
            </div>
               <hr>
            <div class="timeline-body">
               <img class="img-responsive" src="img/tPlan/createPlan2.jpg" alt="training plan step 2">
            </div>
          </div>
        </li>
        <li>
          <div class="timeline-badge danger">3</div>
          <div id="step3" class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">View article</h4>
            </div>
               <hr>
            <div class="timeline-body">
              <img class="img-responsive" src="img/tPlan/createPlan3.jpg" alt="training plan step 3">
            </div>
          </div>
        </li>
        <li class="timeline-inverted">
            <div class="timeline-badge warning">4</div>
          <div id="step4" class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Choose exercise</h4>
            </div>
               <hr>
            <div class="timeline-body">
             <img class="img-responsive" src="img/tPlan/createPlan4.jpg" alt="training plan step 4">
            </div>
          </div>
        </li>
        <li>
          <div class="timeline-badge info">5</div>
          <div id="step5" class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Add  exercise to your custom training plan!</h4>
            </div>
               <hr>
            <div class="timeline-body">
              <img class="img-responsive" src="img/tPlan/createPlan5.jpg" alt="training plan step 5">
           
            </div>
          </div>
        </li>
            <li class="timeline-inverted">
            <div class="timeline-badge warning"><span class="glyphicon glyphicon-thumbs-up"></span></div>
        
        </li>
      
    </ul>
    <div class="col-md-12 gap10"> <h1 class="text-center"><em>Are you ready?</em></h1></div>
      <div class="col-md-12 gap10"></div>
    <div onclick="location.href='UserServlet?option=checkLoginTrainingPlan';" class="circle pulse cursor"><h2 class="text-center">Yes</h2></div>
     <div onclick="location.href='index.jsp';" class="circle1 pulseSlow pull-right marginRight10 cursor"><h2 class="text-center">No</h2></div>
     
        <div class="col-md-12 gap10"></div>
    </div>

    <%-- end main container --%>           
    <%@ include file="include/footer.jsp" %>
    
    <script>
	$(window).scroll(function() {
		$('#step3').each(function(){
		var imagePos = $(this).offset().top;

		var topOfWindow = $(window).scrollTop();
			if (imagePos < topOfWindow+900) {
				$(this).addClass("slideUp");
			}
		});
	});
        
        $(window).scroll(function() {
		$('#step4, #step5,#step6').each(function(){
		var imagePos = $(this).offset().top;

		var topOfWindow = $(window).scrollTop();
			if (imagePos < topOfWindow+900) {
				$(this).addClass("slideUp");
			}
		});
	});
</script>

