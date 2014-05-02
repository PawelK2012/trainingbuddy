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

        <title>#Training Buddy - blog</title>

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
             <div id="blog" class="row"> 
               <%@ include file="include/blogSidebar.jsp" %>   
                 <div class="col-md-10 blogShort">
                     <h2>Title 1</h2>
                     <img src="img/exercise-img/thumbnails/BarbellCurl.jpg" alt="post img" class="pull-left img-responsive thumb marginRight10 img-thumbnail">
                     <article><p>
                         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text
                         ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only 
                         five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release
                         of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of
                         Lorem Ipsum.
                         </p></article>
                     <a class="btn btn-default pull-right marginBottom10" href="blogEntry.jsp">READ MORE</a> 
                 </div>
                  <div class="col-md-10 blogShort">
                     <h2>Title 2</h2>
                     <img src="img/exercise-img/thumbnails/DragCurl.jpg" alt="post img" class="pull-left img-responsive thumb marginRight10 img-thumbnail">
                     <article><p>
                         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text
                         ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only 
                         five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release
                         of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of
                         Lorem Ipsum.
                         </p></article>
                     <a class="btn btn-default pull-right marginBottom10" href="blogEntry.jsp">READ MORE</a> 
                 </div>
                 
                  <div class="col-md-10 blogShort">
                     <h2>Title 3</h2>
                     <img src="img/exercise-img/thumbnails/EZ-BarCurl.jpg" alt="post img" class="pull-left img-responsive thumb marginRight10 img-thumbnail">
                     <article><p>
                         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text
                         ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only 
                         five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release
                         of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of
                         Lorem Ipsum.
                         </p></article>
                     <a class="btn btn-default pull-right marginBottom10" href="blogEntry.jsp">READ MORE</a> 
                 </div>
                 
               <div class="col-md-12 gap10"></div>
             </div>
            
  <%-- end main container --%>           
 <%@ include file="include/footer.jsp" %>

