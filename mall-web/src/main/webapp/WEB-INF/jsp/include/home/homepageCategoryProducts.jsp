<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<div class="homepageCategoryProducts">
    <c:forEach items="${categoryWithProductList}" var="c" varStatus="stc">
        <div class="eachHomepageCategoryProducts">
            <div class="left-mark"></div>
            <span class="categoryTitle">${c.category.name}</span>
            <br>
            <c:forEach items="${c.products}" var="p" varStatus="st">
                <div class="productItem">
                    <a href="foreproduct?pid=${p.id}"><img width="100px"
                                                           src="${p.imageUrls.split(";")[0]}"></a>
                    <a class="productItemDescLink" href="foreproduct?pid=${p.id}">
								<span class="productItemDesc">[热销]
								${fn:substring(p.name, 0, 20)}
								</span>
                    </a>
                    <span class="productPrice">
								<fmt:formatNumber type="number" value="${p.discount}" minFractionDigits="2"/>
							</span>
                </div>
            </c:forEach>
            <div style="clear:both"></div>
        </div>
    </c:forEach>

    <img id="endpng" class="endpng" src="/static/img/site/end.png">

</div>