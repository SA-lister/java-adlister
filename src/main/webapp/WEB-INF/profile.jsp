<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container d-flex">
        <h1 class="mb-5">Welcome, ${sessionScope.user.username}!</h1>
        <a href="profileupdate">
            <input class="mt-3 mx-4 bg-transparent border-0" type="submit" value="Edit Account">
        </a>
    </div>

    <div class="container">
        <h1>Here Are all your ads!</h1>

    <div class="d-flex" >
        <c:forEach var="ad" items="${ads}">

            <div class="card col-md-6 m-5 p-3" style="width: 20rem;">
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
                                <i class="fa-solid fa-circle-exclamation fa-2xl mx-4"></i>
                            </c:otherwise>
                        </c:choose>

                        <h3 class="card-title">${ad.title}</h3>
                    </div>
                    <hr>
                    <p class="card-text">${ad.description}</p>
                    <hr>
                    <h6 class="card-subtitle mb-2 text-muted">${ad.location}</h6>

                    <br>
                    <form action="/update" method="POST">
                        <div class="form-group">
                            <label for="category">Edit Category</label>
                            <select name="category" id="category">
                                <c:choose>
                                    <c:when test="${ad.catId == 1}">
                                        <option value=1 selected>Restaurants</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value=1 >Restaurants</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${ad.catId == 2}">
                                        <option value=2 selected>History</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value=2 >History</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${ad.catId == 3}">
                                        <option value=3 selected>Outdoors</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value=3>Outdoors</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${ad.catId == 4}">
                                        <option value=4 selected>Family</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value=4>Family</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${ad.catId == 5}">
                                        <option value=5 selected>Nightlife</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value=5>Nightlife</option>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${ad.catId == 6}">
                                        <option value=6 selected>Etc.</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value=6>Etc.</option>
                                    </c:otherwise>
                                </c:choose>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="title">Edit Title</label>
                            <input type="text" id="title" name="title" value="${ad.title}">
                        </div>
                            <%--                    <br>--%>
                        <div class="form-group">
                            <label for="location">Edit Location</label>
                            <input type="text" id="location" name="location" value="${ad.location}">
                        </div>
                            <%--                    <br>--%>
                        <div class="form-group">
                            <label for="description">Edit Description</label>
<%--                            <input type="" id="description" name="description">--%>
                            <textarea name="description" id="description" cols="20" rows="8">${ad.description}</textarea>
                        </div>
                        <input type="hidden" value="${ad.id}" name="update">
                        <input type="submit">
                    </form>
                </div>
                <form action="/delete" method="POST">
                    <input type="hidden" value="${ad.id}" name="delete">
                    <input type="submit" value="Delete">
                </form>
            </div>
        </c:forEach>
    </div>


    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
