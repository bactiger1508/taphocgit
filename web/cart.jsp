
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart - Marcus HE186736 Project</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <jsp:include page="menu.jsp"></jsp:include>

    <!-- CART SECTION -->
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="section-title">Your Cart</h3>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Total</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${}" var="item">
                                <tr>
                                    <td>${}</td>
                                    <td>${}</td>
                                    <td>${} USD</td>
                                    <td>${} USD</td>
                                    <td><a href="cart?action=remove&productId=${}" class="btn btn-danger">Remove</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="cart-buttons">
                        <a href="checkout.jsp" class="primary-btn">Proceed to Checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /CART SECTION -->

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