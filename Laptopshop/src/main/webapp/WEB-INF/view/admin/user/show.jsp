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
                <link rel="stylesheet" href="/vendors/iconly/bold.css">

                <link rel="stylesheet" href="/vendors/perfect-scrollbar/perfect-scrollbar.css">
                <link rel="stylesheet" href="/vendors/bootstrap-icons/bootstrap-icons.css">
                <link rel="stylesheet" href="/css/app.css">
                <link rel="shortcut icon" href="/images/favicon.svg" type="image/x-icon">
                <link rel="stylesheet" href="/css/myStyle.css">
                <title>User</title>
            </head>

            <body>
                <%@ include file="../layout/header.jsp" %>
                    <div class="row">
                        <div class="col-lg-3">
                            <%@ include file="../layout/sidebar.jsp" %>

                        </div>
                        <div class="col-lg-9">
                            <div class="container">
                                <div class="mt-5" style="text-align: right; margin-bottom: 10px;">
                                    <button class="btn btn-success">
                                        <a style="color: inherit;" href="/admin/user/create">Create new user</a>
                                    </button>
                                </div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Full Name</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">Phone</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${users}" var="user">
                                            <tr>
                                                <td>${user.id}</td>
                                                <td>${user.fullName}</td>
                                                <td>${user.address}</td>
                                                <td>${user.phone}</td>
                                                <td>
                                                    <button class=" btn btn-primary">Update </button>
                                                    <button class=" btn btn-secondary">Detail </button>
                                                    <button class=" btn btn-danger">Delete </button>
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