<%-- 
    Document   : template
    Created on : 27-Dec-2013, 21:37:18
    Author     : kaimp_000
--%>
<%@page import="TrainingBuddy.Users"%>
<%@page import="TrainingBuddy.TPlans"%>
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

        <title>#Training Buddy - Your mate for the gym!</title>

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


        <div class="row userPage grey">

            <div id="tplanUser" class="col-md-12">
                <h1 class="uppercase">${Users.uName} Your training plan:</h1>
                <a href="images/userImg/${User.uImg}">Download text </a>

                <table class="table  table-bordered table-hover">
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
                            <a onclick="printContent('tplanUser')" class="btn btn-primary pull-right marginRight15">Print </a>
        
        </div>

        <div class="row">
            <div class="col-md-12 grey paddingTop45 similarBuddiesHeading"></div>
            <div class="col-md-12 grey"> 
                <%@ include file="include/scrollPaneUsers.jsp" %>
            </div>


        </div>

        <div class="row">
            <div class="col-md-12 grey">
                <h1>Comment</h1>

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
            <div class="col-md-12 gap10"></div>
        </div>

    <script>
        function printContent(el){
            var restorepage = document.body.innerHTML;
            var printcontent=document.getElementById(el).innerHTML;
            document.body.innerHTML=printcontent;
            window.print();
            document.body.innerHTML=restorepage;
        }
    </script>
    
        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

