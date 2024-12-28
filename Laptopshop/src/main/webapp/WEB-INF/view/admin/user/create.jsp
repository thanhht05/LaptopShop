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


                <title>Create User</title>
            </head>

            <body>
                <%@ include file="../layout/header.jsp" %>
                    <div class="">
                        <div class="row">
                            <div class="col-lg-4">
                                <%@ include file="../layout/sidebar.jsp" %>

                            </div>
                            <div class="col-lg-8 mt-5
                            ">
                                <h4>Create User</h4>
                                <br>
                                <form:form method="post" action="/admin/user/create" modelAttribute="newUser">
                                    <div class="row justify-content-center">
                                        <div class="mb-3 col-lg-4">
                                            <label for="exampleInputEmail1" class="form-label">Email address</label>
                                            <form:input path="email" type="email" class="form-control"
                                                id="exampleInputEmail1" />
                                        </div>
                                        <div class=" mb-3 col-lg-4">
                                            <label for="exampleInputPassword1" class="form-label">Password</label>
                                            <form:input path="password" type="password" class="form-control"
                                                id="exampleInputPassword1" />
                                        </div>

                                    </div>
                                    <div class="row justify-content-center">

                                        <div class="mb-3 col-lg-4">
                                            <label for="fullName" class="form-label">Full Name</label>
                                            <form:input path="fullName" type="text" class="form-control"
                                                id="fullName" />
                                        </div>
                                        <div class="mb-3 col-lg-4">
                                            <label for="phone" class="form-label">Phone</label>
                                            <form:input path="phone" type="tel" class="form-control" id="phone" />
                                        </div>

                                    </div>
                                    <div class="row justify-content-center">
                                        <div class="mb-3 col-lg-4">
                                            <label for="address" class="form-label">Address</label>
                                            <form:input path="address" type="text" class="form-control" id="address" />
                                        </div>
                                        <div class="mb-3 col-lg-4">
                                            <label for="address" class="form-label">Select role</label>

                                            <form:select class="form-select" path="role.name">
                                                <form:option value="ADMIN">Admin</form:option>
                                                <form:option value="USER">User</form:option>
                                            </form:select>

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