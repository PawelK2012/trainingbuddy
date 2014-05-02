<%-- 
    Document   : scrollPane
    Created on : Feb 9, 2014, 7:21:37 PM
    Author     : Sir Pawel
--%>
<%@page import="TrainingBuddy.Exercises"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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