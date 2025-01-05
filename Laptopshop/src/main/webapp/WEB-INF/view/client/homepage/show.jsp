<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <title>Zay Shop - Product Listing Page</title>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">

                    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
                    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

                    <link rel="stylesheet" href="/css/bootstrap.min.css">
                    <link rel="stylesheet" href="/css/templatemo.css">
                    <link rel="stylesheet" href="/css/custom.css">
                    <link rel="stylesheet" href="/css/fontawesome.min.css">

                    <!-- Load fonts style after rendering the layout styles -->
                    <link rel="stylesheet"
                        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
                    <!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
                </head>

                <body>
                    <!-- Start Top Nav -->
                    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
                        <div class="container text-light">
                            <div class="w-100 d-flex justify-content-between">
                                <div>
                                    <i class="fa fa-envelope mx-2"></i>
                                    <a class="navbar-sm-brand text-light text-decoration-none"
                                        href="mailto:info@company.com">info@company.com</a>
                                    <i class="fa fa-phone mx-2"></i>
                                    <a class="navbar-sm-brand text-light text-decoration-none"
                                        href="tel:010-020-0340">010-020-0340</a>
                                </div>
                                <div>
                                    <a class="text-light" href="https://fb.com/templatemo" target="_blank"
                                        rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i
                                            class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                                    <a class="text-light" href="https://twitter.com/" target="_blank"><i
                                            class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i
                                            class="fab fa-linkedin fa-sm fa-fw"></i></a>
                                </div>
                            </div>
                        </div>
                    </nav>
                    <!-- Close Top Nav -->


                    <!-- Header -->
                    <%@ include file="../layout/header.jsp" %>
                        <!-- Close Header -->

                        <!-- Start Content -->
                        <div class="container py-5">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <p>
                                                <b>All products</b>
                                            </p>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <c:forEach var="productItem" items="${products}">
                                            <div class="col-md-3">
                                                <div class="card mb-4 product-wap rounded-0">
                                                    <div class="card rounded-0">
                                                        <img class="card-img rounded-0 img-fluid"
                                                            src="/images/product/${productItem.image}">
                                                        <div
                                                            class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                                            <ul class="list-unstyled">
                                                                <li><a class="btn btn-success text-white"
                                                                        href="shop-single.html"><i
                                                                            class="far fa-heart"></i></a></li>
                                                                <li><a class="btn btn-success text-white mt-2"
                                                                        href="/product/${productItem.id}"><i
                                                                            class="far fa-eye"></i></a></li>
                                                                <li><a class="btn btn-success text-white mt-2"
                                                                        href="shop-single.html"><i
                                                                            class="fas fa-cart-plus"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div style="text-align: center;" class="card-body">
                                                        <a href="/product/${productItem.id}"
                                                            class="h3 text-decoration-none "><b>${productItem.name}</b></a>

                                                        <p style="font-size: 16px !important; margin-top: 10px;">
                                                            ${productItem.shortDesc}
                                                        </p>
                                                        <ul class="list-unstyled d-flex justify-content-center mb-1">
                                                            <li>
                                                                <i class="text-warning fa fa-star"></i>
                                                                <i class="text-warning fa fa-star"></i>
                                                                <i class="text-warning fa fa-star"></i>
                                                                <i class="text-muted fa fa-star"></i>
                                                                <i class="text-muted fa fa-star"></i>
                                                            </li>
                                                        </ul>
                                                        <p class="text-center mb-0">
                                                            <fmt:formatNumber value="${productItem.price}" type="number"
                                                                currencySymbol="đ" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>


                                    </div>



                                    <div div="row">
                                        <ul class="pagination pagination-lg justify-content-center">
                                            <li class="page-item disabled">
                                                <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0"
                                                    href="#" tabindex="-1">1</a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"
                                                    href="#">2</a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark"
                                                    href="#">3</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- End Content -->

                        <!-- Start Footer -->
                        <%@ include file="../layout/footer..jsp" %>

                            <!-- End Footer -->

                            <!-- Start Script -->
                            <script src="/js/jquery-1.11.0.min.js"></script>
                            <script src="/js/jquery-migrate-1.2.1.min.js"></script>
                            <script src="/js/bootstrap.bundle.min.js"></script>
                            <script src="/js/templatemo.js"></script>
                            <script src="/js/custom.js"></script>
                            <!-- End Script -->
                </body>

                </html>