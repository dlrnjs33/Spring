<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../header.jsp" %>

    <div class="board">
      <div>
        <section class="notice">
          <h1>${ title }</h1>
          <div class="list">
            <table>
              <tr>
                <td>번호</td>
                <td>제목</td>
                <td>작성일</td>
                <td>조회</td>
              </tr>
              
			<c:forEach var="item" items="${ boards }">
              <tr>
                <td>${ item.bb_num }</td>
                <td><a href="/brand/board/boardView.do?seq=${ item.bb_seq }">${ item.bb_subject }</a></td>
                <td>${fn:substring(item.bb_rdate,2,10) }</td>
                <td>${ item.bb_hit }</td>
              </tr>
			</c:forEach>

            </table>
          </div>
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
        </section>
    </div>

    </div>

    </div>

<%@ include file="../footer.jsp" %>