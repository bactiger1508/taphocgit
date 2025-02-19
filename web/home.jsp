<%-- 
    Document   : home
    Created on : Oct 9, 2024, 9:56:45 AM
    Author     : bacb4
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Marcus HE186736 Project</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <!-- NAVIGATION -->
            <nav id="navigation">
                <!-- container -->
                <div class="container">
                    <!-- responsive-nav -->
                    <div id="responsive-nav">
                        <!-- NAV -->
                        <ul class="main-nav nav navbar-nav">
                            <li class="active"><a href="home">Home</a></li>
                            <li><a href="checkout.jsp">Checkout</a></li>
                        </ul>
                        <!-- /NAV -->
                    </div>
                    <!-- /responsive-nav -->
                </div>
                <!-- /container -->
            </nav>
            <!-- /NAVIGATION -->
            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <!-- ASIDE -->
                        <div id="aside" class="col-md-3">
                            <!-- aside Widget -->
                            <div class="aside">
                                <h3 class="aside-title">
                                    <a href="home">Categories</a>
                                </h3>
                            <c:forEach items="${listC}" var="o">
                                <div class="checkbox-filter">
                                    <li class="category-item text-white">
                                        <a href="category?cid=${o.cid}">${o.cname}</a>
                                    </li>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- /aside Widget -->


                        <!-- aside Widget -->
                        <div class="aside">
                            <h3 class="aside-title">Newest Product</h3>
                            <div class="product-widget">
                                <div class="product-img">
                                    <img src="${newest.image}" alt="">
                                </div>
                                <div class="product-body">
                                    <h3 class="product-name">${newest.name}</h3>
                                    <p class="card-text">${newest.title}</p>
                                    <h4 class="product-price">${newest.price} USD</h4>                                            
                                    <div class="product-btns">
                                        <a href="product?pid=${newest.id}"><button class="quick-view"> <i class="fa fa-eye"></i></button></a>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <!-- /aside Widget -->
                    </div>
                    <!-- /ASIDE -->

                    <!-- STORE -->
                    <div id="store" class="col-md-9">
                        <!-- store top filter -->
                        <div class="store-filter clearfix">
                            <div class="store-sort">
                                <label>
                                    Sort By:
                                    <select class="input-select">
                                        <option value="0">Asc</option>
                                        <option value="1">Desc</option>
                                    </select>
                                </label>
                            </div>
                            <!--                            <ul class="store-grid">
                                                            <li class="active"><i class="fa fa-th"></i></li>
                                                            <li><a href="#"><i class="fa fa-th-list"></i></a></li>
                                                        </ul>-->
                        </div>
                        <!-- /store top filter -->

                        <!-- product -->
                        <div class="row">
                            <c:forEach items="${listP}" var="o">
                                <div class="col-md-4 col-xs-6">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="${o.image}" alt="">
                                        </div>
                                        <div class="product-body">

                                            <h3 class="product-name">${o.name}</h3>
                                            <h4 class="product-price">${o.price} USD</h4>
                                            <div class="product-btns">
                                                <a href="product?pid=${o.id}"><button class="quick-view"> <i class="fa fa-eye"></i></button></a>
                                            </div>
                                        </div>
                                        <div class="add-to-cart">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- /product -->

                        <!-- store bottom filter -->
                        <div class="store-filter clearfix">
                            <ul class="store-pagination">
                                <li class="active">1</li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </div>
                        <!-- /store bottom filter -->
                    </div>
                    <!-- /STORE -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
