<%-- 
    Document   : template
    Created on : 27-Dec-2013, 21:37:18
    Author     : kaimp_000
--%>
<%@page import="TrainingBuddy.TPlans"%>
<%@page import="TrainingBuddy.Monday"%>
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

        <title>#Training Buddy - Admin training plans</title>

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

            <div class="col-md-9 grey">
                <h1 class="text-center marginBottom10">Training plan</h1>
              
                    <div class="col-md-12 marginBottom10">
                         <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th class="uppercase">${Monday.g1}</th>
                                <th class="uppercase">${Monday.g2}</th>
                                <th class="uppercase">${Monday.g3}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>${Monday.a1}</td>
                                <td>${Monday.a6}</td>
                                <td>${Monday.a11}</td>
                              
                            </tr>
                            <tr>
                                <td>2</td>
                                 <td>${Monday.a2}</td>
                                <td>${Monday.a7}</td>
                                <td>${Monday.a12}</td>
                               
                            </tr>
                            <tr>
                                <td>3</td>
                                 <td>${Monday.a3}</td>
                                <td>${Monday.a8}</td>
                                <td>${Monday.a13}</td>
                                
                            </tr>
                             <tr>
                                <td>4</td>
                                 <td>${Monday.a4}</td>
                                <td>${Monday.a9}</td>
                                <td>${Monday.a14}</td>
                                
                            </tr>
                             <tr>
                                <td>5</td>
                                 <td>${Monday.a5}</td>
                                <td>${Monday.a10}</td>
                                <td>${Monday.a15}</td>
                                
                            </tr>
                        </tbody>
                    </table>
                  
                    </div>
            </div>
        </div>
                        
<div class="col-md-12 gap10"></div>
        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

