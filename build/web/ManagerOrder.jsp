<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manager Lock</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/ManagerProduct.css" rel="stylesheet" type="text/css"/>
    <style>
        img {
            width: 200px;
            height: 120px;
        }
        .table-title {
            background-color: #343a40; 
            color: #ffffff; 
            padding: 10px;
            margin-bottom: 20px;
        }
        .hidden-details {
            display: none;
        }
        .details-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            border: 1px solid #ddd;
        }
        .details-table th, .details-table td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
        }
    </style>
    <script>
        function back() {
            window.location.href = "home";
        }

        function doDelete(id) {
            var c = confirm("Are you sure?");
            if (c) {
                window.location.href = "delete?pid=" + id;
            }
        }

        function toggleDetails(row) {
            const detailsRow = row.nextElementSibling;
            detailsRow.classList.toggle('hidden-details');
        }
    </script>
</head>
<body>
    <jsp:include page="sidebar.jsp"/>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Order</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>
                        <th>ID</th>
                        <th>AccountId</th>
                        <th>TotalPrice</th>
                        <th>CreatedDate</th>
                        <th>Shipping Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orders}" var="p">
                        <tr>
                            <td>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                    <label for="checkbox1"></label>
                                </span>
                            </td>
                            <td>${p.id}</td>
                            <td>${p.accountId}</td>
                            <td>${p.totalPrice} $</td>
                            <td>${p.createdDate}</td>
                            <td>
                                <button class="btn btn-info" onclick="toggleDetails(this.parentElement.parentElement)">Show Shipping Details</button>
                            </td>
                            <td>
                                <a href="editOrder?pid=${p.id}" class="edit" data-toggle="modal">
                                    <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                </a>
                            </td>
                        </tr>
                        <tr class="hidden-details">
                            <td colspan="7">
                                <table class="details-table">
                                    <tr>
                                        <td>Shipping Name:</td>
                                        <td>${p.shipping.name}</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping Phone:</td>
                                        <td>${p.shipping.phone}</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping Address:</td>
                                        <td>${p.shipping.address}</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
        <a href="#">
            <button type="button" class="btn btn-primary" onclick="back()">Back to home</button>
        </a>
    </div>
</body>
</html>
