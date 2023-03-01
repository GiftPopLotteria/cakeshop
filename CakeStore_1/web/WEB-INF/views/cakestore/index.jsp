<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Hero Section Begin -->
<section class="hero">
    <div class="hero__slider owl-carousel">
        <div class="hero__item set-bg" data-setbg="<c:url value="/img/hero/hero-1.jpg"/>">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="hero__text">
                            <h2>Making your life sweeter one bite at a time!</h2>
                            <a href="#" class="primary-btn">Our cakes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero__item set-bg" data-setbg="<c:url value="/img/hero/hero-1.jpg"/>">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="hero__text">
                            <h2>I love you like a fat kid loves cake.</h2>
                            <a href="#" class="primary-btn">Our cakes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero__item set-bg" data-setbg="<c:url value="/img/hero/hero-1.jpg"/>">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="hero__text">
                            <h2>Cake is the answer, no matter the question.</h2>
                            <a href="#" class="primary-btn">Our cakes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- About Section Begin -->
<section class="about spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="about__text">
                    <div class="section-title">
                        <span>About Cake shop</span>
                        <h2>Cakes and bakes from the house of Queens!</h2>
                    </div>
                    <p>The "Cake Shop" is a Jordanian Brand that started as a small family business. The owners are
                        Dr. Iyad Sultan and Dr. Sereen Sharabati, supported by a staff of 80 employees.</p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="about__bar">
                    <div class="about__bar__item">
                        <p>Cake design</p>
                        <div id="bar1" class="barfiller">
                            <div class="tipWrap"><span class="tip"></span></div>
                            <span class="fill" data-percentage="95"></span>
                        </div>
                    </div>
                    <div class="about__bar__item">
                        <p>Cake Class</p>
                        <div id="bar2" class="barfiller">
                            <div class="tipWrap"><span class="tip"></span></div>
                            <span class="fill" data-percentage="80"></span>
                        </div>
                    </div>
                    <div class="about__bar__item">
                        <p>Cake Recipes</p>
                        <div id="bar3" class="barfiller">
                            <div class="tipWrap"><span class="tip"></span></div>
                            <span class="fill" data-percentage="90"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Section End -->

<!-- Categories Section Begin -->
<div class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel ">
                <div class="categories__item cupcake">
                    <div class="categories__item__icon">
                        <span class="flaticon-029-cupcake-3"></span>
                        <h5>Cupcake</h5>
                    </div>
                </div>
                <div class="categories__item butter">
                    <div class="categories__item__icon">
                        <span class="flaticon-034-chocolate-roll"></span>
                        <h5>Butter</h5>
                    </div>
                </div>
                <div class="categories__item red_velvet">
                    <div class="categories__item__icon">
                        <span class="flaticon-005-pancake"></span>
                        <h5>Red Velvet</h5>
                    </div>
                </div>
                <div class="categories__item biscuit">
                    <div class="categories__item__icon">
                        <span class="flaticon-030-cupcake-2"></span>
                        <h5>Biscuit</h5>
                    </div>
                </div>
                <div class="categories__item donut">
                    <div class="categories__item__icon">
                        <span class="flaticon-006-macarons"></span>
                        <h5>Donut</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Categories Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row" id="cupcake" style="display:">
            <c:forEach begin="0" end="7" var="products" items="${listcupcake}">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${products.image}">
                            <div class="product__label">
                                <span>${products.category}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">${products.name}</a></h6>
                            <div class="product__item__price">$ ${products.price}</div>
                            <div class="cart_add">
                                <a href="<c:url value="/detail/detail.do?pid=${products.id}"/>">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row" id="butter" style="display:none">
            <c:forEach begin="0" end="7" var="products" items="${listbutter}">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${products.image}">
                            <div class="product__label">
                                <span>${products.category}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">${products.name}</a></h6>
                            <div class="product__item__price">$ ${products.price}</div>
                            <div class="cart_add">
                                <a href="<c:url value="/detail/detail.do?pid=${products.id}"/>">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row" id="red_velvet" style="display:none">
            <c:forEach begin="0" end="7" var="products" items="${listred_velvet}">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${products.image}">
                            <div class="product__label">
                                <span>${products.category}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">${products.name}</a></h6>
                            <div class="product__item__price">$ ${products.price}</div>
                            <div class="cart_add">
                                <a href="<c:url value="/detail/details.do?pid=${products.id}"/>">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row" id="biscuit" style="display:none">
            <c:forEach begin="0" end="7" var="products" items="${listbiscuit}">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${products.image}">
                            <div class="product__label">
                                <span>${products.category}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">${products.name}</a></h6>
                            <div class="product__item__price">$ ${products.price}</div>
                            <div class="cart_add">
                                <a href="<c:url value="/detail/detail.do?pid=${products.id}"/>">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row" id="donut" style="display:none">
            <c:forEach begin="0" end="7" var="products" items="${listdonut}">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${products.image}">
                            <div class="product__label">
                                <span>${products.category}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">${products.name}</a></h6>
                            <div class="product__item__price">$ ${products.price}</div>
                            <div class="cart_add">
                                <a href="<c:url value="/detail/detail.do?pid=${products.id}"/>">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Product Section End -->

<!-- Class Section Begin -->
<section class="class spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="class__form">
                    <div class="section-title">
                        <span>Class cakes</span>
                        <h2>Made from your <br />own hands</h2>
                    </div>
                    <form action="#">
                        <input type="text" placeholder="Name">
                        <input type="text" placeholder="Phone">
                        <select>
                            <option value="">Studying Class</option>
                            <option value="">Writting Class</option>
                            <option value="">Reading Class</option>
                        </select>
                        <input type="text" placeholder="Type your requirements">
                        <button type="submit" class="site-btn">registration</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="class__video set-bg" data-setbg="<c:url value="/img/class-video.jpg"/>">
            <a href="https://www.youtube.com/watch?v=8-5yLt1gqIo?autoplay=1"
               class="play-btn video-popup"><i class="fa fa-play"></i></a>
        </div>
    </div>
</section>
<!-- Class Section End -->

<!-- Team Section Begin -->
<section class="team spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-7 col-sm-7">
                <div class="section-title">
                    <span>Our team</span>
                    <h2>Sweet Baker </h2>
                </div>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5">
                <div class="team__btn">
                    <a href="#" class="primary-btn">Join Us</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="team__item set-bg" data-setbg="<c:url value="/img/team/team-1.jpg"/>">
                    <div class="team__item__text">
                        <h6>Thang Cookie</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="team__item set-bg" data-setbg="<c:url value="/img/team/team-1.jpg"/>">
                    <div class="team__item__text">
                        <h6>Quang Butler</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="team__item set-bg" data-setbg="<c:url value="/img/team/team-1.jpg"/>">
                    <div class="team__item__text">
                        <h6>Nam Velvet</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="team__item set-bg" data-setbg="<c:url value="/img/team/team-1.jpg"/>">
                    <div class="team__item__text">
                        <h6>Minh Biscult</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="team__item set-bg" data-setbg="<c:url value="/img/team/team-1.jpg"/>">
                    <div class="team__item__text">
                        <h6>Quan Donut</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- Team Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <span>Testimonial</span>
                    <h2>Our client say</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="testimonial__slider owl-carousel">
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="<c:url value="/img/testimonial/ta-1.jpg"/>" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Kerry D.Silva</h5>
                                <span>New york</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Mmm, that cake looks absolutely delicious! I love how the layers are perfectly stacked and the frosting is so beautifully swirled on top.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="<c:url value="/img/testimonial/ta-2.jpg"/>" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Kerry D.Silva</h5>
                                <span>New york</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Cake truly is one of the most versatile desserts out there - you can have it for birthdays, weddings, or even just as a sweet treat to enjoy with friends and family.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="<c:url value="/img/testimonial/ta-3.jpg"/>" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Ophelia Nunez</h5>
                                <span>London</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Whether you prefer chocolate cake, vanilla cake, or something more exotic like red velvet or carrot cake, there's a flavor out there for everyone.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="<c:url value="/img/testimonial/ta-4.jpg"/>" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Kerry D.Silva</h5>
                                <span>New york</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>So let's raise a fork to this wonderful dessert and enjoy a slice (or two!) of cake today! Cake is not just a dessert, it's a symbol of celebration, happiness, and love. </p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="<c:url value="/img/testimonial/ta-5.jpg"/>" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Ophelia Nunez</h5>
                                <span>London</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Whether it's a small gathering with friends or a grand wedding, cake has the power to bring people together and create lasting memories.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="<c:url value="/img/testimonial/ta-6.jpg"/>" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Kerry D.Silva</h5>
                                <span>New york</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>The act of sharing a slice of cake with someone is a gesture of kindness and generosity, and it's a way to show someone that you care.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Instagram Section Begin -->
<section class="instagram spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 p-0">
                <div class="instagram__text">
                    <div class="section-title">
                        <span>Follow us on instagram</span>
                        <h2>Sweet moments are saved as memories.</h2>
                    </div>
                    <h5><i class="fa fa-instagram"></i> @sweetcake</h5>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="<c:url value="/img/instagram/instagram-1.jpg"/>" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic middle__pic">
                            <img src="<c:url value="/img/instagram/instagram-2.jpg"/>" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="<c:url value="/img/instagram/instagram-3.jpg"/>" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="<c:url value="/img/instagram/instagram-4.jpg"/>" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic middle__pic">
                            <img src="<c:url value="/img/instagram/instagram-5.jpg"/>" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="<c:url value="/img/instagram/instagram-6.jpg"/>" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Instagram Section End -->

<!-- Map Begin -->
<div class="map">
    <div class="map__iframe">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.610010397031!2d106.809883!3d10.841127599999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgVFAuIEhDTQ!5e0!3m2!1svi!2s!4v1677206353863!5m2!1svi!2s" height="300" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
</div>
<!-- Map End -->