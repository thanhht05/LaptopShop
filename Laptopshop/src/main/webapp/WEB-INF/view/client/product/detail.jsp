<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <title>Zay Shop - Product Detail Page</title>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">

                    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
                    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

                    <link rel="stylesheet" href="/css/bootstrap.min.css">
                    <link rel="stylesheet" href="/css/templatemo.css">
                    <link rel="stylesheet" href="/css/custom.css">

                    <!-- Load fonts style after rendering the layout styles -->
                    <link rel="stylesheet"
                        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
                    <link rel="stylesheet" href="/css/fontawesome.min.css">

                    <!-- Slick -->
                    <link rel="stylesheet" type="text/css" href="/css/slick.min.css">
                    <link rel="stylesheet" type="text/css" href="/css/slick-theme.css">
                    <!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
                </head>

                <body>



                    <!-- Header -->
                    <%@ include file="../layout/header.jsp" %>

                        <!-- Close Header -->

                        <!-- Open Content -->
                        <section class="bg-light">
                            <div class="container pb-5">
                                <div class="row">
                                    <div class="col-lg-5 mt-5">
                                        <div class="card mb-3">
                                            <img class="card-img img-fluid" src="/images/product/${product.image}"
                                                alt="Card image cap" id="product-detail">
                                        </div>

                                    </div>
                                    <!-- col end -->
                                    <div class="col-lg-7 mt-5">
                                        <div class="card">
                                            <div class="card-body">
                                                <h1 class="h2">${product.name}</h1>
                                                <p class="h3 py-2">
                                                    <fmt:formatNumber value="${product.price}" type="number"
                                                        currencySymbol="đ" />
                                                </p>
                                                <p class="py-2">
                                                    <i class="fa fa-star text-warning"></i>
                                                    <i class="fa fa-star text-warning"></i>
                                                    <i class="fa fa-star text-warning"></i>
                                                    <i class="fa fa-star text-warning"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <span class="list-inline-item text-dark">Rating 4.8</span>
                                                </p>
                                                <ul class="list-inline">
                                                    <li class="list-inline-item">
                                                        <h6>Target:</h6>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <p>${product.target}</p>
                                                    </li>
                                                </ul>

                                                <h6>Description:</h6>
                                                <p>${product.detailDesc}.</p>


                                                <h6>Performance:</h6>
                                                <ul class="list-unstyled pb-3">
                                                    <p>${product.shortDesc}</p>
                                                </ul>

                                                <input type="hidden" name="product-title" value="Activewear">
                                                <div class="row">
                                                    <div class="col-auto">
                                                        <ul class="list-inline pb-3">
                                                            <li class="list-inline-item text-right">
                                                                Quantity
                                                                <input type="hidden" name="product-quanity"
                                                                    id="product-quanity" value="1">
                                                            </li>
                                                            <li class="list-inline-item"><span class="btn btn-success"
                                                                    id="btn-minus">-</span>
                                                            </li>
                                                            <li class="list-inline-item"><span
                                                                    class="badge bg-secondary" id="var-value">1</span>
                                                            </li>
                                                            <li class="list-inline-item"><span class="btn btn-success"
                                                                    id="btn-plus">+</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="row pb-3">
                                                    <div class="col d-grid">
                                                        <button type="submit" class="btn btn-success btn-lg"
                                                            name="submit" value="buy">Buy</button>
                                                    </div>
                                                    <div class="col d-grid">
                                                        <form method="post" action="/add/product/${product.id}">

                                                            <div>
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                            </div>
                                                            <button style="width: 100%;" type="submit"
                                                                class="btn btn-success btn-lg" name="submit">Add To
                                                                Cart</button>
                                                        </form>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Close Content -->
                        <!-- Start Footer -->
                        <div>
                            <%@ include file="../layout/footer..jsp" %>

                        </div>


                        <!-- End Footer -->

                        <!-- Start Script -->
                        <script src="/js/jquery-1.11.0.min.js"></script>
                        <script src="/js/jquery-migrate-1.2.1.min.js"></script>
                        <script src="/js/bootstrap.bundle.min.js"></script>
                        <script src="/js/templatemo.js"></script>
                        <script src="/js/custom.js"></script>
                        <!-- End Script -->

                        <!-- Start Slider Script -->
                        <script src="/js/slick.min.js"></script>

                        <!-- End Slider Script -->

                </body>

                </html>