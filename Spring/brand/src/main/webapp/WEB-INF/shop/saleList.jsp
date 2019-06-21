<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

    <div class="subpage">

      <div>
        <section class="best">
          <div class="bestmenu">
            <p>BEST 5</p>
          </div>
		 <c:forEach var="item" items="${ best }">
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

        <section class="list">
            <ul class="sort">
              <li><a href="/brand/shop/saleOrder.do?order=sales">인기순</a></li>
              <li><a href="#">&nbsp|&nbsp</a></li>
              <li><a href="/brand/shop/saleOrder.do?order=new">신상품순</a></li>
              <li><a href="#">&nbsp|&nbsp</a></li>
              <li><a href="/brand/shop/saleOrder.do?order=price_desc">높은 가격순</a></li>
              <li><a href="#">&nbsp|&nbsp</a></li>
              <li><a href="/brand/shop/saleOrder.do?order=price_asc">낮은 가격순</a></li>
            </ul>
		<section>
		
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
       </section>

        <div class="paging">
          <span class="prev">
            <a href="#"><&nbsp;이전</a>
          </span>
          <span class="num">
            <a href="#" class="on">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
          </span>
          <span class="next">
            <a href="#">다음&nbsp;></a>
          </span>
        </div>

      </div>
    </div>

    </div>

<%@ include file="../footer.jsp" %>