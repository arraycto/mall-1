<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<div class="categoryMenu">
    <c:forEach items="${categories}" var="category">
        <c:if test="${category.parentId==null}">
            <div cid="${category.id}" class="eachCategory">
                <span class="glyphicon glyphicon-link"></span>
                <a href="category?cid=${category.id}">
                        ${category.name}
                </a>
            </div>
        </c:if>
    </c:forEach>
</div>