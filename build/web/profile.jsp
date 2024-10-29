<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        .container-custom {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .alert-custom {
            margin-bottom: 20px;
        }
        .card-custom {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .card-header-custom {
            border-bottom: 1px solid #ddd;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%@include file="components/navBarComponent.jsp" %>
    <div class="container-custom">
        <c:if test="${not empty sessionScope.message}">
            <div class="alert alert-info alert-custom">${sessionScope.message}</div>
            <c:remove var="message" scope="session"/>
        </c:if>

        <div class="card card-custom">
            <div class="card-header card-header-custom">
                <h2>Profile Information</h2>
            </div>
            <form action="updateProfile" method="post">
                <input type="hidden" name="uid" value="${sessionScope.acc.uid}">
                <div class="form-group">
                    <label for="user">Name:</label>
                    <input type="text" class="form-control" id="user" name="user" value="${sessionScope.acc.user}" required>
                </div>
                <div class="form-group">
                    <label for="pass">Password:</label>
                    <input type="text" class="form-control" id="pass" name="pass" value="${sessionScope.acc.pass}" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Save Changes</button>
            </form>
        </div>

        <div class="card card-custom">
            <div class="card-header card-header-custom">
                <h2>Change Password</h2>
            </div>
            <form action="updatePassword" method="post">
                <div class="form-group">
                    <label for="currentPassword">Current Password:</label>
                    <input type="password" class="form-control" id="currentPassword" name="currentPassword" required>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password:</label>
                    <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm New Password:</label>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                </div>
                <input type="hidden" name="user" value="${sessionScope.acc.user}">
                <button type="submit" class="btn btn-primary w-100">Change Password</button>
            </form>
        </div>
    </div>
    <%@include file="components/footerComponent.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
