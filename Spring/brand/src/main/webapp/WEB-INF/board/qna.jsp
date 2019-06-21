<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../header.jsp" %>

    <div class="board">
      <div>
        <section class="notice">
          <h1>QnA</h1>
          <div class="list">
            <table class="qna">
              <tr>
                <td colspan="2">교환/환불/주문취소는 마이페이지 에서 직접 신청하실 수 있습니다.</td>
              </tr>

              <tr>
                <th>상품명</th>
                <td>
                  <input type="text" name="itemname" required />
                </td>
              </tr>
              <tr>
                <th>질문의 유형</th>
                <td>
                  <label><input type="radio" name="type" value="1" checked>&nbsp; 교환</label>
                  <label><input type="radio" name="type" value="1" >&nbsp; 환불</label>
                  <label><input type="radio" name="type" value="1" >&nbsp; 주문 취소</label>
                  <label><input type="radio" name="type" value="1" >&nbsp; 불량</label>
                  <label><input type="radio" name="type" value="1" >&nbsp; 재입고</label>
                  <label><input type="radio" name="type" value="1" >&nbsp; 회원관련</label>
                  <label><input type="radio" name="type" value="1" >&nbsp; 적립금</label>
                  <label><input type="radio" name="type" value="1" >&nbsp; 기타</label>
                </td>
              </tr>
              <tr>
                <th>이메일</th>
                <td> <input type="text" name="email" required />
              </tr>
              <tr>
                <th>제목</th>
                <td> <input type="text" name="subject" required />
              </tr>
              <tr>
                <th>내용</th>
                <td> <input type="textarea" name="contents" required />
              </tr>

            </table>
              <input type="submit" value="제출하기" />
          </div>

        </section>
    </div>

    </div>

    </div>

<%@ include file="../footer.jsp" %>