<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

    <div class="subpage">
      <div>
        <section class="view">
        
          <section>
          
            <article class="info">
            
              <div class="image">
                <img src="${ item.bp_view_img }" alt="뷰이미지" />
              </div>     
              
              <div class="summary">
              	<input type="hidden" name="uid" 	 value="${ member.bm_uid }" />
              	<input type="hidden" name="code" 	 value="${ item.bp_code }" />
              	<input type="hidden" name="name" 	 value="${ item.bp_name }" />
              	<input type="hidden" name="price" 	 value="${ item.bp_price }" />
              	<input type="hidden" name="discount" value="${ item.bp_discount }" />
              	        
                <h2>${ item.bp_name }<h2>
                
                <div class="price">
                  <ins>￦&nbsp;<fmt:formatNumber>${ item.bp_price }</fmt:formatNumber></ins>
                </div>
                
                <div class="option">
                  <div class="opt_size">
                    <button>
                      <span class="txt">SIZE</span>
                      <span class="ico">열기</span>
                    </button>
                    
                    <ul class="size">
                      <li><a href="#">S</a></li>
                      <li><a href="#">M</a></li>
                      <li><a href="#">L</a></li>
                    </ul>
                  </div>
                </div>
                
                <div class="items">
                  <ul></ul>
                </div>
                
                <div class="total">
                  <span>35,000</span>
                  <em>총 상품금액</em>
                </div>
                
                <div class="btns">
                  <button class="order">BUY NOW</button>
                  <button class="cart">ADD TO CART</button>
                </div>
              </div>
            </article>

            <article class="desc">
              <img src="${ item.bp_desc_img }" alt="상세이미지" />
              <img src="${ item.bp_desc2_img }" alt="상세이미지2" />
            </article>

            <article class="review">
              <nav>
                <h3>REVIEW</h3>
              </nav>

              <ul>
                <li>
                  <div>
                    <h5 class="rating star4"></h5>
                    <span>dlrnjs23 2018-08-07</span>
                  </div>
                  <p>
                    만족합니다.
                  </p>
                </li>

                <li>
                  <div>
                    <h5 class="rating star4"></h5>
                    <span>dlrnjs23 2018-08-07</span>
                  </div>
                  <p>
                    만족합니다.
                  </p>
                </li>

                <li>
                  <div>
                    <h5 class="rating star4"></h5>
                    <span>dlrnjs23 2018-08-07</span>
                  </div>
                  <p>
                    만족합니다.
                  </p>
                </li>

              </ul>
            </article>

          </section>


        </section>


      </div>


    </div>

    </div>

<%@ include file="../footer.jsp" %>