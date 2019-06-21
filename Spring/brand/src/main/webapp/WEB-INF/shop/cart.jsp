<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>

    <div class="subpage">
      <div class="cartdiv">
        <section class="cart">
          <form action="#">
            <table>
              <thead>
                <tr>
                  <th><input type="checkbox" id="all"></th>

                  <th>상품명</th>
                  <th>상품 수량</th>
                  <th>배송비</th>
                  <th>상품 금액</th>
                </tr>
              </thead>
              <tbody>
                <tr class="empty">
                  <td colspan="5">장바구니에 상품이 없습니다.</td>
                </tr>
                
             <c:forEach var="item" items="${ cart }">
                <tr>
                  <td><input type="checkbox" name="chk"></td>
                  <td>
                    <article>
                        <a href="#"><img src="${ item.bp_thumb }"></a>
                      <div>
                        <h2><a href="#">${ item.bc_name }</a></h2>
                        <p>SIZE : L</P>
                      </div>
                    </article>
                  </td>
                  <td>${ item.bc_count }</td>
                  <td>￦${ item.bc_shipping }</td>
                  <td>￦${ item.bc_price }</td>
                </tr>
              </c:forEach>
                
              </tbody>
            </table>
            <input type="button" name="del" value="선택삭제" />
          </form>
        </section>

        <div class="order">
          <table border="0">
            <tr>
              <td>상품수</td>
              <td>4</td>
            </tr>
            <tr>
              <td>상품금액</td>
              <td>￦250,000</td>
            </tr>
            <tr>
              <td>할인금액</td>
              <td>￦ 0</td>
            </tr>
            <tr>
              <td>배송비</td>
              <td>￦2,500</td>
            </tr>
            <tr>
              <td>전체주문금액</td>
              <td>￦252,500</td>
            </tr>
            <tr>
              <td>포인트</td>
              <td>￦2,500</td>
            </tr>
          </table>
          <input type="button" value="주문하기" />
        </div>


    </div>

    </div>

    </div>

<%@ include file="../footer.jsp" %>