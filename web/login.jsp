<%-- 
    Document   : login
    Created on : 27-Dec-2013, 21:31:04
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

        <title>#Training Buddy - login page</title>

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
            <div class="col-md-12 gap10"></div>

            <div class="signup pullDown"></div>
            <div class="col-md-8 login paddiLeft10 pullUp">
                <div class="custom-btn-group">
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#regModal">REGISTER</button>
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#loginModal">LOG IN</button>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Register</h4>
                            </div>
                            <div class="modal-body">

                                <form class="form-horizontal" role="form" id="form2" name="form2" method="post" enctype="multipart/form-data" action="UserServlet">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="uName" id="uName" placeholder="Username"
                                                 data-validation="length" data-validation-length="3-10"
                                                   data-validation-error-msg="The firstname has to be no longer than 10 and not shorter than 3 characters">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" name="uPass" id="uPass" placeholder="Password"
                                                   data-validation="length" data-validation-length="min3">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">First name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="fName" id="fName" placeholder="First name"
                                                   data-validation="custom" data-validation-regexp="^([a-zA-Z]+)$"
                                                   data-validation-error-msg="The firstname has to be an string value from a-z">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Lat name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="lName" id="lName" placeholder="Lat name"
                                                   data-validation="custom" data-validation-regexp="^([a-zA-Z]+)$"
                                                   data-validation-error-msg="The firstname has to be an string value from a-z">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" name="uEmail" id="uEmail"  placeholder="Email">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Profile image</label>
                                        <div class="col-sm-10">
                                            <input type="file" id="uImg" name="uImg">
                                        </div>
                                    </div>

                                  
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="hidden" name="option" value="createUser"/>
                                             <input type="submit" name="button" id="button" value="Sign in"  class="btn btn-default"/>
                                           
                                        </div>
                                    </div>
                                </form>


                            </div>

                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->


                <!-- Modal -->
                <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Log - in</h4>

                            </div>
                            <div class="modal-body">

                                <form class="form-horizontal" role="form" id="form1" name="form1" method="post" action="UserServlet">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">User name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="uName" id="uName" placeholder="Username"
                                                   data-validation="length" data-validation-length="3-10"
                                                   data-validation-error-msg="The firstname has to be no longer than 10 and not shorter than 3 characters">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">Password</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" name="uPass" id="uPass" placeholder="Password"
                                                   data-validation="length" data-validation-length="min3">
                                        </div>
                                    </div>
                                   
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="hidden" name="option" value="login"/>
                                            <input type="submit" name="button" id="button" value="Log in"  class="btn btn-default"/>

                                        </div>                                  
                                    </div>

                                </form>

                            </div>

                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->

            </div>

            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.1.27/jquery.form-validator.min.js"></script> 
         <script>
            $.validate();
            $('#area').restrictLength($('#maxlength'));
        </script>
