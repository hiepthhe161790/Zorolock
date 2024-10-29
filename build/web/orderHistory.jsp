<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Order History for Zoro Lock">
    <meta name="author" content="Zoro Lock">
    <title>Order History</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        h1 {  
            margin-top: 30px;
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            table-layout: fixed;
            margin-bottom: 20px;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
            word-wrap: break-word;
        }
        th {
            background-color: #343a40;
            color: #fff;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .note {
            font-style: italic;
            color: #666;
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
        .order-details-btn, .toggle-details-btn {
            display: inline-block;
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            border: none;
            cursor: pointer;
        }
        .order-details-btn:hover, .toggle-details-btn:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function toggleDetails(row) {
            const detailsRow = row.nextElementSibling;
            detailsRow.classList.toggle('hidden-details');
        }
    </script>
</head>
<body>
    <%@include file="components/navBarComponent.jsp" %>
    <div class="container">
        <h1>Order History</h1>
        <c:if test="${not empty orders}">
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Total Price</th>
                        <th>Note</th>
                        <th>Created Date</th>
                        <th>Information</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="order" items="${orders}">
                        <tr>
                            <td>${order.id}</td>
                            <td>${order.totalPrice}</td>
                            <td class="note">${order.note}</td>
                            <td>${order.createdDate}</td>
                            <td><button class="toggle-details-btn" onclick="toggleDetails(this.parentElement.parentElement)">Show Details</button></td>
                            <td><a href="orderDetails?id=${order.id}" class="order-details-btn">View Details</a></td>
                        </tr>
                        <tr class="hidden-details">
                            <td colspan="6">
                                <table class="details-table">
                                    <tr>
                                        <td>Shipping Name:</td>
                                        <td>${order.shipping.name}</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping Phone:</td>
                                        <td>${order.shipping.phone}</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping Address:</td>
                                        <td>${order.shipping.address}</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty orders}">
            <p>No orders found.</p>
        </c:if>
    </div>
    <%@include file="components/footerComponent.jsp" %>
</body>
</html>
