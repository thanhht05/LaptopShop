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
                <title>User ${user.id}</title>
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
                                            <a href="/admin/user">User</a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">User Detail</li>
                                    </ol>
                                </nav>
                                <div class="card" style="width: 18rem;">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"><b>Email:</b> &nbsp;${user.email}</li>
                                        <li class="list-group-item"><b>Full name: </b> &nbsp;${user.fullName}</li>
                                        <li class="list-group-item"><b>Phone:</b> &nbsp;${user.phone}</li>
                                        <li class="list-group-item"><b>Address:</b> &nbsp;${user.address}</li>
                                        <li class="list-group-item"><b>Role:</b> &nbsp;${user.role.name}</li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>

            </body>

            </html>