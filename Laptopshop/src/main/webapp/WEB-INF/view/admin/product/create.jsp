<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    function loadImg() {
                        $('#frame').attr('src', URL.createObjectURL(event.target.files[0]));
                    }
                </script>


                <title>Create Product</title>
            </head>

            <body>
                <%@ include file="../layout/header.jsp" %>
                    <div class="">
                        <div class="row">
                            <div class="col-lg-4">
                                <%@ include file="../layout/sidebar.jsp" %>

                            </div>
                            <div class="col-lg-8 mt-5">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb mt-3">
                                        <li class="breadcrumb-item"><a href="/admin">Home</a></li>
                                        <li class="breadcrumb-item active"><a href="/admin/user">Product</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Create product</li>
                                    </ol>
                                </nav>
                                <h4>Create product</h4>
                                <br>
                                <form:form method="post" action="/admin/product/create" enctype="multipart/form-data"
                                    modelAttribute="product">
                                    <div class="row justify-content-center">
                                        <div class="mb-3 col-lg-4">
                                            <label for="name" class="form-label">Name</label>
                                            <form:input path="name" type="text" class="form-control" id="name" />
                                        </div>
                                        <div class=" mb-3 col-lg-4">
                                            <label for="price" class="form-label">Price</label>
                                            <form:input path="price" type="number" class="form-control" id="price" />
                                        </div>

                                    </div>
                                    <div class="row justify-content-center">

                                        <div class="mb-3 col-lg-4">
                                            <label for="detail" class="form-label">Detail desc</label>
                                            <form:textarea path="detailDesc" class="form-control" id="detail" />

                                        </div>
                                        <div class="mb-3 col-lg-4">
                                            <label for="short" class="form-label">Short desc</label>
                                            <form:textarea path="shortDesc" class="form-control" id="short" />
                                        </div>

                                    </div>
                                    <div class="row justify-content-center">
                                        <div class="mb-3 col-lg-4">
                                            <label for="quantity" class="form-label">Quantity</label>
                                            <form:input path="quantity" type="number" class="form-control"
                                                id="quantity" />
                                        </div>
                                        <div class="mb-3 col-lg-4">
                                            <label for="address" class="form-label">Select target</label>

                                            <form:select class="form-select" path="target">
                                                <form:option value="GAMING">Gaming</form:option>
                                                <form:option value="STUDY">Study</form:option>
                                                <form:option value="OFFICE">Office</form:option>
                                                <form:option value="DESIGN">Design</form:option>
                                            </form:select>

                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="mb-3 col-lg-4">
                                                <label for="factory" class="form-label">Factory</label>
                                                <form:input path="factory" type="text" class="form-control"
                                                    id="factory" />

                                            </div>
                                            <div class="mb-3 col-lg-4">
                                                <input name="avatarProduct" type="file" accept="image/"
                                                    onchange="loadImg()"><br />
                                                <img id="frame" width="170px" height="170px" />
                                            </div>
                                        </div>


                                    </div>
                                    <div class="text-center mt-3">

                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form:form>

                            </div>

                        </div>

                    </div>
            </body>

            </html>