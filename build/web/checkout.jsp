<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Checkout - Marcus HE186736 Project</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <jsp:include page="menu.jsp"></jsp:include>

    <!-- NAVIGATION -->
    <nav id="navigation">
        <div class="container">
            <div id="responsive-nav">
                <ul class="main-nav nav navbar-nav">
                    <li><a href="home">Home</a></li>
                    <li class="active"><a href="checkout.jsp">Checkout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /NAVIGATION -->

    <!-- BREADCRUMB -->
    <section id="breadcrumb" class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="breadcrumb-header">Checkout</h3>
                    <ul class="breadcrumb-tree">
                        <li><a href="#">Home</a></li>
                        <li class="active">Checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- /BREADCRUMB -->

    <!-- CHECKOUT SECTION -->
    <section class="section">
        <div class="container">
            <div class="row">
                <!-- Billing Details -->
                <div class="col-md-7">
                    <div class="billing-details">
                        <h3 class="section-title">Shipping Address</h3>
                        <form action="processCheckout" method="post">
                            <div class="form-group">
                                <label for="first-name">First Name</label>
                                <input class="input" type="text" id="first-name" name="first-name" placeholder="First Name" required>
                            </div>
                            <div class="form-group">
                                <label for="last-name">Last Name</label>
                                <input class="input" type="text" id="last-name" name="last-name" placeholder="Last Name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input class="input" type="email" id="email" name="email" placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <label for="address">Address</label>
                                <input class="input" type="text" id="address" name="address" placeholder="Address" required>
                            </div>
                            <div class="form-group">
                                <label for="tel">Telephone</label>
                                <input class="input" type="tel" id="tel" name="tel" placeholder="Telephone" required>
                            </div>
                        </form>
                        <div class="order-notes">
                            <label for="order-notes">Order Notes</label>
                            <textarea class="input" id="order-notes" placeholder="Order Notes"></textarea>
                        </div>
                    </div>
                </div>
                <!-- /Billing Details -->

                <!-- Order Details -->
                <div class="col-md-5 order-details">
                    <h3 class="section-title text-center">Your Order</h3>
                    <div class="order-summary">
                        <div class="order-col">
                            <div><strong>PRODUCT</strong></div>
                            <div><strong>PRICE</strong></div>
                        </div>
                        <div class="order-products">
                            <c:forEach items="${cartItems}" var="item">
                                <div class="order-col">
                                    <div>${item.quantity}x ${item.name}</div>
                                    <div>${item.price} USD</div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="order-col">
                            <div>Shipping</div>
                            <div><strong>FREE</strong></div>
                        </div>
                        <div class="order-col">
                            <div><strong>TOTAL</strong></div>
                            <div><strong class="order-total">${totalAmount} USD</strong></div>
                        </div>
                    </div>

                    <!-- Payment Method -->
                    <div class="payment-method">
                        <h4>Payment Method</h4>
                        <div class="input-radio">
                            <input type="radio" name="payment" id="payment-1" required>
                            <label for="payment-1">
                                <span></span>
                                Direct Bank Transfer.
                            </label>
                            <div class="caption">
                                <label for="last-name" style="font-weight: bold; color: gray;"> BANK: BUI XUAN BAC</label><br>
                                <label for="last-name" style="font-weight: bold; color: gray;"> NUMBER: 00000112700</label>
                                <img src="./img/scanQR.png" alt="">
                            </div>
                        </div>
                        <div class="input-radio">
                            <input type="radio" name="payment" id="payment-2" required>
                            <label for="payment-2">
                                <span></span>
                                Cash on Delivery.
                            </label>
                             <div class="caption">
                                <input class="input" type="text" id="take-note" name="take-note" placeholder="Note" required>
                            </div>
                        </div>
                    </div>

                    <!-- Terms and Conditions -->
                    <div class="input-checkbox">
                        <input type="checkbox" id="terms" required>
                        <label for="terms">
                            <span></span>
                            I've read and accept the <a href="#">terms & conditions</a>
                        </label>
                    </div>
                    <button type="submit" class="primary-btn order-submit">Place Order</button>
                </div>
                <!-- /Order Details -->
            </div>
        </div>
    </section>
    <!-- /CHECKOUT SECTION -->

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
