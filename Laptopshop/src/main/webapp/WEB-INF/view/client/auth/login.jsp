<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!doctype html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="description" content="">
                <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
                <meta name="generator" content="Hugo 0.84.0">
                <title>Sign in</title>

                <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous">



                <!-- Bootstrap core CSS -->
                <link href="/css/bootstrap.min.css" rel="stylesheet">

                <style>
                    .bd-placeholder-img {
                        font-size: 1.125rem;
                        text-anchor: middle;
                        -webkit-user-select: none;
                        -moz-user-select: none;
                        user-select: none;
                    }

                    @media (min-width: 768px) {
                        .bd-placeholder-img-lg {
                            font-size: 3.5rem;
                        }
                    }

                    html,
                    body {
                        height: 100%;
                    }

                    .form-signin .checkbox {
                        font-weight: 400;
                    }

                    .form-signin .form-floating:focus-within {
                        z-index: 2;
                    }

                    .form-signin input[type="email"] {
                        margin-bottom: -1px;
                        border-bottom-right-radius: 0;
                        border-bottom-left-radius: 0;
                    }

                    .form-signin input[type="password"] {
                        margin-bottom: 10px;
                        border-top-left-radius: 0;
                        border-top-right-radius: 0;
                    }
                </style>

            </head>

            <body style="background-color: aquamarine;">

                <main class="container mt-5">
                    <form method="post" action="/login">
                        <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>
                        <div class="row justify-content-center">

                            <div class="col-lg-5">
                                <div class="col-lg-12">
                                    <div class="form-floating mb-3">
                                        <input type="email" name="username" class="form-control" id="email"
                                            placeholder="Enter email">
                                        <label for="email">Email</label>
                                    </div>

                                </div>
                                <div class="col-lg-12">
                                    <div class="form-floating">
                                        <input type="password" name="password" class="form-control" id="password"
                                            placeholder="Enter password">
                                        <label for="password">Password</label>
                                    </div>
                                </div>
                                <div>
                                    <c:if test="${param.error != null}">
                                        <div class="my-2" style="color: red;">Invalid email or
                                            password.</div>
                                    </c:if>
                                </div>
                                <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Sign in</button>

                            </div>


                        </div>
                        <div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </div>

                        </div>
                    </form>

                </main>



            </body>

            </html>