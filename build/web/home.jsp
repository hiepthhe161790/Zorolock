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
        <title>Home</title>
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
            .category_block {
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                gap: 0.5rem;
            }

            .category_block .list-group-item {
                flex: 1;
                text-align: center;
                cursor: pointer;
            }

            .category_block .list-group-item.active {
                background-color: #343a40;
                border-color: #343a40;
            }

            .category_block .list-group-item a {
                color: inherit;
                text-decoration: none;
            }

            .category_block .list-group-item a:hover {
                color: #fff;
            }

        </style>
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>
        <!-- Header-->
        <header class="header-background py-5" style="background-image: url('images/background-image.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat; color: black;height: 730px">
         
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-12 mb-5">
                        <h3>Sản phẩm</h3>
                        <ul class="list-group list-group-horizontal category_block">
                            <c:forEach items="${listCategories}" var="C">
                                <li class="list-group-item text-black ${tag == C.cid? 'active' : ''}">
                                    <a href="category?categoryId=${C.cid}">${C.cname}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <h3>List Locks</h3>
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">
                            <c:forEach items="${listProducts}" var="P">
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Sale badge-->
                                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                            New
                                        </div>
                                        <!-- Product image-->
                                        <a href="detail?productId=${P.id}">
                                            <img class="card-img-top" src="${P.imageUrl}" alt="..." />
                                        </a>
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">${P.name}</h5>
                                                <!-- Product reviews-->
                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                    <div class="bi-star-fill">${P.tiltle}</div>
                                                </div>
                                                <!-- Product price-->
                                                <span class="text-muted text-decoration-line-through">$${P.price+10}</span>
                                                $${P.price}
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center">
                                                <a class="btn btn-outline-dark mt-auto" href="add-to-cart?productId=${P.id}">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <c:choose>
                            <c:when test="${listProducts == null || listProducts.size() == 0}">
                                Not found
                            </c:when>
                            <c:otherwise>
                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="home?page=${page-1}">Previous</a></li>
                                            <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i == page ? 'active' : ''}"><a class="page-link" href="home?page=${i}">${i}</a></li>
                                            </c:forEach>
                                        <li class="page-item"><a class="page-link" href="home?page=${page+1}">Next</a></li>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
