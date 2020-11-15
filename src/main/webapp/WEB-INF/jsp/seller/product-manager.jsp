<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
    <!-- head -->
    <head>
        <title>Product manager</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Movies Unlimited template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="<c:url value="/styles/bootstrap-4.1.2/bootstrap.min.css"></c:url>">
        <link href="<c:url value="/plugins/font-awesome-4.7.0/css/font-awesome.min.css"></c:url>" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="<c:url value="/plugins/OwlCarousel2-2.2.1/owl.carousel.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/plugins/OwlCarousel2-2.2.1/animate.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/styles/main_styles.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/styles/responsive.css"></c:url>">
            <style>
                .img-thumbnail-list{
                    width: 50px;
                    height: 67px;
                    margin-right: 10px;
                }
            </style>
        </head>
        <body>
            <!-- Mobile Menu -->
        <jsp:include page="../include/mobile-menu.jsp"/>

        <div class="super_container">

            <!-- Header -->
            <jsp:include page="../include/header.jsp"/>

            <div class="super_container_inner">
                <div class="super_overlay"></div>		
                <div class="container">
                    <div class="row" style="margin-top: 100px">
                        <div class="col-lg-6 offset-lg-3">
                            <div class="section_title text-center">Product manager</div>
                        </div>
                    </div>
                    <div class="row page_nav_row">
                        <div class="col">
                            <div class="page_nav">
                                <ul class="d-flex flex-row align-items-start justify-content-center">
                                    <jsp:include page="../include/account-menu.jsp"/>  
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 3em">
                        <div class="col-xs-6 col-sm-6">
                            <button class="btn btn-primary" onclick="location.href = '<c:url value="/seller?action=add-product"></c:url>'">Add product</button>
                            </div>
                            <div class="col-xs-6 col-sm-6">
                                <form action="${pageContext.request.getContextPath()}/search" class="form-inline" style="float: right">
                                <div class="form-group">
                                    <input type="hidden" name="action" value="searchProductSeller" />
                                    <input type="text" name="searchText" class="form-control" />
                                    <button type="submit" class="btn btn-primary" style="margin-left: 5px">Search</button>  
                                </div>                                    
                            </form> 
                        </div>
                    </div>
                    <div class="row mainmain">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Product ID</th>                                    
                                    <th>Name</th>
                                    <th>Price</th>   
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                <c:forEach var="product" items="${products}">
                                    <tr>
                                        <td>${product.id}</td>
                                        <td><a href="<c:url value="/product?id=${product.id}"/>">${product.name}</a></td>
                                        <td>${product.price}</td>
                                        <c:if test="${product.status=='ACTIVE'}">
                                            <td style="color: blue">${product.status}</td>
                                        </c:if>
                                        <c:if test="${product.status!='ACTIVE'}">
                                            <td style="color: red">${product.status}</td>
                                        </c:if>
                                        <td><a href="<c:url value="/seller?action=edit-product&id=${product.id}"></c:url>"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                                        </tr>
                                </c:forEach>                                
                            </table>
                        </div>     
                    </div>
                    <div class="row page_nav_row">
                        <div class="col">
                            <div class="page_nav">
                                <ul class="d-flex flex-row align-items-start justify-content-center">
<c:forEach begin="${param.page > 5 ? param.page - 5 : 1}" end="${param.page - page + 5 <= 0 ? param.page + 5 : page}" varStatus="status">
                                        <c:choose>
                                            <c:when test="${param.page==null && status.index==1}">
                                                <li class="active"><a href="<c:url value="/seller?action=product-manager&page=${status.index}"/>">${status.index}</a></li>
                                                </c:when>
                                                <c:when test="${param.page==null && status.index!=1}">
                                                <li><a href="<c:url value="/seller?action=product-manager&page=${status.index}"/>">${status.index}</a></li>
                                                </c:when>
                                                <c:when test="${param.page!=null && param.page==status.index}">
                                                <li class="active"><a href="<c:url value="/seller?action=product-manager&page=${status.index}"/>">${status.index}</a></li>
                                                </c:when>                                                   
                                                <c:otherwise>
                                                <li><a href="<c:url value="/seller?action=product-manager&page=${status.index}"/>">${status.index}</a></li>
                                                </c:otherwise>
                                            </c:choose>                                          
                                        </c:forEach>                                        
                                </ul>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
        <!-- Footer -->
        <jsp:include page="../include/footer.jsp"/>
        <!-- script -->
        <script src="<c:url value="/js/jquery-3.2.1.min.js"></c:url>"></script>
        <script src="<c:url value="/styles/bootstrap-4.1.2/popper.js"></c:url>"></script>
        <script src="<c:url value="/styles/bootstrap-4.1.2/bootstrap.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/TweenMax.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/TimelineMax.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/scrollmagic/ScrollMagic.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/animation.gsap.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/ScrollToPlugin.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></c:url>"></script>
        <script src="<c:url value="/plugins/easing/easing.js"></c:url>"></script>
        <script src="<c:url value="/plugins/progressbar/progressbar.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/parallax-js-master/parallax.min.js"></c:url>"></script>
        <script src="<c:url value="/js/custom.js"></c:url>"></script>
    </body>
</html>