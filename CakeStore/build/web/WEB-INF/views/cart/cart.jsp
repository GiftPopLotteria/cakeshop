<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Shopping cart</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="<c:url value="/cakestore/index.do"/>">Home</a>
                    <span>Shopping cart</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="shopping__cart__table">
                    <table>
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${sessionScope.cart.items}" >
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img style="width: 90px;height: 90px;" src="${item.products.image}" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>${item.products.name}</h6>
                                            <h5>${item.products.price}</h5>
                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="${item.quantity}">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">${item.cost}</td>
                                    <td class="cart__close"><a style="color: black;" href="<c:url value="/cart/delete.do?&id=${item.products.id}"/>">X</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn">
                            <a href="<c:url value="/shop/shop.do"/>">Continue Shopping</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart__discount">
                    <h6>Discount codes</h6>
                    <form action="<c:url value="/cart/coupon.do"/>">
                        <input type="text" placeholder="Coupon code" name="coupon" value="${param.coupon}">
                        <button type="submit">Apply</button>
                    </form>
                </div>
                <div class="cart__total">
                    <h6>Cart total</h6>
                    <ul>
                        <li>Subtotal <span>$ ${sessionScope.cart.total}</span></li>
                        <li>Discount <span>- $ ${coupon*sessionScope.cart.total}</span></li>
                        <li>Total <span>$ ${sessionScope.cart.total*(1-coupon)}</span></li>
                    </ul>
                    <a href="#" class="primary-btn">Proceed to checkout</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shopping Cart Section End -->
