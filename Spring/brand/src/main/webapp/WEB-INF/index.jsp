<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="./header.jsp" %>

    <div class="main">

      <div>

        <section class="banner">
          <a href="/brand/shop/sales.do"><img src="/brand/img/banner.png" alt="banner"/></a>
        </section>

        <section class="new">
          <div class="new_menu">
            <img src="/brand/img/new.png" alt="신상품" />
          </div>

		<c:forEach var="item" items="${ products }">
          <article>
            <div class="thumb">
              <a href="/brand/shop/view.do?code=${ item.bp_code }"><img src="${ item.bp_thumb }" alt="신상품사진" /></a>
            </div>
              <h3><a href="/brand/shop/view.do?code=${ item.bp_code }">${ item.bp_name }</a></h3>
            <div class="price">
              	<c:if test="${ item.bp_discount == 0 }">
              		<ins><fmt:formatNumber>${ item.bp_price }</fmt:formatNumber> </ins>
              	</c:if>
              	<c:if test="${ item.bp_discount != 0 }">
              		<del><fmt:formatNumber>${ item.bp_price }</fmt:formatNumber> </del> &nbsp;
              		<ins><fmt:formatNumber>${ item.bp_dc_price }</fmt:formatNumber> </ins>
              	</c:if>
              </div>
          </article>
         </c:forEach>

        </section>

        <section class="best">
          <div class="best_menu">
            <img src="/brand/img/best.png" alt="인기상품" />
          </div>

		 <c:forEach var="item" items="${ bests }">
          <article>
            <div class="thumb">
              <a href="/brand/shop/view.do?code=${ item.bp_code }"><img src="${ item.bp_thumb }" alt="베스트사진" /></a>
            </div>
            <h3><a href="/brand/shop/view.do?code=${ item.bp_code }">${ item.bp_name }</a></h3>
            
            <div class="price">
              	<c:if test="${ item.bp_discount == 0 }">
              		<ins><fmt:formatNumber>${ item.bp_price }</fmt:formatNumber> </ins>
              	</c:if>
              	<c:if test="${ item.bp_discount != 0 }">
              		<del><fmt:formatNumber>${ item.bp_price }</fmt:formatNumber> </del> &nbsp;
              		<ins><fmt:formatNumber>${ item.bp_dc_price }</fmt:formatNumber> </ins>
              	</c:if>
              </div>
          </article>
         </c:forEach>

        </section>

      </div>

    </div>

    </div>

<%@ include file="./footer.jsp" %>