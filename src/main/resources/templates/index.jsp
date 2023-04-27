<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="header.jsp" %>

<!-- Start Slider -->
<div id="slides-shop" class="cover-slides">
    <ul class="slides-container">
        <li class="text-center">
            <img src="images/banner-01.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Chào mừng đến với <br> cửa hàng trái cây</strong></h1>
                        <p class="m-b-40">Hãy mua theo cách của bạn</p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-center">
            <img src="images/banner-02.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Chào mừng đến với <br> cửa hàng trái cây</strong></h1>
                        <p class="m-b-40">Hãy mua theo cách của bạn</p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-center">
            <img src="images/banner-03.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Chào mừng đến với <br> cửa hàng trái cây</strong></h1>
                        <p class="m-b-40">Hãy mua theo cách của bạn</p>
                    </div>
                </div>
            </div>
        </li>
    </ul>
    <div class="slides-navigation">
        <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
        <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
    </div>
</div>
<!-- End Slider -->

<div class="box-add-products">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="offer-box-products">
                    <img class="img-fluid" src="images/add-img-01.jpg" alt=""/>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="offer-box-products">
                    <img class="img-fluid" src="images/add-img-02.jpg" alt=""/>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Start Products -->
<div class="products-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>Trái cây & rau củ</h1>
                    <p>Hãy mua theo cách của bạn</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu text-center">
                    <div class="button-group filter-button-group">
                        <button class="active" data-filter="*" onclick="x()">Tất cả</button>
                        <button data-filter=".top-featured">Mới</button>
                        <button data-filter=".best-seller">Giảm giá</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="row special-list">
            <c:forEach items="${listAllProduct}" var="item" end="3">

                <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">

                                <c:if test="${item.getStatus() != null}">
                                    <p class="sale">${item.getStatus()}</p>
                                </c:if>
                            </div>
                            <div style="width: 255px; height: 241px">
                                <img src="<c:out value="${item.getImages()[0]}" default=""/>" class="img-fluid"
                                     alt="Image">
                            </div>
                            <div class="mask-icon">
                                <c:set var="check"
                                       value="${item.getDiscountedPrice()==0||item.getDiscountedPrice()==item.getPrice()}"/>
                                <c:set var="price" value="0"/>
                                <c:if test="${check}"><c:set var="price"
                                                             value="${item.getPrice()}"/></c:if>
                                <c:if test="${!check}"><c:set var="price"
                                                              value="${item.getDiscountedPrice()}"/></c:if>
                                <a class="cart" style="cursor: pointer"
                                   onclick="updateCart('${item.getId()}');
                                   <c:if test="${username!=null}">alert('Đã thêm sản phẩm');</c:if>
                                   <c:if test="${username==null}">alert('Vui lòng đăng nhập trước');
                                           window.location.href='login'</c:if>">Thêm
                                    vào giỏ</a>
                            </div>
                        </div>
                        <a href="product-detail?id=${item.getId()}" style="cursor: pointer;">
                            <div class="why-text">
                                <h4>${item.getName()}</h4>
                                <h5>${item.getPrice()}đ</h5>
                            </div>
                        </a>
                    </div>
                </div>
            </c:forEach>

<%--            <script>--%>
<%--                function loadCart(input) {--%>
<%--                    let tmp = '';--%>
<%--                    tmp = <c:forEach items="${cart}" var="itemC">--%>
<%--                        '<li>' +--%>
<%--                        '<a href="product-detail?id=${itemC.getProduct().getId()}" class="photo"><img src="${itemC.getProduct().getImages()[0]}" class="cart-thumb" alt=""/></a>' +--%>
<%--                        '<h6><a href="#">${itemC.getProduct().getName()} </a></h6> <p>${itemC.getQuantity()}x - <span class="price">đ</span></p>' +--%>
<%--                        '</li>' +--%>
<%--                        </c:forEach>'';--%>

<%--                    // $.post('add-item?idP=' + id + '&quan=1&cumulative=true');--%>
<%--                    document.getElementById("cartSmall").innerHTML = tmp;--%>
<%--                }--%>
<%--            </script>--%>
        </div>
    </div>
</div>
<!-- End Products -->

<%@include file="footer.jsp" %>