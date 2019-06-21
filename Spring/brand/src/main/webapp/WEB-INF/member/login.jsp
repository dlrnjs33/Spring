<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../header.jsp" %>

    <div class="member">
      <div>
        <section class="login">
          <form action="#" method="post">
            <div>
              <label>
                <span><img src="/brand/img/member_txt_id.gif" alt="아이디"></span>
                <input type="text" name="uid" />
              </label>
              <label>
                <span><img src="/brand/img/member_txt_pass.gif" alt="비밀번호"></span>
                <input type="password" name="pass" />
              </label>
            </div>
            <input type="submit" value="로그인" />
            <span>
              <a href="#">아이디 찾기</a>
              <a href="#">비밀번호 찾기</a>
              <a href="/brand/member/terms.do">&nbsp;회원가입</a>
            </span>
          </form>
        </section>
    </div>

    </div>

    </div>

 <%@ include file="../footer.jsp" %>