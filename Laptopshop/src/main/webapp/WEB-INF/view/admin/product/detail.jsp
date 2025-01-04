<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                        crossorigin="anonymous">
                    <link rel="preconnect" href="https://fonts.gstatic.com">
                    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap"
                        rel="stylesheet">
                    <link rel="stylesheet" href="/css/bootstrap.css">

                    <link rel="stylesheet" href="/vendors/iconly/bold.css">

                    <link rel="stylesheet" href="/vendors/perfect-scrollbar/perfect-scrollbar.css">
                    <link rel="stylesheet" href="/vendors/bootstrap-icons/bootstrap-icons.css">
                    <link rel="stylesheet" href="/css/app.css">
                    <link rel="shortcut icon" href="/images/favicon.svg" type="image/x-icon">
                    <link rel="stylesheet" href="/css/myStyle.css">
                    <title>Product ${product.id}</title>
                </head>

                <body>
                    <%@ include file="../layout/header.jsp" %>


                        <div class="row">
                            <div class="col-lg-3">
                                <%@ include file="../layout/sidebar.jsp" %>

                            </div>
                            <div class="col-lg-9">
                                <div class="container ">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb mt-3">
                                            <li class="breadcrumb-item"><a href="/admin">Home</a></li>
                                            <li class="breadcrumb-item active">
                                                <a href="/admin/product">Product</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">Product Detail</li>
                                        </ol>
                                    </nav>
                                    <div class="card" style="width: 18rem;">

                                        <img src="/images/product/${product.image}" class="card-img-top" alt="img">
                                        <div class="card-body">
                                            <h5 class="card-title">${product.name}</h5>
                                            <p class="card-text"><b>Factory</b>: ${product.factory}</p>
                                            <p class="card-text"><b>Quantity</b>: ${product.quantity}</p>
                                            <p class="card-text"><b>Target</b>: ${product.target}</p>
                                            <p class="card-text"><b>Sold</b>: ${product.sold}</p>
                                            <p class="card-text"><b>Price</b>:
                                                <fmt:formatNumber value="${product.price}" type="number"
                                                    currencySymbol="đ" />
                                            </p>
                                            <textarea class="card-text" name="" id="">${product.shortDesc}</textarea>
                                            <textarea class="card-text" name=""
                                                rows="5">${product.detailDesc}</textarea>
                                            <a href="/admin/product" class="btn btn-primary">Back</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                </body>

                </html>