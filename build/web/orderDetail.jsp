<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Order Details</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
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
                table-layout: fixed; /* Cố định chiều rộng của bảng */
                margin-bottom: 20px;
            }
            th, td {
                padding: 12px;
                border: 1px solid #ddd;
                text-align: left;
                word-wrap: break-word; /* Cho phép các từ quá dài bị ngắt dòng */
            }
            th {
                background-color: #f2f2f2;
            }
            tr:hover {
                background-color: #f1f1f1;
            }
            .note {
                font-style: italic;
                color: #666;
            }
            td.product-image {
                width: 100px;
                text-align: center; 
            }

            td.product-image img {
                max-width: 100%; 
                height: auto; 
            }

        </style>
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>
        <div class="container">
            <h1>Order Details</h1>
            <c:if test="${not empty orderDetails}">
                <table>
                    <thead>
                        <tr>
                            <th>Lock Image</th>
                            <th>Lock Name</th>
                            <th>Quantity</th>
                            <th>Unit Price</th>
                            <th>Total Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="detail" items="${orderDetails}">
                            <tr>
                                <td class="product-image"><img src="${detail.productImage}" alt="${detail.productName}"></td>
                                <td>${detail.productName}</td>
                                <td>${detail.quantity}</td>
                                <td>${detail.productPrice}</td>
                                <td>${detail.productPrice * detail.quantity}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
            <c:if test="${empty orderDetails}">
                <p>No order details found.</p>
            </c:if>
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
