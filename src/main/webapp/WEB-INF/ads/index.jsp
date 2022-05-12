<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link type="text/css" rel="stylesheet" href="/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

    <div class="d-flex flex-wrap justify-content-center">
        <c:forEach var="ad" items="${ads}">
            <div class="card col-md-6 m-5 p-3" style="width: 25rem;">
                <div class="card-body">
                    <div class="text-center">
                                    <c:choose>
                                        <c:when test="${ad.catId == 1}">
                                            <i class="fa-solid fa-burger fa-2xl m-4"></i>
                                        </c:when>
                                        <c:when test="${ad.catId == 2}">
                                            <i class="fa-solid fa-landmark fa-2xl m-4"></i>
                                        </c:when>
                                        <c:when test="${ad.catId == 3}">
                                            <i class="fa-solid fa-solid fa-person-hiking fa-2xl m-4"></i>
                                        </c:when>
                                        <c:when test="${ad.catId == 4}">
                                            <i class="fa-solid fa-people-line fa-2xl m-4"></i>
                                        </c:when>
                                        <c:when test="${ad.catId == 5}">
                                            <i class="fa-solid fa-champagne-glasses fa-2xl m-4"></i>
                                        </c:when>
                                        <c:otherwise>
                                            <i class="fa-solid fa-circle-exclamation fa-2xl m-4"></i>
                                        </c:otherwise>
                                    </c:choose>
                    <h3 class="card-title">${ad.title}</h3>
                        <div class="d-flex flex-row justify-content-center">
                            <a class="fa-solid fa-thumbs-up pt-1" href="/like?${ad.id}"></a>
                            <p class="ps-3">${ad.reputation} Users like this</p>
                            <a class="fa-solid fa-thumbs-down pt-1 ps-3" href="/dislike?${ad.id}"></a>
                        </div>
                </div>
                    <hr>
                    <p class="card-text">${ad.description}</p>
                    <hr>
                    <h6 class="card-subtitle mb-2 text-muted">${ad.location}</h6>
                </div>
            </div>
        </c:forEach>
    </div>

<jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
