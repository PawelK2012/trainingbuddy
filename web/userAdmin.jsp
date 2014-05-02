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

        <title>#Training Buddy - Admin</title>

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
                     <h1 class="text-center">User ${Users.uName} </h1>
                     <center>
                      <img src="images/uploads/uProfileImg/${Users.uImg}" title="aboutme" width="200" height="200" class="img-circle">
                      <h3><strong>${Users.uName}</strong></h3>
                        <button type="button" class="btn btn-success btn-xs">First name: ${Users.fName}</button>
                        <button type="button" class="btn btn-success btn-xs">Last name: ${Users.fName}</button>
                        <button type="button" class="btn btn-success btn-xs">Email: ${Users.uEmail}</button>
                     </center>
               
                 </div>
                  
                <div class="col-md-12 gap10"></div>
             </div>
            
  <%-- end main container --%>           
  <%@ include file="include/footer.jsp" %>

