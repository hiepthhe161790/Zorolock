<%-- 
    Document   : viewCart
    Created on : Feb 23, 2022, 10:32:01 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <!-- Product section-->
        <section class="py-5 bg-light">
    <div class="container" style="min-height: 1000px">
        <h1 class="mb-4">Checkout</h1>
        <div class="row">
            <div class="col-md-8 mb-4">
                <div class="card shadow-sm">
                    <div class="card-header">
                        <h3 class="card-title">List Products</h3>
                    </div>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C">
                                    <tr>
                                        <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                        <th scope="row">${C.value.product.id}</th>
                                        <td><img src="${C.value.product.imageUrl}" width="50" class="img-thumbnail"/></td>
                                        <td>${C.value.product.name}</td>
                                        <td>${C.value.product.price}</td>
                                        <td>${C.value.quantity}</td>
                                        <td>${C.value.product.price * C.value.quantity}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <h3 class="text-right">Total Amount: $${totalMoney}</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <div class="card-header">
                        <h3 class="card-title">Customer Information</h3>
                    </div>
                    <div class="card-body">
                        <form action="checkout" method="POST">
                            <div class="form-group mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                            <div class="form-group mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone">
                            </div>
                            <div class="form-group mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address">
                            </div>
                            <div class="form-group mb-3">
                                <label for="note" class="form-label">Note</label>
                                <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>

