<%-- 
    Document   : scrollPane
    Created on : Feb 9, 2014, 7:21:37 PM
    Author     : Sir Pawel
--%>
<%@page import="TrainingBuddy.Exercises"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="row">
		<div class="span12">
    	    <div class="well"> 
                <div id="myCarousel" class="carousel slide">
                 
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                 
                <!-- Carousel items -->
                <div class="carousel-inner">
                    
                <div class="item active">
                		<div class="row-fluid">
                	  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
                	  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
                	  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
                	  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
                	</div><!--/row-fluid-->
                </div><!--/item-->
                 
                
                 
                </div><!--/carousel-inner-->
                 
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                </div><!--/myCarousel-->
                 
            </div><!--/well-->   
		</div>
	</div>



<div class="scroll-pane ui-widget ui-widget-header ui-corner-all">
    <div class="scroll-content">
         <c:forEach var="Exercises"  items="${exCollection}">
             <div onclick="location.href='ExerciseServlet?option=listOfAllExercisesByIdUser&id=${Exercises.eId}';" class="scroll-content-item ui-widget-header cursor"><img src="images/uploads/exerciseImg/${Exercises.eImg}" width="120" height="120" alt="exercise thumbnail"/><p>${Exercises.eName}</p></div>
           </c:forEach>
        

    </div>
    <div class="scroll-bar-wrap ui-widget-content ui-corner-bottom">
        <div class="scroll-bar"></div>
    </div>
</div>

<script>
    $(document).ready(function() {
    $('#myCarousel').carousel({
	    interval: 10000
	})
});
</script>