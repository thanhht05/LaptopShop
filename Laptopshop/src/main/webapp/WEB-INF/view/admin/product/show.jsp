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
                    <link rel="stylesheet" href="/vendors/iconly/bold.css">

                    <link rel="stylesheet" href="/vendors/perfect-scrollbar/perfect-scrollbar.css">
                    <link rel="stylesheet" href="/vendors/bootstrap-icons/bootstrap-icons.css">
                    <link rel="stylesheet" href="/css/app.css">
                    <link rel="shortcut icon" href="/images/favicon.svg" type="image/x-icon">
                    <link rel="stylesheet" href="/css/myStyle.css">
                    <title>Product</title>
                </head>

                <body>
                    <%@ include file="../layout/header.jsp" %>
                        <div class="row">
                            <div class="col-lg-3">
                                <%@ include file="../layout/sidebar.jsp" %>

                            </div>
                            <div class="col-lg-9">
                                <div class="container">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb mt-3">
                                            <li class="breadcrumb-item"><a href="/admin">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Product</li>
                                        </ol>
                                    </nav>
                                    <div class="mt-5" style="text-align: right; margin-bottom: 10px;">
                                        <button class="btn btn-success">
                                            <a style="color: inherit;" href="/admin/product/create">Create new
                                                product</a>
                                        </button>
                                    </div>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Target</th>
                                                <th scope="col">Price</th>
                                                <th scope="col">Factory</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${products}" var="productItem">
                                                <tr>
                                                    <td>${productItem.id}</td>
                                                    <td>${productItem.name}</td>
                                                    <td>${productItem.target}</td>
                                                    <td>

                                                        <fmt:formatNumber value="${productItem.price}" type="number"
                                                            currencySymbol="đ" />

                                                    </td>
                                                    <td>${productItem.factory}</td>
                                                    <td>
                                                        <button class=" btn btn-primary">
                                                            <a style="color: inherit;"
                                                                href="/admin/product/update/${productItem.id}">Update</a>
                                                        </button>
                                                        <button class=" btn btn-secondary">
                                                            <a style="color: inherit;"
                                                                href="/admin/product/${productItem.id}">Detail</a>
                                                        </button>
                                                        <button class=" btn btn-danger">
                                                            <a style="color: inherit;   "
                                                                href="/admin/product/delete/${productItem.id}">Delete</a>
                                                        </button>
                                                    </td>
                                                </tr>
                                            </c:forEach>


                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                </body>

                </html>