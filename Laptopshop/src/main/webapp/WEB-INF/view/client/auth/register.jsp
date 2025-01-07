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
        <title>Signin Template · Bootstrap v5.0</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">



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

      <body class="">

        <main class="container mt-5">
          <form:form method="post" action="/register" modelAttribute="registerUser">
            <h1 class="h3 mb-3 fw-normal text-center">Please sign up</h1>
            <c:set var="errorFirstName">
              <form:errors path="firstName" cssClass="invalid-feedback" />
            </c:set>
            <c:set var="errorEmail">
              <form:errors path="email" cssClass="invalid-feedback" />
            </c:set>
            <c:set var="errorPassword">
              <form:errors path="password" cssClass="invalid-feedback" />
            </c:set>
            <c:set var="errorConfirmPassword">
              <form:errors path="confirmPassword" cssClass="invalid-feedback" />
            </c:set>
            <div class="row justify-content-center">
              <div class="col-lg-7">
                <div class="row mb-3">
                  <div class="col-lg-6">
                    <div class="form-floating">
                      <form:input path="firstName" type="text"
                        class="form-control ${not empty errorFirstName ? 'is-invalid': ''}" id="firstName"
                        placeholder="Enter first name" />
                      <label for="firstName">First name</label>
                      ${errorFirstName}
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-floating">
                      <form:input path="lastName" type="text" class="form-control" id="lastName"
                        placeholder="Enter last name" />
                      <label for="lastName">Last name</label>
                    </div>
                  </div>
                </div>
                <div class="form-floating mb-3">
                  <form:input path="email" type="email" class="form-control ${not empty errorEmail ? 'is-invalid': ''}"
                    id="email" placeholder="Enter email" />
                  <label for="email">Email</label>
                  ${errorEmail}
                </div>
                <div class="row mb-3">
                  <div class="col-lg-6">
                    <div class="form-floating">
                      <form:input path="password" type="password"
                        class="form-control ${not empty errorPassword ? 'is-invalid': ''}" id="password"
                        placeholder="Enter password" />
                      <label for="password">Password</label>
                      ${errorPassword}
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="form-floating">
                      <form:input path="confirmPassword" type="password"
                        class="form-control ${not empty errorConfirmPassword ? 'is-invalid': ''}" id="confirm"
                        placeholder="Enter confirm password" />
                      <label for="confirm">Confirm password</label>
                      ${errorConfirmPassword}
                    </div>
                  </div>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>

              </div>

            </div>
          </form:form>
        </main>



      </body>

      </html>