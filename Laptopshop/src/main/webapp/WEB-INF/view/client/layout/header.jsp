<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <nav class="navbar navbar-expand-lg navbar-light shadow">
                <div class="container d-flex justify-content-between align-items-center">

                    <a class="navbar-brand text-success logo h1 align-self-center" href="/">
                        Zay
                    </a>

                    <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                        data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
                        id="templatemo_main_nav">
                        <div class="flex-fill">
                            <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.html">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="shop.html">Product</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <div>
                                <a style="color:  #fff;" href="/login" class="btn btn-success">Sign in</a>
                            </div>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <div class="navbar align-self-center d-flex">
                                <a class="nav-icon position-relative text-decoration-none" href="#">
                                    <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                                    <span
                                        class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                                </a>
                                <div class="dropdown">
                                    <button class="btn btn-success dropdown-toggle" type="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        <a style="margin: 0;" class="nav-icon position-relative text-decoration-none"
                                            href="#">
                                            <i class="fa fa-fw fa-user text-white"></i>
                                        </a>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Cart</a></li>
                                        <li><a class="dropdown-item" href="#">Purchase history</a></li>
                                        <li><a class="dropdown-item" href="#">Account management</a></li>
                                        <li>
                                            <form method="post" action="/logout">
                                                <div>
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                </div>
                                                <button class="dropdown-item">Logout</button>
                                            </form>

                                        </li>
                                    </ul>
                                </div>

                            </div>
                        </c:if>


                    </div>

                </div>
            </nav>