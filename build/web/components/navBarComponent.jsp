<%-- 
    Document   : navBarComponent
    Created on : Feb 17, 2022, 9:00:41 PM
    Author     : Le Hong Quan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<script>
    function login() {
        window.location.href = "login.jsp";
    }
    function logout() {
        window.location.href = "logout";
    }
</script>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
       <a class="navbar-brand" href="home" style="font-size: 24px; font-weight: bold;">ZORO LOCK</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="managerAccount">Dashboard Admin</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Dashboard Seller</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#!">Hello, ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="order-history">Order</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="updateProfile">Profile</a>
                    </li>
                </c:if>
            </ul>
            <form class="d-flex mx-auto">
                <input value="${key}" class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
                    name="keyword">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <div class="d-flex my-2">
                <a class="btn btn-outline-light position-relative" href="carts">
                    <i class="bi bi-cart-fill me-1"></i> Cart
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-dark text-white">${sessionScope.carts.size()}</span>
                </a>
            </div>
            <c:choose>
                <c:when test="${sessionScope.acc == null}">
                    <button class="btn btn-outline-light ms-2" onclick="login()">Login</button>
                </c:when>
                <c:otherwise>
                    <button class="btn btn-outline-light ms-2" onclick="logout()">Logout</button>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>