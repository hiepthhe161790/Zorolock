<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sidebar</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #495057; 
            padding-top: 20px;
            overflow-y: auto;
        }
        .sidebar h1 {
            text-align: center;
            padding: 20px 0;
            font-size: 24px;
            margin-bottom: 20px;
            color: #fff;
        }
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 16px;
            color: #fff; 
            display: block;
            transition: background-color 0.3s ease;
        }
        .sidebar a:hover {
            background-color: #0056b3; 
        }
        .sidebar a i {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h1>ZORO LOCKS</h1>
        <a href="home"><i class="material-icons">home</i> Home</a>

        <!-- Show links for admin -->
        <c:if test="${sessionScope.acc != null && sessionScope.acc.isAdmin == 1}">
            <a href="managerAccount"><i class="material-icons">person</i> Manage Accounts</a>
            <a href="managerCategory"><i class="material-icons">category</i> Manage Categories</a>
        </c:if>

        <!-- Show links for seller -->
        <c:if test="${sessionScope.acc != null && sessionScope.acc.isSell == 1}">
            <a href="manager"><i class="material-icons">pets</i> Manage Locks</a>
            <a href="managerOrder"><i class="material-icons">shopping_cart</i> Manage Orders</a>
        </c:if>

        <!-- Show links for all logged-in users -->
        <c:if test="${sessionScope.acc != null}">
            <a href="updateProfile"><i class="material-icons">person</i> Profile</a>
            <a href="Setting.jsp"><i class="material-icons">settings</i> Settings</a>
        </c:if>
    </div>
</body>
</html>
