<%-- 
    Document   : blogSidebar
    Created on : Feb 9, 2014, 7:08:37 PM
    Author     : Sir Pawel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
      <div class="col-lg-3 col-md-3 col-sm-3 grey">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span>Content</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">Articles</a>
                                    </td>
                                </tr>
                              
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th">
                            </span>Exercises</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="ExerciseServlet?option=listOfAllExercisesAdmin"><span class="glyphicon glyphicon-th-list"></span>All exercises</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="createExercise.jsp"><span class="glyphicon glyphicon-ok"></span>Create exercise</a> 
                                    </td>
                                </tr>
                             
                              
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                            </span>Users</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="AdminServlet?option=listOfAllUsersAdmin"><span class="glyphicon glyphicon-th-list"></span>List of all users</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="createUserAdmin.jsp"><span class="glyphicon glyphicon-ok"></span>Create user</a>
                                    </td>
                                </tr>
                              
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                            </span>Training plans</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="ctraining1.jsp"><span class="glyphicon glyphicon-ok"></span>Create plan</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       <a href="TplanServlet?option=listOfAllTplansAdmin"><span class="glyphicon glyphicon-th-list"></span>List of all plans</a>
                                    </td>
                                </tr>
                                                            
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>