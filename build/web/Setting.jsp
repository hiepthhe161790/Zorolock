<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Settings</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <style>
            .container {
                margin-top: 50px;
            }
            .sidebar {
                height: 100%;
                width: 250px;
                position: fixed;
                top: 0;
                left: 0;
                background-color: #f8f9fa;
                padding-top: 20px;
            }
            .sidebar a {
                padding: 10px 15px;
                text-decoration: none;
                font-size: 18px;
                color: #333;
                display: block;
            }
            .sidebar a:hover {
                background-color: #ddd;
            }
            .content {
                margin-left: 260px;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="sidebar.jsp"/>

        <div class="content">
            <div class="container">
                <h2>Settings</h2>
                <div class="panel panel-default">
                    <div class="panel-heading">Profile Information</div>
                    <div class="panel-body">
                      
                                  
                            <div class="form-group"> <label for="isSell">Is Seller:</label> 
                                <input type="text" class="form-control" id="isSell" name="isSell" value="${sessionScope.acc.isSell == 1 ? 'Yes' : 'No'}" readonly> </div> 
                            <div class="form-group">
                                <label for="isAdmin">Is Admin:</label>
                                <input type="text" class="form-control" id="isAdmin" name="isAdmin" value="${sessionScope.acc.isAdmin == 1 ? 'Yes' : 'No'}" readonly> </div> <div class="form-group"> 
                                <label for="active">Active:</label>
                                <input type="text" class="form-control" id="active" name="active" value="${sessionScope.acc.active ? 'Yes' : 'No'}" readonly> </div>
                           
                    </div>
                </div>

               

                <div class="panel panel-default">
                    <div class="panel-heading">Notification Preferences</div>
                    <div class="panel-body">
                        <form action="updateNotifications" method="post">
                            <div class="checkbox">
                                <label><input type="checkbox" name="emailNotifications"> Email Notifications</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" name="smsNotifications"> SMS Notifications</label>
                            </div>
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </form>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">Privacy and Security</div>
                    <div class="panel-body">
                        <form action="updatePrivacy" method="post">
                            <div class="checkbox">
                                <label><input type="checkbox" name="shareData"> Share Data with Third Parties</label>
                            </div>
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </form>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">Application Settings</div>
                    <div class="panel-body">
                        <form action="updateAppSettings" method="post">
                            <div class="form-group">
                                <label for="theme">Theme:</label>
                                <select class="form-control" id="theme" name="theme">
                                    <option value="light">Light</option>
                                    <option value="dark">Dark</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="language">Language:</label>
                                <select class="form-control" id="language" name="language">
                                    <option value="en">English</option>
                                    <option value="vi">Vietnamese</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </form>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">Support and Feedback</div>
                    <div class="panel-body">
                        <a href="support" class="btn btn-primary">Contact Support</a>
                        <a href="feedback" class="btn btn-primary">Submit Feedback</a>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">Logout</div>
                    <div class="panel-body">
                        <button class="btn btn-danger" onclick="window.location.href = 'logout'">Logout</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
